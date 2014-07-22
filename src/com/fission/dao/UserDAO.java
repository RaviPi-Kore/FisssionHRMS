package com.fission.dao;
/**
 * @author Fission
 */
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
@Repository
public class UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Boolean checklogin(String username, String password) {
		Session session = sessionFactory.openSession();
		String sqlquery = "select userName,password from Users where userName='" + username + "' and password='" + password + "'";
		SQLQuery query = session.createSQLQuery(sqlquery);
		List results = query.list();
		if (results.isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

}
