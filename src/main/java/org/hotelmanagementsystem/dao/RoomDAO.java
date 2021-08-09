package org.hotelmanagementsystem.dao;


import org.hotelmanagementsystem.exception.DbConnectionLostException;
import org.hotelmanagementsystem.exception.RoomException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hotelmanagementsystem.model.RoomDetails;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository("RoomDAO")
public class RoomDAO {

    private static final String VALID_MESSAGE = "Valid";

    public String storeRoomDetails(RoomDetails roomDetails){
        Configuration con = new Configuration().configure().addAnnotatedClass(RoomDetails.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        try {
            Transaction transaction = session.beginTransaction();
            session.save(roomDetails);
            transaction.commit();
        } catch(Exception e) {
            try {
                throw new RoomException("Room Number already Exists");
            } catch(RoomException exp) {
                return exp.getErrorMessage();
            }
        } finally {
            session.close();
        }
        return VALID_MESSAGE;
    }

    public List<RoomDetails> getAllRoomDetails(){
        List<RoomDetails> roomDetails;
        Configuration con = new Configuration().configure().addAnnotatedClass(RoomDetails.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        try {
            Transaction transaction = session.beginTransaction();
            roomDetails = session.createQuery("select rd from RoomDetails rd", RoomDetails.class).list();
            transaction.commit();
        } catch(Exception e) {
            try {
                throw new DbConnectionLostException("Database connection is lost");
            } catch(DbConnectionLostException exp) {
                return new ArrayList<>();
            }
        } finally {
            session.close();
        }
        return roomDetails;
    }

    public String updateRoomDetails(RoomDetails roomDetails) {
        Configuration con = new Configuration().configure().addAnnotatedClass(RoomDetails.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        try {
            Transaction transaction = session.beginTransaction();
            session.update(roomDetails);
            transaction.commit();
        } catch(Exception e) {
            return new RoomException("Room No : " + roomDetails.getRoomNumber() + " does not exists").getErrorMessage();
        } finally {
            session.close();
        }
        return VALID_MESSAGE;
    }

    public RoomDetails getRoomDetails(int roomNumber) {
        RoomDetails roomDetails;
        Configuration con = new Configuration().configure().addAnnotatedClass(RoomDetails.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        try {
            Transaction transaction = session.beginTransaction();
            roomDetails = session.get(RoomDetails.class, roomNumber);
            transaction.commit();
        } catch(Exception e) {
            return null;
        } finally {
            session.close();
        }
        return roomDetails;
    }

    public String deleteRoomDetails(int roomNumber) {
        Configuration con = new Configuration().configure().addAnnotatedClass(RoomDetails.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        try {
            Transaction transaction = session.beginTransaction();
            RoomDetails roomDetails = session.get(RoomDetails.class, roomNumber);
            session.delete(roomDetails);
            transaction.commit();
            session.close();
        } catch(Exception e) {
            return null;
        } finally {
            session.close();
        }
        return VALID_MESSAGE;
    }
}
