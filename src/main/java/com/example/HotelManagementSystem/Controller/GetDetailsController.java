package com.example.HotelManagementSystem.Controller;

import com.example.HotelManagementSystem.Model.RoomDetails;
import com.example.HotelManagementSystem.Model.RoomList;
import com.example.HotelManagementSystem.Service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "rooms")
public class GetDetailsController {

    @Autowired
    private RoomService roomService;

    @RequestMapping(value = "/getAllDetails", method = RequestMethod.GET,produces = "application/json")
    public RoomList getAllRoom() throws Exception {
        List<RoomDetails>  roomDetails = roomService.getRoomDetails();
        RoomList roomList = new RoomList();
        roomList.setRoomDetailsList(roomDetails);
        return roomList;
    }
}
