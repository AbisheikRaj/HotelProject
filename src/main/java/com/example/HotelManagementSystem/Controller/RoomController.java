package com.example.HotelManagementSystem.Controller;

import com.example.HotelManagementSystem.Model.RoomDetails;
import com.example.HotelManagementSystem.Service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/rooms")
public class RoomController {

    @Autowired
    private RoomService roomService;

    @RequestMapping(value = "/addDetails", method = RequestMethod.POST, consumes = {MediaType.APPLICATION_FORM_URLENCODED_VALUE}, produces = "application/json")
    public void createRoom(RoomDetails roomDetails, HttpServletResponse response, HttpServletRequest request) throws Exception {
        String result = roomService.storeRoom(roomDetails);
        HttpSession session = request.getSession();
        if (result.equals("Valid")) {
            session.setAttribute("message", "Room Details are successfully stored");
        }

        response.sendRedirect("/admin/addRooms");
    }


    @RequestMapping(value = "/updateDetails", method = RequestMethod.POST, consumes = {MediaType.APPLICATION_FORM_URLENCODED_VALUE}, produces = "application/json")
    public void updateRoom(RoomDetails roomDetails, HttpServletRequest request, HttpServletResponse response) throws Exception {
        String result = roomService.updateRoom(roomDetails);
        HttpSession session = request.getSession();
        if (result.equals("Valid")) {
            session.setAttribute("valid_message", "valid");
        } else {
            session.setAttribute("valid_message", "invalid");
            session.setAttribute("output_message", result);
        }
        response.sendRedirect("/admin/updateRooms?roomNumber=" + roomDetails.getRoomNumber());
    }

    @RequestMapping(value = "/getDetailsById", method = RequestMethod.GET)
    public void getRoom(@RequestParam(name = "roomNumber", required = false) String roomNumber, HttpServletResponse response, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        try {
            RoomDetails roomDetails = roomService.getRoom(Integer.valueOf(roomNumber));
            if (roomDetails != null) {
                session.setAttribute("room", roomDetails);
            } else {
                session.setAttribute("message1", "Invalid");
            }
            response.sendRedirect("/admin/addRooms");
        } catch(Exception e) {
            response.sendRedirect("/admin/addRooms");
        }
    }

    @RequestMapping(value = "/deleteDetailsById", method = RequestMethod.GET)
    public void deleteRoom(@RequestParam(name = "roomNumber") String roomNumber, HttpServletResponse response, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        String result = roomService.deleteRoom(Integer.parseInt(roomNumber));
        if (result.equals("Valid")) {
            session.setAttribute("message", "Room No: " + roomNumber + " are successfully deleted");
        } else {
            session.setAttribute("message", "Details are not present in the database");
        }
        response.sendRedirect("/admin/addRooms");
    }


}
