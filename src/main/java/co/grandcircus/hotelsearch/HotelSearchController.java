package co.grandcircus.hotelsearch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.hotelsearch.dao.HotelDao;

@Controller
public class HotelSearchController {
	
	@Autowired
	private HotelDao hotelDao;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("cities", hotelDao.getCityCategories());
		return mav;
	}
	
	@RequestMapping("/all")
	public ModelAndView showAllHotels() {
		ModelAndView mav = new ModelAndView("allhotels");
		mav.addObject("hotels", hotelDao.getAllHotels());
		return mav;
	}
	
	@RequestMapping("/hotels")
	public ModelAndView showHotelsByCity(@RequestParam(value="city", required=false) String city) {
		ModelAndView mav = new ModelAndView("hotels");
		if (city != null && !city.isEmpty()) {
			mav.addObject("hotels", hotelDao.getHotelByCity(city));
		}
		mav.addObject("city", city);
		return mav;
	}
	
	
}
