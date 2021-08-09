package org.hotelmanagementsystem.controller;


import org.hotelmanagementsystem.model.RoomList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/admin")
public class FrontEndController {

    @GetMapping("/addRooms")
    public String addRoom(HttpServletRequest request, Model model, RestTemplate restTemplate) {
        HttpSession session = request.getSession();
        try {
            RoomList roomDetailsList = restTemplate.getForObject("http://localhost:8081/rooms/getAllDetails", RoomList.class);
            if (roomDetailsList != null && !roomDetailsList.getRoomDetailsList().isEmpty()) {
                model.addAttribute("rooms", roomDetailsList.getRoomDetailsList());
                session.setAttribute("accept_rooms", "true");
                return "Rooms";
            }
        } catch(NullPointerException e) {
            session.setAttribute("rooms", null);
        }
        return "Rooms";
    }

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/updateRooms")
    public String updateRoom(Model model, @RequestParam(name = "roomNumber") int roomNumber) {
        model.addAttribute("roomNumber", roomNumber);
        return "updateRooms";
    }

    @GetMapping("/deleteRooms")
    public String deleteRoom(Model model, @RequestParam(name = "roomNumber") int roomNumber) {
        model.addAttribute("roomNumber", roomNumber);
        return "redirect:/rooms/deleteDetailsById?roomNumber="+ roomNumber;
    }
}
