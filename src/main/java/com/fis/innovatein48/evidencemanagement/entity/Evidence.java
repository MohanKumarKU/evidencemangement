package com.fis.innovatein48.evidencemanagement.entity;

import org.springframework.web.multipart.MultipartFile;

public class Evidence {
	
	private String evidenceType;
	private String date;
	private String victim;
	private String culprit;
	private MultipartFile file;

	public String getEvidenceType() {
		return evidenceType;
	}

	public void setEvidenceType(String evidenceType) {
		this.evidenceType = evidenceType;
	}

	

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getVictim() {
		return victim;
	}

	public void setVictim(String victim) {
		this.victim = victim;
	}

	public String getCulprit() {
		return culprit;
	}

	public void setCulprit(String culprit) {
		this.culprit = culprit;
	}

	public synchronized MultipartFile getFile() {
		return file;
	}

	public synchronized void setFile(MultipartFile file) {
		this.file = file;
	}

}
