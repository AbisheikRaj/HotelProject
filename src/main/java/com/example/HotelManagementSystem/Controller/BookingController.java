package com.example.HotelManagementSystem.Controller;

import com.example.HotelManagementSystem.Model.BookingDetails;
import com.example.HotelManagementSystem.Service.BookingServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/booking")
public class BookingController {

    @Autowired
    private BookingServiceImpl bookingService;

    @RequestMapping(value = "/addDetails", method = RequestMethod.POST)
    public String booking(@RequestBody BookingDetails booking_details) throws Exception {
        return bookingService.saveBookings(booking_details);
    }
}
