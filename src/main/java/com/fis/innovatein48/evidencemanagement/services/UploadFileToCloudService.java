package com.fis.innovatein48.evidencemanagement.services;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URISyntaxException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

import org.springframework.stereotype.Service;

import com.microsoft.azure.storage.CloudStorageAccount;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.blob.BlobContainerPublicAccessType;
import com.microsoft.azure.storage.blob.BlobRequestOptions;
import com.microsoft.azure.storage.blob.CloudBlobClient;
import com.microsoft.azure.storage.blob.CloudBlobContainer;
import com.microsoft.azure.storage.blob.CloudBlockBlob;
import com.microsoft.azure.storage.blob.ListBlobItem;

@Service
public class UploadFileToCloudService {

	public static final String storageConnectionString =
			"DefaultEndpointsProtocol=https;" +
			"AccountName=programmingpranavas;" +
			"AccountKey=JCr8AuXAjjYkeb1pdW1AJcyc+i9GsLBeBtDdPxiR49RyPTLnvv/oXWZqirre/n3Y8/YpNX8PH0/6tLwBNim8pw==;EndpointSuffix=core.windows.net";

	CloudStorageAccount storageAccount;
	CloudBlobClient blobClient = null;
	CloudBlobContainer container=null;
    File downloadedFile = null;
	
	public void uploadFile(File sourceFile)
	{
		try {
			// Parse the connection string and create a blob client to interact with Blob storage
			container = getContainer();

			// Create the container if it does not exist with public access.
			System.out.println("Creating container: " + container.getName());
			container.createIfNotExists(BlobContainerPublicAccessType.CONTAINER, new BlobRequestOptions(), new OperationContext());		    

			//Creating a sample file
			
			
			
			//sourceFile = new File ("D:\\Capture.txt"); //File.createTempFile("Capture", ".PNG");
			System.out.println("Creating a sample file at: " + sourceFile.toString());

			//Getting a blob reference
			CloudBlockBlob blob = container.getBlockBlobReference(sourceFile.getName());
			
			System.out.println("Hashvalue before Upload:" + calculateHash(sourceFile));			
			
			blob.upload(new FileInputStream(sourceFile), sourceFile.length());
		}
		catch(Exception ex)
		{
			
		}
	}

	private CloudBlobContainer getContainer() throws URISyntaxException, InvalidKeyException, StorageException {
		storageAccount = CloudStorageAccount.parse(storageConnectionString);
		blobClient = storageAccount.createCloudBlobClient();
		return blobClient.getContainerReference("quickstartcontainer");
	}
		
		private static String convertByteArrayToHexString(byte[] arrayBytes) {
		    StringBuffer stringBuffer = new StringBuffer();
		    for (int i = 0; i < arrayBytes.length; i++) {
		        stringBuffer.append(Integer.toString((arrayBytes[i] & 0xff) + 0x100, 16)
		                .substring(1));
		    }
		    return stringBuffer.toString();
		}
		
		private static String calculateHash(File sourceFile) {
			FileInputStream inputStream = null;
	        byte[] bytesBuffer = new byte[1024];
	        int bytesRead = -1;
	        String hashValue = null;
	        
			try {
				inputStream = new FileInputStream(sourceFile.getAbsolutePath());
				MessageDigest md = MessageDigest.getInstance("SHA-256");
				
				while ((bytesRead = inputStream.read(bytesBuffer)) != -1) {
				    md.update(bytesBuffer, 0, bytesRead);
				}
				
		        byte[] hashedBytes = md.digest();	        
		        hashValue = convertByteArrayToHexString(hashedBytes);
		        
			} catch (FileNotFoundException e) {	e.printStackTrace();
			} catch (NoSuchAlgorithmException e) { e.printStackTrace();
			} catch (IOException e) { e.printStackTrace();
			} finally {
		        if (inputStream != null) {
		        	try {
						inputStream.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
		        }
			}		
			return hashValue;
		}
		
		public void downloadFile() throws InvalidKeyException, URISyntaxException, StorageException, IOException
		{
			for (ListBlobItem blobItem : getContainer().listBlobs()) {
				
				System.out.println("URI of blob is: " + blobItem.getUri());
				CloudBlockBlob blob = (CloudBlockBlob)blobItem;
				
				downloadedFile = new File("C:\\Innovate\\Downloaded","Capture.txt");	
				System.out.println("Absolute Path: " + downloadedFile.getAbsolutePath());
				blob.downloadToFile(downloadedFile.getAbsolutePath());
				System.out.println("Hashvalue After deownload:" + calculateHash(downloadedFile));
				//blob.downloadToFile(blobItem.getUri().toString());
				
			}
		}
}
