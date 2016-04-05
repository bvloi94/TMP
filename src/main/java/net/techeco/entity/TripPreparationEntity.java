package net.techeco.entity;

import javax.persistence.*;

/**
 * Created by vanloibui on 4/6/16.
 */
@Entity
@Table(name = "TripPreparation", schema = "dbo", catalog = "T1P")
public class TripPreparationEntity {
    private int id;
    private int tripId;
    private int preparationId;
    private String description;

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
    @Column(name = "PreparationId")
    public int getPreparationId() {
        return preparationId;
    }

    public void setPreparationId(int preparationId) {
        this.preparationId = preparationId;
    }

    @Basic
    @Column(name = "Description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TripPreparationEntity that = (TripPreparationEntity) o;

        if (id != that.id) return false;
        if (tripId != that.tripId) return false;
        if (preparationId != that.preparationId) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + tripId;
        result = 31 * result + preparationId;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        return result;
    }
}
