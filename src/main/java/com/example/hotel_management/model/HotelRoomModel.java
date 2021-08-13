package com.example.hotel_management.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "roomnumbers")
public class HotelRoomModel {
@Id
	int roomNumber;
	String roomAvailability;
	String roomSection;
	String roomType;
	public int getRoomNumber() {
		return roomNumber;
	}
	@Override
	public String toString() {
		return "HotelRoomModel [roomNumber=" + roomNumber + ", roomAvailability=" + roomAvailability + ", roomSection="
				+ roomSection + ", roomType=" + roomType + "]";
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	
	public String getRoomAvailability() {
		return roomAvailability;
	}
	public void setRoomAvailability(String roomAvailability) {
		this.roomAvailability = roomAvailability;
	}
	public String getRoomSection() {
		return roomSection;
	}
	public void setRoomSection(String roomSection) {
		this.roomSection = roomSection;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	
	
	
}
