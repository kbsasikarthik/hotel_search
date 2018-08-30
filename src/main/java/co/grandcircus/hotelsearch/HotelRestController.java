package co.grandcircus.hotelsearch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import co.grandcircus.hotelsearch.dao.HotelDao;
import co.grandcircus.hotelsearch.entity.Hotel;

@RestController
public class HotelRestController {
	
	@Autowired
	private HotelDao dao;
	
	@RequestMapping(value="/api/hotels/city={city}", method=RequestMethod.GET)
	public List<Hotel> listHotelByCity(@PathVariable("city") String city){
		return dao.getHotelByCity(city);
	}
	
	@RequestMapping("/api/hotels")
	public List<Hotel> listAllHotelsRest(){
		return dao.getAllHotels();
	}

	
}