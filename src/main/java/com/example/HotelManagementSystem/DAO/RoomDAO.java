package com.example.HotelManagementSystem.DAO;


import com.example.HotelManagementSystem.Exception.RoomException;
import com.example.HotelManagementSystem.Model.RoomDetails;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import javax.xml.datatype.DatatypeConfigurationException;
import java.util.List;

@Repository("RoomDAO")
public class RoomDAO {

    public String storeRoomDetails(RoomDetails roomDetails) throws Exception {
        Configuration con = new Configuration().configure().addAnnotatedClass(RoomDetails.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        try {
            Transaction transaction = session.beginTransaction();
            session.save(roomDetails);
            transaction.commit();
            session.close();
        } catch(Exception e) {
            throw new RoomException("Room Number already Exists");
        }
        return "Room Details are Stored successfully";
    }

    public List<RoomDetails> getAllRoomDetails() throws Exception {
        List<RoomDetails> roomDetails;
        Configuration con = new Configuration().configure().addAnnotatedClass(RoomDetails.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        try {
            Transaction transaction = session.beginTransaction();
            roomDetails = session.createQuery("select rd from RoomDetails rd", RoomDetails.class).list();
            transaction.commit();
            session.close();
        } catch(Exception e) {
            throw new DatatypeConfigurationException("Database connection is lost");
        }
        return roomDetails;
    }

    public String updateRoomDetails(RoomDetails roomDetails) throws Exception {
        Configuration con = new Configuration().configure().addAnnotatedClass(RoomDetails.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        try {
            Transaction transaction = session.beginTransaction();
            session.update(roomDetails);
            transaction.commit();
            session.close();
        } catch(Exception e) {
            throw new RoomException("Room No : " + roomDetails.getRoomNumber() + " does not exists");
        }
        return "Details are updated successfully";
    }
}
