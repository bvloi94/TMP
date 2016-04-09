package net.techeco.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by vanloibui on 4/9/16.
 */
@Entity
public class TripMember {
    private int id;
    private int tripId;
    private int memberId;
    private int tripRoleId;

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
    @Column(name = "MemberId")
    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    @Basic
    @Column(name = "TripRoleId")
    public int getTripRoleId() {
        return tripRoleId;
    }

    public void setTripRoleId(int tripRoleId) {
        this.tripRoleId = tripRoleId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TripMember that = (TripMember) o;

        if (id != that.id) return false;
        if (tripId != that.tripId) return false;
        if (memberId != that.memberId) return false;
        if (tripRoleId != that.tripRoleId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + tripId;
        result = 31 * result + memberId;
        result = 31 * result + tripRoleId;
        return result;
    }
}
