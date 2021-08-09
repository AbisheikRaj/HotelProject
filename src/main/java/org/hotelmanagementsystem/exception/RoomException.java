package org.hotelmanagementsystem.exception;

public class RoomException extends Exception{

    private final String errorMessage;

    public RoomException(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

}
