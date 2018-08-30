package co.grandcircus.hotelsearch.dao;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.hotelsearch.entity.Hotel;

@Repository
@Transactional
public class HotelDao {
	
	@PersistenceContext
	private EntityManager em;
	
	
	public List<Hotel> getAllHotels(){
		return em.createQuery("From Hotel",Hotel.class).getResultList();
	}
	
	public Set<String> getCityCategories(){
		List<String> cityList = em.createQuery("SELECT DISTINCT city from Hotel", String.class).getResultList();
		return new TreeSet<>(cityList);
	}

	public List<Hotel> getHotelByCity(String city) {
		return em.createQuery("FROM Hotel WHERE city = :cty", Hotel.class)
				.setParameter("cty", city)
				.getResultList();
	}

}
