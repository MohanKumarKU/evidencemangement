package com.fis.innovatein48.evidencemanagement.services;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileHandlingService {

	public File multipartToFile(MultipartFile multipart) throws IllegalStateException, IOException 
	{
	    File convFile = new File( multipart.getOriginalFilename());
	    multipart.transferTo(convFile);
	    return convFile;
	}
	
	public String getStringFromFile(String path) throws IOException
	{
		File file = new File(path);
		FileInputStream fis=new FileInputStream(file);
		ByteArrayOutputStream bos=new ByteArrayOutputStream();
		int b;
		byte[] buffer = new byte[1024];
		while((b=fis.read(buffer))!=-1){
		   bos.write(buffer,0,b);
		}
		byte[] fileBytes=bos.toByteArray();
		fis.close();
		bos.close();


		byte[] encoded=Base64.encodeBase64(fileBytes);
		String encodedString = new String(encoded);
		
		return encodedString;
	}
}
