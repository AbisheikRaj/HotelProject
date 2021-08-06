package com.example.HotelManagementSystem.Controller;

import com.example.HotelManagementSystem.Model.RoomDetails;
import com.example.HotelManagementSystem.Service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rooms")
public class RoomController {

    @Autowired
    private RoomService roomService;

    @RequestMapping(value = "/addDetails", method = RequestMethod.POST)
    public String createRoom(@RequestBody RoomDetails roomDetails) throws Exception {
        return roomService.storeRoom(roomDetails);
    }

    @RequestMapping(value = "/getAllDetails", method = RequestMethod.GET)
    public List<RoomDetails> getAllRoom() throws Exception {
        return roomService.getRoomDetails();
    }

    @RequestMapping(value = "/updateDetails", method = RequestMethod.PUT)
    public String updateRoom(@RequestBody RoomDetails roomDetails) throws Exception {
        return roomService.updateRoom(roomDetails);
    }
}
