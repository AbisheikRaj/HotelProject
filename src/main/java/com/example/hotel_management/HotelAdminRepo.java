package com.example.hotel_management;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



@Repository
public interface HotelAdminRepo extends JpaRepository<UserdetailsModel, String>{

	List<UserdetailsModel> findByEmail(String name);
}
