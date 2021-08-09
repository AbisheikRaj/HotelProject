package org.hotelmanagementsystem.controller;

import org.hotelmanagementsystem.dto.BookingDTO;
import org.hotelmanagementsystem.service.BookingServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/booking")
public class BookingController {

    @Autowired
    private BookingServiceImpl bookingService;

    @PostMapping("/addDetails")
    public String saveBooking(@RequestBody BookingDTO bookingDetails) {
        return bookingService.saveBookings(bookingDetails);
    }
}
