package com.example.hotel_management.repository;



import com.example.hotel_management.model.BookingDetailsModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HotelAdminBookingRepo extends JpaRepository<BookingDetailsModel, String>{

	BookingDetailsModel findBybookingId(int name);
}
