package org.hotelmanagementsystem.model;

import javax.persistence.*;

@Entity
@Table(name = "RoomNumber")
public class RoomDetails {

    @Id
    private int roomNumber;
    private String roomSection;
    private String roomType;
    private boolean roomAvailability = true;

    public String getRoomSection() {
        return roomSection;
    }

    public void setRoomSection(String roomSection) {
        this.roomSection = roomSection;
    }

    public int getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
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
        return "RoomDetails{" +
                ", roomSection='" + roomSection + '\'' +
                ", roomNumber=" + roomNumber +
                ", roomType='" + roomType + '\'' +
                ", roomAvailability='" + roomAvailability + '\'' +
                '}';
    }
}
