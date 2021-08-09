package org.hotelmanagementsystem.mapper;

import org.hotelmanagementsystem.dto.RoomDetailsDTO;
import org.hotelmanagementsystem.model.RoomDetails;

import java.util.List;

public interface RoomMapper {
    RoomDetails roomDetails(RoomDetailsDTO roomDetailsDTO);
    List<RoomDetailsDTO> roomDetailsDTOList(List<RoomDetails> roomDetails);
    RoomDetailsDTO roomDetailsDTO(RoomDetails roomDetails);
}
