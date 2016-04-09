package net.techeco.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by vanloibui on 4/9/16.
 */
@Entity
public class TripMemberPreparation {
    private int id;
    private int tripMemberId;
    private int tripPreparationId;

    @Id
    @Column(name = "Id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "TripMemberId")
    public int getTripMemberId() {
        return tripMemberId;
    }

    public void setTripMemberId(int tripMemberId) {
        this.tripMemberId = tripMemberId;
    }

    @Basic
    @Column(name = "TripPreparationId")
    public int getTripPreparationId() {
        return tripPreparationId;
    }

    public void setTripPreparationId(int tripPreparationId) {
        this.tripPreparationId = tripPreparationId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TripMemberPreparation that = (TripMemberPreparation) o;

        if (id != that.id) return false;
        if (tripMemberId != that.tripMemberId) return false;
        if (tripPreparationId != that.tripPreparationId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + tripMemberId;
        result = 31 * result + tripPreparationId;
        return result;
    }
}
