package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.AdminBusDetails;
import com.model.BusSearch;
import com.model.SearchResult;
import com.model.User;

public class TraxDao implements InterfaceTraxDao {
	
	private JdbcTemplate jdbcTemplate;  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}
	
	public int AddBusDetails(AdminBusDetails br) {
		String query1 = "select GROUP9_BUS_DETAILS_SEQ.nextval from dual";
		int query2 = getSeq(query1);
	 String query="insert into GROUP9_BUS_DETAILS values("+query2+",'"+br.getBusName()+"',"+br.getNumberSeats()+")";  
	    return jdbcTemplate.update(query);  
}
	private int getSeq(String query1) {
		int res = jdbcTemplate.queryForObject(query1, Integer.class);
		return res;
	}

	public List<User> UserDetails(User u) {
		
		String query1=" select GBU_FIRST_NAME, GBU_LAST_NAME, GBU_CONTACT_NUMBER from GROUP9_BUS_USERS Where GBU_ID= 1";
		
		
		return jdbcTemplate.query(query1, new RowMapper<User>(){

			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User u =new User(); 
               
              u.setFirstName(rs.getString(1));
              u.setLastName(rs.getString(2));
              u.setContactNumber(rs.getInt(3));  
			       return u;
			}
			
		});
		
		 
		
	}

	public List<SearchResult> BookDetails() {
		// TODO Auto-generated method stub
		
			
			BusSearch bs=  new BusSearch();
			bs.setDestination("Pune");
			bs.setSource("Mumbai");
			bs.setDoj("2018-11-26");
			
			String q= "select * from (select b.gbs_gbd_id, a.gbs_stop_name as source, b.gbs_stop_name as destination,b.gbs_arrival_time, b.gbs_departure_time, abs(a.gbs_distance - b.gbs_distance) as Distance, abs(a.gbs_price - b.gbs_price) as estimated_price from group9_bus_stops a inner join group9_bus_stops b on a.gbs_gbd_id=b.gbs_gbd_id where a.gbs_stop_name=? and b.gbs_stop_name=?) t1 inner join (select bd.gbd_id ,bd.GBD_NAME,bt.GBT_TYPE from group9_bus_details bd inner join group9_bus_types bt on bd.gbd_id=bt.GBT_BD_ID inner join group9_bus_status_check bs on bs.GBSC_GBD_ID=bd.gbd_id where bs.GBSC_DATE = ? and bs.GBSC_STATUS = 'available') t2 on t1.gbs_gbd_id = t2.gbd_id";
			Object[] inputs = new Object[] {bs.getSource(),bs.getDestination(),bs.getDoj()};
			return jdbcTemplate.query(q,inputs, new RowMapper<SearchResult>(){

				public SearchResult mapRow(ResultSet rs, int rowNum) throws SQLException {
					SearchResult sr =new SearchResult(); 
	                sr.setId1(rs.getInt(1));
	                sr.setSource(rs.getString(2));	
	                sr.setDestination(rs.getString(3));	
	                sr.setArrivalTime(rs.getString(4));
	                sr.setDepartureTime(rs.getString(5));
	                sr.setDistance(rs.getInt(6));
	                sr.setPrice(rs.getInt(7));
	                sr.setId2(rs.getInt(8));
	                sr.setOperatorName(rs.getString(9));
	                sr.setOperatorType(rs.getString(10));
				       
				       
				        return sr;
				}
				
			});
			
			
			
		}
	
}
	

