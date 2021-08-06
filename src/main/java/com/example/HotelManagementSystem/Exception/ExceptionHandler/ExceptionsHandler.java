package com.example.HotelManagementSystem.Exception.ExceptionHandler;

import com.example.HotelManagementSystem.Exception.DbConnectionLostException;
import com.example.HotelManagementSystem.Exception.RoomException;
import com.example.HotelManagementSystem.Exception.Response.ExceptionResponse;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ExceptionsHandler {

    @ExceptionHandler(RoomException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ResponseBody
    public ExceptionResponse RoomExceptionError(RoomException roomException) {
        ExceptionResponse response = new ExceptionResponse(roomException.getErrorMessage());
        return response;
    }

    @ExceptionHandler(DbConnectionLostException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ResponseBody
    public ExceptionResponse DbExceptionHandler(DbConnectionLostException dbConnectionLostException) {
        ExceptionResponse response = new ExceptionResponse(dbConnectionLostException.getErrorMessage());
        return response;
    }
}
