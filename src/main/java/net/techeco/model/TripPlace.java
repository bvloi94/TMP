package net.techeco.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by vanloibui on 4/9/16.
 */
@Entity
public class TripPlace {
    private int id;
    private int tripId;
    private int placeId;
    private Integer nextTripPlaceId;
    private String vehicle;

    @Id
    @Column(name = "Id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "TripId")
    public int getTripId() {
        return tripId;
    }

    public void setTripId(int tripId) {
        this.tripId = tripId;
    }

    @Basic
    @Column(name = "PlaceId")
    public int getPlaceId() {
        return placeId;
    }

    public void setPlaceId(int placeId) {
        this.placeId = placeId;
    }

    @Basic
    @Column(name = "NextTripPlaceId")
    public Integer getNextTripPlaceId() {
        return nextTripPlaceId;
    }

    public void setNextTripPlaceId(Integer nextTripPlaceId) {
        this.nextTripPlaceId = nextTripPlaceId;
    }

    @Basic
    @Column(name = "Vehicle")
    public String getVehicle() {
        return vehicle;
    }

    public void setVehicle(String vehicle) {
        this.vehicle = vehicle;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TripPlace tripPlace = (TripPlace) o;

        if (id != tripPlace.id) return false;
        if (tripId != tripPlace.tripId) return false;
        if (placeId != tripPlace.placeId) return false;
        if (nextTripPlaceId != null ? !nextTripPlaceId.equals(tripPlace.nextTripPlaceId) : tripPlace.nextTripPlaceId != null)
            return false;
        if (vehicle != null ? !vehicle.equals(tripPlace.vehicle) : tripPlace.vehicle != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + tripId;
        result = 31 * result + placeId;
        result = 31 * result + (nextTripPlaceId != null ? nextTripPlaceId.hashCode() : 0);
        result = 31 * result + (vehicle != null ? vehicle.hashCode() : 0);
        return result;
    }
}
