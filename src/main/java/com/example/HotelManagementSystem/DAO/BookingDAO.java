package com.example.HotelManagementSystem.DAO;

import com.example.HotelManagementSystem.Exception.DbConnectionLostException;
import com.example.HotelManagementSystem.Model.BookingDetails;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

@Repository("BookingDAO")
public class BookingDAO {

    public String saveBookingsDAO(BookingDetails bookingDetail) throws DbConnectionLostException {
        Configuration con = new Configuration().configure().addAnnotatedClass(BookingDetails.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        try {
            Transaction transaction = session.beginTransaction();
            session.save(bookingDetail);
            transaction.commit();
        } catch(Exception e) {
            throw new DbConnectionLostException("Database Connections is Lost");
        }
        return "Details are stored successfully";
    }

}
