package com.example.hotel_management;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HotelRoomController {
@Autowired
static BookingDetailsModelDTO book1;
	@Autowired
	private ModelMapper modelMapper;
	@Autowired
	  HotelRoomService service;
	@Autowired
	 HotelAdminService service1;
	static String roomType;
	static String roomNumber;
	static int userid;
	@RequestMapping("/home")
	public  String home(@RequestParam(name="username") String name)
	{
		List<UserdetailsModel> l=service1.getSeacheduservalue(name); 

		useridset(l.get(0).getUserid());
		return "home.jsp";
	}
	@RequestMapping("/room_search")

	public  String getRoomSearch(@RequestParam(name="roomType") String name,Model m)
	{
		
		roomtypeset(name);
	
		List<HotelRoomModel> room=service.getRoom();

		m.addAttribute("room",room);
 m.addAttribute("value", roomType);
 System.out.print(roomType);
		return "roombook.jsp";

	}
	@RequestMapping("/room_number")
	public String roomNumber(@RequestParam(name="check") String name)
	{
		
	roomnumset(name);
	
		return "bookdetailform.jsp";
	}
	
	@RequestMapping("/room_booked")
	public String adduserRoomDetails(Model m,@ModelAttribute("roombooked") BookingDetailsModelDTO book)
	{
		book.setRoomType(roomType);
		book.setRoomNumber(roomNumber);
book.setUserId(userid);
	BookingDetailsModel bookdetail =  modelMapper.map(book, BookingDetailsModel.class);
	service.adduserRoomDetails(bookdetail);
	
	m.addAttribute("bookdetails",bookdetail);

		return "booking.jsp";

	}
	static void useridset(int id)
	{
		userid=id;
	}
	static void roomtypeset(String type)
	{
		roomType=type;
	}
	static void roomnumset(String number)
	{
		roomNumber=number;
	}
}
