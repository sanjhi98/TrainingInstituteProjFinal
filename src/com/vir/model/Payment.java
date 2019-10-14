package com.vir.model;

public class Payment {
	private Integer SID;
	private String Status;
	public Payment() {
		super();
	}
	public Payment(Integer sID, String status) {
		super();
		SID = sID;
		Status = status;
	}
	public Integer getSID() {
		return SID;
	}
	public void setSID(Integer sID) {
		SID = sID;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	@Override
	public String toString() {
		return "Payment [SID=" + SID + ", Status=" + Status + "]";
	}
	
	
	
}
