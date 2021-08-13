package com.example.hotel_management;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HotelRoomService {
	@Autowired
	HotelRoomRepo repo;
	@Autowired
	RoomDetailsRepo repo1;
	void adduserRoomDetails(BookingDetailsModel book)
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
