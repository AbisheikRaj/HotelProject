package org.hotelmanagementsystem.dao;

import org.hotelmanagementsystem.dto.BookingDTO;
import org.hotelmanagementsystem.exception.DbConnectionLostException;
import org.hotelmanagementsystem.model.BookingDetails;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

@Repository("BookingDAO")
public class BookingDAO {

    public String saveBookingsDAO(BookingDTO bookingDetail)  {
        Configuration con = new Configuration().configure().addAnnotatedClass(BookingDetails.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        try {
            Transaction transaction = session.beginTransaction();
            session.save(bookingDetail);
            transaction.commit();
        } catch(Exception ex) {
            try {
                throw new DbConnectionLostException("Database connection is lost");
            } catch (DbConnectionLostException e) {
                return e.getErrorMessage();
            }
        } finally {
            session.close();
        }
        return "Details are stored successfully";
    }

}
