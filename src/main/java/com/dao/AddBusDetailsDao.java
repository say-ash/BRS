package com.dao;

import org.springframework.jdbc.core.JdbcTemplate;
import com.model.AdminBusDetails;
import com.model.StopsDetails;




public class AddBusDetailsDao implements InterfaceBusDetailsDao {
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
	
	
	public int UpdateBus(AdminBusDetails br) {
		
		
			try {
				String query = "select GBD_ID from GROUP9_BUS_details where GBD_ID= " + br.getBusNumber();
				int busNumber = jdbcTemplate.queryForObject(query, Integer.class);
				return busNumber;
			} catch (Exception e) {
				@SuppressWarnings("unused")
				int bus;
				return bus=0;
			}
	}
	

	public int UpdateMoreDetails(AdminBusDetails br ) {
		
		String query1="UPDATE GROUP9_BUS_details SET  GBD_NAME='"+br.getBusName()+"' GBD_NUMBER_OF_SEATS ="+br.getNumberSeats()+ " WHERE GBD_ID=" + br.getBusNumber()+" ";
		
		String query2= "UPDATE GROUP9_BUS_TYPES SET  GBT_TYPE= '"+br.getBusType()+"'  WHERE GBT_BD_ID= "+br.getBusNumber();
		return jdbcTemplate.update(query1 , query2);
		
		
	}
	
		public int insertNewBus(AdminBusDetails br) {
			String query1 = "select GROUP9_BUS_DETAILS_SEQ.nextval from dual";
			int query2 = getSeq(query1);
		 String query3="insert into GROUP9_BUS_DETAILS values("+query2+",'"+br.getBusName()+"',"+br.getNumberSeats()+")"; 
		 String query5 = "select GROUP9_BUS_TYPES_SEQ.nextval from dual";
			int query6 = getSeq(query5);
		 String query4="insert into GROUP9_BUS_TYPES values("+query6+","+query2+",'"+br.getBusType()+")";
		    return jdbcTemplate.update(query3,query4); 
		}
		@SuppressWarnings("unused")
		public int UpdateStops(StopsDetails sd) {
			try {
				String query = "select GBS_ID from GROUP9_BUS_STOPS where GBS_ID= " + sd.getBusNumber();
				int busNumber = jdbcTemplate.queryForObject(query, Integer.class);
				return busNumber;
			} catch (Exception e) {
				int bus;
				return bus=0;
			}
			
		}

		public int UpdateNewStops(StopsDetails sd) {
		
				String query1="UPDATE GROUP9_BUS_STOPS SET  GBS_STOP_NAME= ?  GBS_STOP_ORDER = ?  GBS_ARRIVAL_TIME = ? GBS_DEPARTURE_TIME = ? GBS_DISTANCE= ? GBS_PRICE= ? WHERE GB_ID= ?";
				
				
				return jdbcTemplate.update(query1, sd.getStopName(),sd.getStopOrder(),sd.getArivalTime(),sd.getDepartureTime(),sd.getDistance(),sd.getPrice(),sd.getBusNumber());
			}
			
		public int AddNewStops(StopsDetails sd) {
			String query1 = "select GROUP9_BUS_STOPS_SEQ.nextval from dual";
			int query2 = getSeq(query1);
			
			
String query3="insert into GROUP9_BUS_STOPS values ("+query2+","+sd.getBusNumber()+",'"+sd.getStopName()+"',"+sd.getStopOrder()+",'"+sd.getArivalTime()+"','"+sd.getDepartureTime()+"',"+sd.getDistance()+","+sd.getPrice()+")";
		
			return jdbcTemplate.update(query3);
		}
	}



	
	
	


