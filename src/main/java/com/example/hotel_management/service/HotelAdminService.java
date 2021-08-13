package com.example.hotel_management.service;

import java.util.List;

import com.example.hotel_management.model.BookingDetailsModel;
import com.example.hotel_management.model.UserdetailsModel;
import com.example.hotel_management.repository.HotelAdminBookingRepo;
import com.example.hotel_management.repository.HotelAdminRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HotelAdminService {
 @Autowired
 HotelAdminRepo repo;
	@Autowired
	HotelAdminBookingRepo repo1;
	public List<UserdetailsModel> getUserdetails() {
	
		return repo.findAll();
	}
	public List<BookingDetailsModel> getBookingdetails()
	{
		return repo1.findAll();
	}
	public List<UserdetailsModel> getSeacheduservalue(String name) 
	{
		return repo.findByEmail(name);
	}
	public BookingDetailsModel getSeachedbookvalue(int name) 
	{
		return repo1.findBybookingId(name);
	}
	public void adduser(UserdetailsModel user)
	{
		repo.save(user);
		
	}
}
