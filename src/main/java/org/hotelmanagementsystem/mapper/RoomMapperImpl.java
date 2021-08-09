package org.hotelmanagementsystem.mapper;

import org.hotelmanagementsystem.dto.RoomDetailsDTO;
import org.hotelmanagementsystem.model.RoomDetails;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component("mapper")
public class RoomMapperImpl implements RoomMapper {

    @Override
    public RoomDetails roomDetails(RoomDetailsDTO roomDetailsDTO) {
        RoomDetails roomDetails = new RoomDetails();
        roomDetails.setRoomType(roomDetailsDTO.getRoomType());
        roomDetails.setRoomNumber(roomDetailsDTO.getRoomNumber());
        roomDetails.setRoomAvailability(true);
        roomDetails.setRoomSection(roomDetailsDTO.getRoomSection());
        return roomDetails;
    }

    @Override
    public List<RoomDetailsDTO> roomDetailsDTOList(List<RoomDetails> roomDetails) {
        List<RoomDetailsDTO> list = new ArrayList<>();
        RoomMapperImpl impl = new RoomMapperImpl();
        for (RoomDetails roomDetails1 : roomDetails) {
            list.add(impl.roomDetailsDTO(roomDetails1));
        }
        return list;
    }

    @Override
    public RoomDetailsDTO roomDetailsDTO(RoomDetails roomDetails) {
        RoomDetailsDTO roomDetailsDTO = new RoomDetailsDTO();
        roomDetailsDTO.setRoomSection(roomDetails.getRoomSection());
        roomDetailsDTO.setRoomNumber(roomDetails.getRoomNumber());
        roomDetailsDTO.setRoomType(roomDetails.getRoomType());
        roomDetailsDTO.setRoomAvailability(roomDetails.getRoomAvailability());
        return roomDetailsDTO;
    }
}
