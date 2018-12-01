package com.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;



import org.springframework.jdbc.core.JdbcTemplate;


import org.springframework.jdbc.core.RowMapper;

import com.model.BookDetails;
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
	public List<SearchResult> searchBus(BusSearch b) {
		
		System.out.println("inside con"+b.getSource());
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
		
		
		
	}



	public List<BookDetails> bookBus(List list) {
		return list;
		
	}



	public Object bookBus() {
		// TODO Auto-generated method stub
		return null;
	}


}
