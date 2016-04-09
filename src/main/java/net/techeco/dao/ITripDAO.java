package net.techeco.dao;

import net.techeco.model.Trip;

public interface ITripDAO {
	public boolean createTrip(Trip trip);
	public boolean updateTrip(Trip trip);
	public boolean cancelTrip(int tripId);
	
}
