package net.techeco.entity;

import javax.persistence.*;

/**
 * Created by vanloibui on 4/6/16.
 */
@Entity
@Table(name = "TripMember", schema = "dbo", catalog = "T1P")
public class TripMemberEntity {
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

        TripMemberEntity that = (TripMemberEntity) o;

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
