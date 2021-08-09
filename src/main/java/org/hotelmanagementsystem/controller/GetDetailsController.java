package org.hotelmanagementsystem.controller;

import org.hotelmanagementsystem.dto.RoomDetailsDTO;
import org.hotelmanagementsystem.model.RoomList;
import org.hotelmanagementsystem.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "rooms")
public class GetDetailsController {

    @Autowired
    private RoomService roomService;

    @GetMapping("/getAllDetails")
    public RoomList getAllRoom() {
        List<RoomDetailsDTO> roomDetails = roomService.getRoomDetails();
        RoomList roomList = new RoomList();
        roomList.setRoomDetailsList(roomDetails);
        return roomList;
    }
}
