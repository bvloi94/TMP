package net.techeco.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by vanloibui on 4/9/16.
 */
@Entity
public class TripFund {
    private int id;
    private int tripId;
    private int keeperId;
    private double balance;

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
    @Column(name = "KeeperId")
    public int getKeeperId() {
        return keeperId;
    }

    public void setKeeperId(int keeperId) {
        this.keeperId = keeperId;
    }

    @Basic
    @Column(name = "Balance")
    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TripFund tripFund = (TripFund) o;

        if (id != tripFund.id) return false;
        if (tripId != tripFund.tripId) return false;
        if (keeperId != tripFund.keeperId) return false;
        if (Double.compare(tripFund.balance, balance) != 0) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + tripId;
        result = 31 * result + keeperId;
        temp = Double.doubleToLongBits(balance);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }
}
