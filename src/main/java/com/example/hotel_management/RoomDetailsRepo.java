package com.example.hotel_management;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomDetailsRepo extends JpaRepository<HotelRoomModel, String>{
	List<HotelRoomModel> findByroomType(String name);
}
