package com.dao;




import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Login;
import com.model.User;

public class UserDao implements InterfaceUserDao {
	
	private JdbcTemplate jdbcTemplate;  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}  
	  
	public int saveUser(User r) {
			String query1 = "select group9_bus_users_seq.nextval from dual";
			int query2 = getSeq(query1);
		 String query="insert into GROUP9_BUS_USERS values("+query2+",'"+r.getFirstName()+"','"+r.getLastName()+"','"+r.getEmailId()+"','"+r.getPassword()+"',"+r.getContactNumber()+")";  
		    return jdbcTemplate.update(query);  
	}

	public int getSeq(String query1) {
		
		int res = jdbcTemplate.queryForObject(query1, Integer.class);
		return res;
	}

	/**
	 * @param login:The login object passed to the method.
	 * @return user: The particular user whose details matched. 
	 */
	public User validateUser(Login login) {
		EncryptPassword ep  = new EncryptPassword();
	    String sql = "select * from group9_bus_users where GBU_EMAIL_ID='" +login.getEmailId() + "' and GBU_PASSWORD='" + ep.hashPassword(login.getPassword())+ "'";
	    List<User> users = jdbcTemplate.query(sql, new UserMapper());
	  
	    return users.size() > 0 ? users.get(0) : null;
	    }
	  class UserMapper implements RowMapper<User> {
	  public User mapRow(ResultSet rs, int arg1) throws SQLException {
	    User user = new User();
	    user.setEmailId(rs.getString("GBU_EMAIL_ID"));
	    user.setPassword(rs.getString("GBU_PASSWORD"));
	    return user;
	  	}
	  }

}
