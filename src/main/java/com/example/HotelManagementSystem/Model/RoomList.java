package com.example.HotelManagementSystem.Model;

import java.util.List;

public class RoomList {

    private List<RoomDetails> roomDetailsList;

    public List<RoomDetails> getRoomDetailsList() {
        return roomDetailsList;
    }

    public void setRoomDetailsList(List<RoomDetails> roomDetailsList) {
        this.roomDetailsList = roomDetailsList;
    }

    @Override
    public String toString() {
        return "RoomList{" +
                "roomDetailsList=" + roomDetailsList +
                '}';
    }
}
