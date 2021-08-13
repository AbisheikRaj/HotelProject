package com.example.hotel_management.repository;

import java.util.List;

import com.example.hotel_management.model.HotelRoomModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomDetailsRepo extends JpaRepository<HotelRoomModel, String>{
	List<HotelRoomModel> findByroomType(String name);
}
