package com.example.HotelManagementSystem.Service;

import com.example.HotelManagementSystem.Model.BookingDetails;

public interface BookingService {
    String saveBookings(BookingDetails bookingDetails) throws Exception;
}
