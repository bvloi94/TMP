package net.techeco.entity;

import javax.persistence.*;

/**
 * Created by vanloibui on 4/6/16.
 */
@Entity
@Table(name = "TripPlace", schema = "dbo", catalog = "T1P")
public class TripPlaceEntity {
    private int id;
    private int tripId;
    private int placeId;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TripPlaceEntity that = (TripPlaceEntity) o;

        if (id != that.id) return false;
        if (tripId != that.tripId) return false;
        if (placeId != that.placeId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + tripId;
        result = 31 * result + placeId;
        return result;
    }
}
