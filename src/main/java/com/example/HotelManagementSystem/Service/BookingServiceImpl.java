package com.example.HotelManagementSystem.Service;

import com.example.HotelManagementSystem.DAO.BookingDAO;
import com.example.HotelManagementSystem.Model.BookingDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalTime;

@Service("BookingService")
public class BookingServiceImpl implements BookingService {

    @Autowired
    private BookingDAO bookingDAO;

    private String generateCurrentTime() {
        LocalTime localTime = LocalTime.now();
        return localTime.toString();
    }

    @Override
    public String saveBookings(BookingDetails bookingDetail) throws Exception {
        String checkInDate = bookingDetail.getCheckIn();
        String checkOutDate = bookingDetail.getCheckOut();
        String currentTime = generateCurrentTime();
        bookingDetail.setCheckIn(checkInDate + " " + currentTime);
        bookingDetail.setCheckOut(checkOutDate + " " + currentTime);
        String result = bookingDAO.saveBookingsDAO(bookingDetail);
        return result;
    }
}
