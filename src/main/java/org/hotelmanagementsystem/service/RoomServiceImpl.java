package org.hotelmanagementsystem.service;

import org.hotelmanagementsystem.dao.RoomDAO;
import org.hotelmanagementsystem.dto.RoomDetailsDTO;
import org.hotelmanagementsystem.model.RoomDetails;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service("RoomService")
public class RoomServiceImpl implements IRoomService {

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private RoomDAO roomDAO;

    @Override
    public String storeRoom(RoomDetailsDTO roomDetailsDTO) {
        RoomDetails roomDetails = modelMapper.map(roomDetailsDTO, RoomDetails.class);
        return roomDAO.storeRoomDetails(roomDetails);
    }

    @Override
    public List<RoomDetailsDTO> getRoomDetails(){
        List<RoomDetails> roomDetails = roomDAO.getAllRoomDetails();
        if (roomDetails != null) {
            return roomDetails.stream()
                    .map(roomDetail -> modelMapper.map(roomDetail, RoomDetailsDTO.class))
                    .collect(Collectors.toList());
        }
        return new ArrayList<>();
    }

    @Override
    public String updateRoom(RoomDetailsDTO roomDetailsDTO) {
        RoomDetails roomDetails = modelMapper.map(roomDetailsDTO, RoomDetails.class);
        return roomDAO.updateRoomDetails(roomDetails);
    }

    @Override
    public RoomDetailsDTO getRoom(int roomNumber) {
        if (roomDAO.getRoomDetails(roomNumber) != null) {
            return modelMapper.map(roomDAO.getRoomDetails(roomNumber), RoomDetailsDTO.class);
        } else {
            return null;
        }

    }

    @Override
    public String deleteRoom(int roomNumber) {
        return roomDAO.deleteRoomDetails(roomNumber);
    }
}
