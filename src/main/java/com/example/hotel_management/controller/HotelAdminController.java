package com.example.hotel_management.controller;

import java.util.List;

import com.example.hotel_management.service.HotelAdminService;
import com.example.hotel_management.model.UserdetailsModel;
import com.example.hotel_management.dto.UserdetailsModelDTO;
import com.example.hotel_management.model.BookingDetailsModel;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;





@Controller

public class HotelAdminController {

	@Autowired
	HotelAdminService service;
	@Autowired
	private ModelMapper modelMapper;
	
	@RequestMapping("/user_details")

	public String getUserdetails(Model m)
	{
		List<UserdetailsModel> l=service.getUserdetails();
		m.addAttribute("l", l);
		return "user_details.jsp";

	}
	
	@RequestMapping("/booking_details")
	public String getBookingdetails(Model m)
	{
	
		List<BookingDetailsModel> booking=service.getBookingdetails();
		m.addAttribute("booking", booking);
	
		return "bookingdetails.jsp";
	}
	
	@RequestMapping("/search")
	public String getSeacheduservalue(@RequestParam(name="name") String name,Model m)
	{
		if(name.isEmpty())
			return "redirect:user_details";
	
		List<UserdetailsModel> search=service.getSeacheduservalue(name);
		m.addAttribute("search", search);
		if(search.isEmpty())
			return "redirect:user_details";
		
		return "search.jsp";
	}
	
	@RequestMapping("/searchbooking")
	public String getSeachedbookvalue(@RequestParam(name="bookid") String name,Model m)
	{
		if(name.isEmpty())
			return "redirect:booking_details";
	
		BookingDetailsModel searchbook=service.getSeachedbookvalue(Integer.parseInt(name));
		m.addAttribute("searchbook", searchbook);
       if(searchbook==null)
    	   return "redirect:booking_details";
		return "searchbooking.jsp";
	}
	
	@PostMapping("/addUser")
		public String adduser(@ModelAttribute("newuser") UserdetailsModelDTO userdto)
		{
		UserdetailsModel userdetail =  modelMapper.map(userdto, UserdetailsModel.class);
			service.adduser(userdetail);
			return "userLogin.jsp";
		}
	
	
}
