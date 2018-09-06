package com.fis.innovatein48.evidencemanagement.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Paths;
import java.security.InvalidKeyException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fis.innovatein48.evidencemanagement.entity.CaseDetail;
import com.fis.innovatein48.evidencemanagement.entity.Evidence;
import com.fis.innovatein48.evidencemanagement.services.FileHandlingService;
import com.fis.innovatein48.evidencemanagement.services.UploadFileToCloudService;
import com.microsoft.azure.storage.StorageException;

@Controller
public class EvidenceController {

	@Autowired
	UploadFileToCloudService fileToCloudService;
	@Autowired
	FileHandlingService fileHandlingService;

	@RequestMapping("/dashboard")
	public String openDashBoard() {
		
		ModelMap modelMap = new ModelMap();
		
		CaseDetail caseDetail =  new CaseDetail();
		caseDetail.setCaseName("Blast");
		caseDetail.setCaseNo(123);
		caseDetail.setDate("09/05/2018");
		caseDetail.setInvsgtnOfficer("Mohan");
		
		
		List<Evidence> evidenceList = new ArrayList<>();
		for(int i=1 ; i<=5 ; i++)
		{
		Evidence evidence = new Evidence();
		evidence.setCulprit("Jhon");
		evidence.setDate("09/05/2018");
		evidence.setVictim("Tonny");
		try {
			evidence.setFile(fileHandlingService.getStringFromFile("C:\\Innovate\\Downloaded\\Capture.txt"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		evidenceList.add(evidence);
		}
		
		caseDetail.setEvidenceList(evidenceList);
		
		modelMap.addAttribute("caseDetail", caseDetail);
		return "evidenceForm";
	}
	

	@RequestMapping("/test")
	public String openDash() {
		try {
			fileToCloudService.downloadFile();
		} catch (InvalidKeyException | URISyntaxException | StorageException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping("/inquiry")
	public String inquireEvidence() {
		return "inquireEvidence";
	}

	@RequestMapping(value = "/addEvidence", method = RequestMethod.POST)
	public void addEvidence(@RequestParam("evidenceType") String evidenceType, @RequestParam("date") String date,
			@RequestParam("victim") String victim, @RequestParam("culprit") String culprit,
			@RequestParam("file") MultipartFile file) {

		File fileToUpload = null;
		try {
			fileToUpload = fileHandlingService.multipartToFile(file);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		fileToCloudService.uploadFile(fileToUpload);

	}

	@RequestMapping(value = "/getCaseEvidence", method = RequestMethod.POST)
	public void getCaseEvidence(@RequestParam("caseNumber") String caseNumber) {

	}

	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<?> uploadFile(@RequestParam("uploadfile") MultipartFile uploadfile) {

		try {
			// Get the filename and build the local file path (be sure that the
			// application have write permissions on such directory)
			String filename = uploadfile.getOriginalFilename();
			String directory = "/var/netgloo_blog/uploads";
			String filepath = Paths.get(directory, filename).toString();

			// Save the file locally
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filepath)));
			stream.write(uploadfile.getBytes());
			stream.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return new ResponseEntity<>(HttpStatus.OK);
	} // method uploadFile

}
