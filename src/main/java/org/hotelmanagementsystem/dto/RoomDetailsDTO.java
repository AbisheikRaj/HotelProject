package org.hotelmanagementsystem.dto;

public class RoomDetailsDTO {
	
	private int roomNumber;
    private String roomSection;
    private String roomType;
    private boolean roomAvailability = true;
	public int getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
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
	public boolean getRoomAvailability() {
		return roomAvailability;
	}
	public void setRoomAvailability(boolean roomAvailability) {
		this.roomAvailability = roomAvailability;
	}
	
	@Override
	public String toString() {
		return "RoomDetailsDTO [roomNumber=" + roomNumber + ", roomSection=" + roomSection + ", roomType=" + roomType
				+ ", roomAvailability=" + roomAvailability + "]";
	}
    
	
}
