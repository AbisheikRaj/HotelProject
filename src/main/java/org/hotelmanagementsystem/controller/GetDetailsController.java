package org.hotelmanagementsystem.controller;

import org.hotelmanagementsystem.model.RoomList;
import org.hotelmanagementsystem.service.IRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "rooms")
public class GetDetailsController {

    @Autowired
    private IRoomService roomService;

    @GetMapping("/getAllDetails")
    public RoomList getAllRoom() {
        RoomList roomList = new RoomList();
        roomList.setRoomDetailsList(roomService.getRoomDetails());
        return roomList;
    }
}
