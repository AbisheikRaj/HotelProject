package org.hotelmanagementsystem.service;

import org.hotelmanagementsystem.dao.BookingDAO;
import org.hotelmanagementsystem.dto.BookingDTO;
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
    public String saveBookings(BookingDTO bookingDetail) {
        String checkInDate = bookingDetail.getCheckIn();
        String checkOutDate = bookingDetail.getCheckOut();
        String currentTime = generateCurrentTime();
        bookingDetail.setCheckIn(checkInDate + " " + currentTime);
        bookingDetail.setCheckOut(checkOutDate + " " + currentTime);
        return bookingDAO.saveBookingsDAO(bookingDetail);
    }
}
