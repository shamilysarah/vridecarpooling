package com.carpooling.vride.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="providers")
public class Provider {
@Id
@Column(name="empid")
     private int empid;
@Column(name="username")
	private String username;
@Column(name="carnum")
	  private String carnum;
@Column(name="origin")
	  private String origin;
@Column(name="destination")
	  private String destination;
@Column(name="starttime")
	  private float starttime;
@Column(name="vacancy")
	  private int vacancy;
@Column(name="amount")
	  private int amount;

	  
    public int getEmpid() {
	 return empid;
     }
    public void setEmpid(int empid) {
    	this.empid = empid;
     }
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCarnum() {
		return carnum;
	}
	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public float getStarttime() {
		return starttime;
	}
	public void setStarttime(float starttime) {
		this.starttime = starttime;
	}
	public int getVacancy() {
		return vacancy;
	}
	public void setVacancy(int vacancy) {
		this.vacancy = vacancy;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "Provider [empid="+empid+",username=" + username + ", carnum=" + carnum + ", origin=" + origin + ", destination="
				+ destination + ", starttime=" + starttime + ", vacancy=" + vacancy + ", amount=" + amount + "]";
	}
	
	
}
