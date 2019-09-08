package com.hotel.model;

public class HPackage {

	private int packageId;
	private String packageName;
	private double nightPrice;
	private double monthPrice;
	private int persons;
	private String description;
	private String features;
	private String img;
	
	public String getImg() {
		return img;
	}
	
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public double getNightPrice() {
		return nightPrice;
	}
	public void setNightPrice(double nightPrice) {
		this.nightPrice = nightPrice;
	}
	public double getMonthPrice() {
		return monthPrice;
	}
	public void setMonthPrice(double monthPrice) {
		this.monthPrice = monthPrice;
	}
	public int getPersons() {
		return persons;
	}
	
	public void setImg(String img) {
		this.img = img;
	}
	
	public void setPersons(int persons) {
		this.persons = persons;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getFeatures() {
		return features;
	}
	public void setFeatures(String features) {
		this.features = features;
	}
	
	
	
}
