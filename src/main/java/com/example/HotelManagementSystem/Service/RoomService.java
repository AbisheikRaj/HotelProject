package com.example.HotelManagementSystem.Service;

import com.example.HotelManagementSystem.Model.RoomDetails;

import java.util.List;

public interface RoomService {
    String storeRoom(RoomDetails roomDetails) throws Exception;
    List<RoomDetails> getRoomDetails() throws Exception;
    String updateRoom(RoomDetails roomDetails) throws Exception;
}
