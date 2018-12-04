package com.dao;

import java.sql.ResultSet;


import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.servlet.ModelAndView;

import com.model.BookDetails;
import com.model.Booking;
import com.model.BusPassenger;
import com.model.BusSearch;
import com.model.SearchResult;

public class SearchDao implements InterfaceSearchDao{

	
	private JdbcTemplate jdbcTemplate;  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}  
	
	
	/**
	 * To select all the details of the travellers
	 * @param trv1
	 * @param mob
	 * @return
	 */
	
	/**
	 * Search The Bus
	 * @param source
	 * @param destination
	 * @param day
	 * @return
	 */
	
	@SuppressWarnings("unchecked")
	public List<SearchResult> searchBus(BusSearch b) {
		
		
		try {
			String q= "select * from (select b.gbs_gbd_id, a.gbs_stop_name as source, b.gbs_stop_name as destination,b.gbs_arrival_time, b.gbs_departure_time, abs(a.gbs_distance - b.gbs_distance) as Distance, abs(a.gbs_price - b.gbs_price) as estimated_price from group9_bus_stops a inner join group9_bus_stops b on a.gbs_gbd_id=b.gbs_gbd_id where a.gbs_stop_name=? and b.gbs_stop_name=?) t1 inner join (select bd.gbd_id ,bd.GBD_NAME,bt.GBT_TYPE from group9_bus_details bd inner join group9_bus_types bt on bd.gbd_id=bt.GBT_BD_ID inner join group9_bus_status_check bs on bs.GBSC_GBD_ID=bd.gbd_id where bs.GBSC_DATE = ? and bs.GBSC_STATUS = 'available') t2 on t1.gbs_gbd_id = t2.gbd_id";
			Object[] inputs = new Object[] {b.getSource(),b.getDestination(),b.getDoj()};
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
		} catch (DataAccessException e) {
			
			return (List<SearchResult>) new ModelAndView("error");
		}
		 
			
	}

	//get user id based on email id of signed in user 
	public int getUId(String email) {
		try {
			String q = "select GBU_ID from GROUP9_BUS_USERS where GBU_EMAIL_ID = ?";
			Object[] input = new Object[]{email};
			int uid = jdbcTemplate.queryForObject(q,input,Integer.class);
			return uid;
		} catch (DataAccessException e) {
			
			return  0;
		}
	}


	// insert passenger details in GROUP9_BUS_PASSENGERS table  
	public int add(BusPassenger bp, int uid) {

			try {
				String query1 = "select GROUP9_BUS_PASSENGERS_seq.nextval from dual";
				int query2 = getSeq(query1);
				String query3 ="insert into GROUP9_BUS_PASSENGERS values("+query2+","+uid+",'"+bp.getDob()+"','"+bp.getGender()+"','"+bp.getAddress()+"','"+bp.getName()+"')";
				return jdbcTemplate.update(query3);
			} catch (DataAccessException e) {
				// TODO Auto-generated catch block
				return 0;
			}
	}
	
	//get next sequence to be generated  
	private int getSeq(String query1) {
		
		int res = jdbcTemplate.queryForObject(query1, Integer.class);
		return res;
	}


	// get passengers id based on User Id i.e.uid
	@SuppressWarnings("unchecked")
	public List<Integer> getPId(int uid) {
		
		try {
			String q = "select GBP_ID from GROUP9_BUS_PASSENGERS where GBP_GBU_ID = "+uid;
			List<Integer> pid = jdbcTemplate.queryForList(q, Integer.class);
			return pid;
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			return (List<Integer>) new ModelAndView("error");
		}
	}


	//Book seats based on seat availability
	public int insertBookings(Booking booking) {
		try {
			String query1 = "select GROUP9_BUS_BOOKINGS_SEQ.nextval from dual";
			int query2 = getSeq(query1);
			String query3 = "insert into GROUP9_BUS_BOOKINGS values("+query2+","+booking.getpId()+","+booking.getBdId()+","+booking.getSeatNo()+")";
			return jdbcTemplate.update(query3);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			return 0;
		}
		
		
	}


	//get seat numbers booked by a particular user based on User Id i.e. uid
	@SuppressWarnings("unchecked")
	public List<Integer> getSeatNO(int id) {
		try {
			String q = "select GBB_SEAT_NUMBER from GROUP9_BUS_BOOKINGS where GBB_GBD_ID = "+id;
			List<Integer> pid = jdbcTemplate.queryForList(q, Integer.class);
			return pid;
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			return (List<Integer>) new ModelAndView("error");
		}
	}


	@SuppressWarnings("unchecked")
	public List<BookDetails> viewBus(List<SearchResult> list, Integer integer) {
		try {
			String q = "\r\n" + 
					"select gbb.GBB_ID AS \"Transaction ID\", gbp.GBP_NAME, gbp.GBP_GENDER, gbb.GBB_GBD_ID, gbd.GBD_NAME, t1.source, t1.destination, t1.GBS_ARRIVAL_TIME, t1.GBS_DEPARTURE_TIME, t1.fare from GROUP9_BUS_PASSENGERS gbp INNER JOIN GROUP9_BUS_BOOKINGS gbb on gbp.GBP_ID = gbb.GBB_GBP_ID\r\n" + 
					"INNER JOIN GROUP9_BUS_DETAILS gbd on gbb.GBB_GBD_ID = gbd.GBD_ID INNER JOIN (select b.gbs_gbd_id, a.gbs_stop_name as source, b.gbs_stop_name as destination, a.GBS_ARRIVAL_TIME, b.GBS_DEPARTURE_TIME, abs(a.gbs_price - b.gbs_price) as fare from group9_bus_stops a inner join group9_bus_stops b on a.gbs_gbd_id=b.gbs_gbd_id where a.gbs_stop_name=? and b.gbs_stop_name=?) t1 on\r\n" + 
					"t1.GBS_GBD_ID = gbd.GBD_ID where gbp.GBP_ID=?	";
			Object[] inputs = new Object[] {list.get(0).getSource(),list.get(0).getDestination(),integer};
			return jdbcTemplate.query(q,inputs, new RowMapper<BookDetails>(){

				public BookDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
					BookDetails sr =new BookDetails(); 
			       sr.setTid(rs.getInt(1));
			       sr.setpName(rs.getString(2));
			       sr.setpGender(rs.getString(3));
			       sr.setOperatorName(rs.getString(5));
			       sr.setSource(rs.getString(6));
			       sr.setDestination(rs.getString(7));
			       sr.setArrivalTime(rs.getString(8));
			       sr.setDepartureTime(rs.getString(9));
			       sr.setFare(rs.getInt(10));
				    return sr;
				}
				
			});
		} catch (DataAccessException e) {
			return (List<BookDetails>) new ModelAndView("error");
		}
			
	}


}
