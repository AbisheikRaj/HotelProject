package com.example.HotelManagementSystem.Exception;

public class DbConnectionLostException extends Exception {

    private String errorMessage;

    public DbConnectionLostException(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    @Override
    public String toString() {
        return "DbConnectionLostException{" +
                "errorMessage='" + errorMessage + '\'' +
                '}';
    }
}
