package com.example.HotelManagementSystem.Exception;

public class RoomException extends Exception{

    private String errorMessage;

    public RoomException(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }
}
