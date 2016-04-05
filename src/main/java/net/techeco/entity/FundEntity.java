package net.techeco.entity;

import javax.persistence.*;

/**
 * Created by vanloibui on 4/6/16.
 */
@Entity
@Table(name = "Fund", schema = "dbo", catalog = "T1P")
public class FundEntity {
    private int id;
    private int total;
    private int managerId;
    private int tripId;

    @Id
    @Column(name = "Id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "Total")
    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Basic
    @Column(name = "ManagerId")
    public int getManagerId() {
        return managerId;
    }

    public void setManagerId(int managerId) {
        this.managerId = managerId;
    }

    @Basic
    @Column(name = "TripId")
    public int getTripId() {
        return tripId;
    }

    public void setTripId(int tripId) {
        this.tripId = tripId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FundEntity that = (FundEntity) o;

        if (id != that.id) return false;
        if (total != that.total) return false;
        if (managerId != that.managerId) return false;
        if (tripId != that.tripId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + total;
        result = 31 * result + managerId;
        result = 31 * result + tripId;
        return result;
    }
}
