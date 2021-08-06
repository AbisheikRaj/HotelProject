package com.example.HotelManagementSystem.Exception.Response;

public class ExceptionResponse {

    private String errorMessage;

    public ExceptionResponse(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }
}
