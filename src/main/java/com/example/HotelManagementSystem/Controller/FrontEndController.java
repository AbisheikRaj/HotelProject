package com.example.HotelManagementSystem.Controller;


import com.example.HotelManagementSystem.Model.RoomDetails;
import com.example.HotelManagementSystem.Model.RoomList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/admin")
public class FrontEndController {

    @RequestMapping(value = "/addRooms", method = RequestMethod.GET)
    public String addRoom(HttpServletRequest request, RestTemplate restTemplate) {
        RoomList roomDetailsList = restTemplate.getForObject("http://localhost:8081/rooms/getAllDetails", RoomList.class);
        HttpSession session = request.getSession();
        if (roomDetailsList.getRoomDetailsList().size() > 0) {
            session.setAttribute("rooms", roomDetailsList.getRoomDetailsList());
            return "Rooms";
        }
        session.setAttribute("rooms", null);
        return "Rooms";

    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/updateRooms", method = RequestMethod.GET)
    public String updateRoom(Model model, @RequestParam(name = "roomNumber") int roomNumber) {
        model.addAttribute("roomNumber", roomNumber);
        return "updateRooms";
    }

    @RequestMapping(value = "/deleteRooms", method = RequestMethod.GET)
    public String deleteRoom(Model model, @RequestParam(name = "roomNumber") int roomNumber) {
        model.addAttribute("roomNumber", roomNumber);
        return "redirect:/rooms/deleteDetailsById?roomNumber="+ roomNumber;
    }
}
