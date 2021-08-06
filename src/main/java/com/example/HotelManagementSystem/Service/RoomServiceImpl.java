package com.example.HotelManagementSystem.Service;

import com.example.HotelManagementSystem.DAO.RoomDAO;
import com.example.HotelManagementSystem.Model.RoomDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("RoomService")
public class RoomServiceImpl implements RoomService {

    @Autowired
    private RoomDAO roomDAO;

    private String roomSection(String roomSection) {
        switch(roomSection) {
            case "A" :
                return "SINGLE_COT_WITH_AC";
//            case "B" :
//                return "SINGLE_COT_WITH_NON-AC";
//            case "C" :
//                return "DOUBLE_COT_WITH_AC";
//            case "D" :
//                return "DOUBLE_COT_WITH_NON-AC";
//            case "E" :
//                return "TRIPLE_COT_WITH_AC";
            case "F" :
                return "TRIPLE_COT_WITH_NON-AC";
        }
        return "INVALID OPTION";
    }

    @Override
    public String storeRoom(RoomDetails roomDetails) throws Exception {

        String roomType = roomSection(roomDetails.getRoomSection());
        if (roomType.equals("INVALID OPTION")) {
            return "INVALID DATA";
        }
        roomDetails.setRoomType(roomType);
        String result = roomDAO.storeRoomDetails(roomDetails);
        return result;
    }

    @Override
    public List<RoomDetails> getRoomDetails() throws Exception {
        return roomDAO.getAllRoomDetails();
    }

    @Override
    public String updateRoom(RoomDetails roomDetails) throws Exception {
        return roomDAO.updateRoomDetails(roomDetails);
    }
}
