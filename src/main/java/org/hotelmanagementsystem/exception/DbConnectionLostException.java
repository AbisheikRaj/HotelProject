package org.hotelmanagementsystem.exception;

public class DbConnectionLostException extends Exception {

    private final String errorMessage;

    public DbConnectionLostException(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    @Override
    public String toString() {
        return "DbConnectionLostException{" +
                "errorMessage='" + errorMessage + '\'' +
                '}';
    }
}
