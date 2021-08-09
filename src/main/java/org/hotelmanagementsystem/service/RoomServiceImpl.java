package org.hotelmanagementsystem.service;

import org.hotelmanagementsystem.dao.RoomDAO;
import org.hotelmanagementsystem.dto.RoomDetailsDTO;
import org.hotelmanagementsystem.mapper.RoomMapperImpl;
import org.hotelmanagementsystem.model.RoomDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("RoomService")
public class RoomServiceImpl implements RoomService {

    @Autowired
    private RoomDAO roomDAO;

    @Autowired
    private RoomMapperImpl roomMapper;

    @Override
    public String storeRoom(RoomDetailsDTO roomDetailsDTO){
        RoomDetails roomDetails = roomMapper.roomDetails(roomDetailsDTO);
        return roomDAO.storeRoomDetails(roomDetails);
    }

    @Override
    public List<RoomDetailsDTO> getRoomDetails(){
        return roomMapper.roomDetailsDTOList(roomDAO.getAllRoomDetails());
    }

    @Override
    public String updateRoom(RoomDetailsDTO roomDetailsDTO) {
        RoomDetails roomDetails = roomMapper.roomDetails(roomDetailsDTO);
        return roomDAO.updateRoomDetails(roomDetails);
    }

    @Override
    public RoomDetailsDTO getRoom(int roomNumber) {
        if (roomDAO.getRoomDetails(roomNumber) != null) {
            return roomMapper.roomDetailsDTO(roomDAO.getRoomDetails(roomNumber));
        } else {
            return null;
        }

    }

    @Override
    public String deleteRoom(int roomNumber) {
        return roomDAO.deleteRoomDetails(roomNumber);
    }
}
