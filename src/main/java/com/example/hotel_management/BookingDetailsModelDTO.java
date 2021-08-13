package com.example.hotel_management;


import javax.persistence.Id;

public class BookingDetailsModelDTO {

	
	@Id
	
	
	int bookingId;
	int userId;
	String bookingName;
	String checkIn;
	String checkOut;
	String roomNumber;
	String roomType;
	String email;
	String mobilenumber;
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	String address;

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getBookingName() {
		return bookingName;
	}

	public void setBookingName(String bookingName) {
		this.bookingName = bookingName;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

	public String getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getAddress() {
		return address;
	}

	@Override
	public String toString() {
		return "BookingDetailsModelDTO [bookingId=" + bookingId + ", userId=" + userId + ", bookingName=" + bookingName
				+ ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", roomNumber=" + roomNumber + ", roomType="
				+ roomType + ", address=" + address + "]";
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
