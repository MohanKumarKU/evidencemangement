package com.fis.innovatein48.evidencemanagement.entity;

import java.util.List;

public class CaseDetail {
	
	private int caseNo;
	private String caseName;
	private String date;
	private String invsgtnOfficer;
    private List<Evidence> evidenceList;
    
	public int getCaseNo() {
		return caseNo;
	}
	public void setCaseNo(int caseNo) {
		this.caseNo = caseNo;
	}
	public String getCaseName() {
		return caseName;
	}
	public void setCaseName(String caseName) {
		this.caseName = caseName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getInvsgtnOfficer() {
		return invsgtnOfficer;
	}
	public void setInvsgtnOfficer(String invsgtnOfficer) {
		this.invsgtnOfficer = invsgtnOfficer;
	}
	public List<Evidence> getEvidenceList() {
		return evidenceList;
	}
	public void setEvidenceList(List<Evidence> evidenceList) {
		this.evidenceList = evidenceList;
	}
    
}
