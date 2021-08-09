package org.hotelmanagementsystem.controller;

import org.hotelmanagementsystem.dto.RoomDetailsDTO;
import org.hotelmanagementsystem.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping(value = "/rooms")
public class RoomController {

    private static final String VALID_MESSAGE = "Valid";
    private static final String REDIRECT_PAGE = "/admin/addRooms";


    @Autowired
    private RoomService roomService;

//    @RequestMapping(value = "/addDetails", method = RequestMethod.POST, consumes = {MediaType.APPLICATION_FORM_URLENCODED_VALUE}, produces = "application/json")
    @PostMapping(value = "/addDetails", consumes = {MediaType.APPLICATION_FORM_URLENCODED_VALUE}, produces = {MediaType.APPLICATION_JSON_VALUE})
    public void createRoom(RoomDetailsDTO roomDetails, HttpServletResponse response, HttpServletRequest request) throws IOException {
        String result = roomService.storeRoom(roomDetails);
        HttpSession session = request.getSession();
        if (result.equals(VALID_MESSAGE)) {
            session.setAttribute("store_message", "Room Details are successfully stored");
        } else {
            session.setAttribute("store_message_error", result);
        }
        response.sendRedirect(REDIRECT_PAGE);
    }


//    @RequestMapping(value = "/updateDetails", method = RequestMethod.POST, consumes = {MediaType.APPLICATION_FORM_URLENCODED_VALUE}, produces = "application/json")
    @PostMapping(value = "/updateDetails", consumes = {MediaType.APPLICATION_FORM_URLENCODED_VALUE}, produces = {MediaType.APPLICATION_JSON_VALUE})
    public void updateRoom(RoomDetailsDTO roomDetails, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String result = roomService.updateRoom(roomDetails);
        HttpSession session = request.getSession();
        if (result.equals(VALID_MESSAGE)) {
            session.setAttribute("valid_message", "valid");
        } else {
            session.setAttribute("valid_message", "invalid");
            session.setAttribute("output_message", result);
        }
        response.sendRedirect("/admin/updateRooms?roomNumber=" + roomDetails.getRoomNumber());
    }

//    @RequestMapping(value = "/getDetailsById", method = RequestMethod.GET)
    @GetMapping("/getDetailsById")
    public void getRoom(@RequestParam(name = "roomNumber", required = false) String roomNumber, HttpServletResponse response, Model model, HttpServletRequest request) throws IOException {
        HttpSession session = request.getSession();
        try {
            RoomDetailsDTO roomDetails = roomService.getRoom(Integer.valueOf(roomNumber));
            if (roomDetails != null) {
                session.setAttribute("roomNumber", roomDetails.getRoomNumber());
                session.setAttribute("roomType", roomDetails.getRoomType());
                session.setAttribute("roomAvailability", roomDetails.getRoomAvailability());
                session.setAttribute("roomSection", roomDetails.getRoomSection());
                session.setAttribute("accept_room", "true");
            } else {
                session.setAttribute("message1", "Invalid");
            }
            response.sendRedirect(REDIRECT_PAGE);
        } catch(Exception e) {
            e.printStackTrace();
            response.sendRedirect(REDIRECT_PAGE);
        }
    }

    @GetMapping("/deleteDetailsById")
    public void deleteRoom(@RequestParam(name = "roomNumber") String roomNumber, HttpServletResponse response, HttpServletRequest request) throws IOException {
        HttpSession session = request.getSession();
        String result = roomService.deleteRoom(Integer.parseInt(roomNumber));
        if (result.equals(VALID_MESSAGE)) {
            session.setAttribute("delete_message", "Room No: " + roomNumber + " are successfully deleted");
        } else {
            session.setAttribute("delete_message1", "Details are not present in the database");
        }
        response.sendRedirect(REDIRECT_PAGE);
    }


}
