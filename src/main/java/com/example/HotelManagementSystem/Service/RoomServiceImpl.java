package com.example.HotelManagementSystem.Service;

import com.example.HotelManagementSystem.DAO.RoomDAO;
import com.example.HotelManagementSystem.Model.RoomDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("RoomService")
public class RoomServiceImpl implements RoomService {

    @Autowired
    private RoomDAO roomDAO;

    @Override
    public String storeRoom(RoomDetails roomDetails) throws Exception {
        String result = roomDAO.storeRoomDetails(roomDetails);
        return result;
    }

    @Override
    public List<RoomDetails> getRoomDetails() throws Exception {
        return roomDAO.getAllRoomDetails();
    }

    @Override
    public String updateRoom(RoomDetails roomDetails) throws Exception {
        return roomDAO.updateRoomDetails(roomDetails);
    }

    @Override
    public RoomDetails getRoom(int roomNumber) {
        return roomDAO.getRoomDetails(roomNumber);
    }

    @Override
    public String deleteRoom(int roomNumber) {
        return roomDAO.deleteRoomDetails(roomNumber);
    }
}
