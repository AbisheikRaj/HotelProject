package com.example.hotel_management.service;

import java.util.List;

import com.example.hotel_management.repository.HotelRoomRepo;
import com.example.hotel_management.repository.RoomDetailsRepo;
import com.example.hotel_management.model.BookingDetailsModel;
import com.example.hotel_management.model.HotelRoomModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HotelRoomService {
	@Autowired
	HotelRoomRepo repo;
	@Autowired
	RoomDetailsRepo repo1;
	public void adduserRoomDetails(BookingDetailsModel book)
	{
		repo.save(book);
		
	}
	public List<HotelRoomModel> getRoomSearch(String name)
	{
		return repo1.findByroomType(name);
	}
	public List<HotelRoomModel> getRoom()
	{
		return repo1.findAll();
	}
	
}
