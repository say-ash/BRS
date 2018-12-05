package com.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.AdminBusDetails;
import com.model.BusStatus;
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
	 jdbcTemplate.update(query);
	 String query4="select GROUP9_BUS_TYPES_SEQ.nextval from dual";
	 int query5=getSeq1(query4);
	 String query3="insert into GROUP9_BUS_TYPES values("+query5+","+query2+",'"+br.getBusType()+"')";
	    return jdbcTemplate.update(query3);  
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
		 jdbcTemplate.update(query3); 
		 String query4 = "select GROUP9_BUS_TYPES_SEQ.nextval from dual";
			int query5 = getSeq1(query4);
		 String query6="insert into GROUP9_BUS_TYPES values("+query5+","+query2+",'"+br.getBusType()+")";
		    return jdbcTemplate.update(query6); 
		}
		private int getSeq(String query1) {
			int res = jdbcTemplate.queryForObject(query1, Integer.class);
			return res;
		}
		private int getSeq1(String query4) {
			int res = jdbcTemplate.queryForObject(query4, Integer.class);
			return res;
		}
			
		
		

		
			
		public int AddNewStops(StopsDetails sd) {
			String query1 = "select GROUP9_BUS_STOPS_SEQ.nextval from dual";
			int query2 = getSeq3(query1);
			
			
			String query3="insert into GROUP9_BUS_STOPS values ("+query2+","+sd.getBusNumber()+",'"+sd.getStopName()+"',"+sd.getStopOrder()+",'"+sd.getArivalTime()+"','"+sd.getDepartureTime()+"',"+sd.getDistance()+","+sd.getPrice()+")";
		
			return jdbcTemplate.update(query3 );
		}
		
		private int getSeq3(String query1) {
			int res = jdbcTemplate.queryForObject(query1, Integer.class);
			return res;
		}
		
		
		
		
		
		public List<AdminBusDetails> viewBusDetails() {
			String q="select d.GBD_ID,  d.GBD_NAME , d.GBD_NUMBER_OF_SEATS , t.GBT_TYPE from  GROUP9_BUS_DETAILS d join GROUP9_BUS_TYPES t on (d.GBD_ID=t.GBT_BD_ID)";
			return jdbcTemplate.query(q,new RowMapper<AdminBusDetails>(){

				public AdminBusDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
					AdminBusDetails ad =new AdminBusDetails(); 
	                ad.setBusNumber(rs.getInt(1));
	                ad.setBusName(rs.getString(2));
	                ad.setNumberSeats(rs.getInt(3));
	                ad.setBusType(rs.getString(3));
	               
				       
				       
				        return ad;
			
			
			
			
		}
			});
		}

	

		public List<BusStatus> getDetails(int busNumber) {
			String sql="select bd.GBD_ID, bd.GBD_NAME , bd.GBD_NUMBER_OF_SEATS, bsc.GBSC_DATE, bsc.GBSC_STATUS , bt.GBT_TYPE from GROUP9_BUS_DETAILS bd inner join  GROUP9_BUS_STATUS_CHECK bsc on  bsc.GBSC_GBD_ID ="+busNumber+"  inner join GROUP9_BUS_TYPES bt on bt.GBT_BD_ID= "+busNumber;
			 return jdbcTemplate.query(sql, new RowMapper<BusStatus>() {

				public BusStatus mapRow(ResultSet rs, int rowNum) throws SQLException {
					BusStatus bs= new BusStatus();
					bs.setBusNumber(rs.getInt(1));
					bs.setBusName(rs.getString(2));
					bs.setBusSeats(rs.getInt(3));
					bs.setBusDate(rs.getString(4));
					bs.setBusStatus(rs.getString(5));
					bs.setBusType(rs.getString(6));
					
					
					return bs;
				}
				 
			 });    
		}

		

		public int saveData(BusStatus bs) {
			
			String query1 ="UPDATE GROUP9_BUS_details SET  GBD_NAME='"+bs.getBusName()+"', GBD_NUMBER_OF_SEATS ="+bs.getBusSeats()+ " WHERE GBD_ID=" + bs.getBusNumber()+" ";
			jdbcTemplate.update(query1);
			String query2="UPDATE GROUP9_BUS_TYPES SET  GBT_TYPE= '"+bs.getBusType()+"'  WHERE GBT_BD_ID= "+bs.getBusNumber();
			jdbcTemplate.update(query2);
			String query3="UPDATE GROUP9_BUS_STATUS_CHECK SET  GBSC_DATE= '"+bs.getBusDate()+"', GBSC_STATUS ='"+bs.getBusStatus()+ "'  WHERE GBSC_GBD_ID= "+bs.getBusNumber();
			jdbcTemplate.update(query3);
			return 1;
		}
				
			
				
		
			
	}



	
	
	


