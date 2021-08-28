package com.restaurant.system.mvc;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

public class Restaurant {
	@Max(value = 10)
	int fries;
	int sandwich;
	int burgur;
	int drinks;
	int pasta;
	double costOfMeal;
	double serviceCharges ;
	double gst;
	double totalTax ;
	double totalcost;
	
	
	public int getFries() {
		return fries;
	}
	public void setFries(int fries) {
		this.fries = fries;
	}
	public int getSandwich() {
		return sandwich ;
	}
	public void setSandwich(int sandwich) {
		this.sandwich = sandwich;
	}
	public int getBurgur() {
		return burgur;
	}
	public void setBurgur(int burgur) {
		this.burgur = burgur;
	}
	public int getDrinks() {
		return drinks;
	}
	public void setDrinks(int drinks) {
		this.drinks = drinks;
	}
	public int getPasta() {
		return pasta;
	}
	public void setPasta(int pasta) {
		this.pasta = pasta;
	}
	public double getCostOfMeal() {
		return fries+ sandwich + burgur + drinks+ pasta;
	}
	public double getServiceCharges() {
		return serviceCharges;
	}
	public double getGst() {
		return  costOfMeal;
	}
	public double getTotalTax() {
		return serviceCharges + gst;
	}
	public double getTotalcost() {
		return totalTax+costOfMeal;
	}
	public void setCostOfMeal(double costOfMeal) {
		this.costOfMeal = costOfMeal;
	}
	public void setServiceCharges(double serviceCharges) {
		this.serviceCharges = serviceCharges;
	}
	public void setGst(double gst) {
		this.gst = gst;
	}
	public void setTotalTax(double totalTax) {
		this.totalTax = totalTax;
	}
	public void setTotalcost(double totalcost) {
		this.totalcost = totalcost;
	}
	
	
	
	
}
