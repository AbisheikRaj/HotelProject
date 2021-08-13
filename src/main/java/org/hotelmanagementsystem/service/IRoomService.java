package org.hotelmanagementsystem.service;

import org.hotelmanagementsystem.dto.RoomDetailsDTO;

import java.util.List;

public interface IRoomService {
    String storeRoom(RoomDetailsDTO roomDetails);
    List<RoomDetailsDTO> getRoomDetails();
    String updateRoom(RoomDetailsDTO roomDetails);
    RoomDetailsDTO getRoom(int roomNumber);
    String deleteRoom(int roomNumber);
}
