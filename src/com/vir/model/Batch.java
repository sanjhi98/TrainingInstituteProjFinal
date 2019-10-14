package com.vir.model;

import java.sql.Date;

public class Batch {

	private int BatchID;

	private Integer CourseID;

	private Date StartDate;

	private Date EndDate;

	private double Price;
	
	private Integer trainerId;

	public Batch() {

		super();

	}

	public Batch(Integer courseID, Date startDate, Date endDate, double price,Integer tid) {
		super();
		CourseID = courseID;
		StartDate = startDate;
		EndDate = endDate;
		Price = price;
		trainerId =tid;
	}

	public int getBatchID() {

		return BatchID;

	}

	public void setBatchID(int batchID) {

		BatchID = batchID;

	}

	public Integer getCourseID() {

		return CourseID;

	}

	public void setCourseID(Integer courseID) {

		CourseID = courseID;

	}

	public Date getStartDate() {

		return StartDate;

	}

	public void setStartDate(Date startDate) {

		StartDate = startDate;

	}

	public Date getEndDate() {

		return EndDate;

	}

	public void setEndDate(Date endDate) {

		EndDate = endDate;

	}

	public double getPrice() {

		return Price;

	}

	public void setPrice(double price) {

		Price = price;

	}
	

	public Integer getTrainerId() {
		return trainerId;
	}

	public void setTrainerId(Integer trainerId) {
		this.trainerId = trainerId;
	}

	@Override
	public String toString() {
		return "Batch [BatchID=" + BatchID + ", CourseID=" + CourseID + ", StartDate=" + StartDate + ", EndDate="
				+ EndDate + ", Price=" + Price + "]";
	}

}