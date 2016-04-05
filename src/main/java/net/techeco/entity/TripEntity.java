package net.techeco.entity;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by vanloibui on 4/6/16.
 */
@Entity
@Table(name = "Trip", schema = "dbo", catalog = "T1P")
public class TripEntity {
    private int id;
    private String name;
    private String description;
    private Timestamp startTime;
    private Timestamp endTime;
    private String gatheringPlace;
    private boolean isFinished;
    private int adminId;

    @Id
    @Column(name = "Id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "Name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "Description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "StartTime")
    public Timestamp getStartTime() {
        return startTime;
    }

    public void setStartTime(Timestamp startTime) {
        this.startTime = startTime;
    }

    @Basic
    @Column(name = "EndTime")
    public Timestamp getEndTime() {
        return endTime;
    }

    public void setEndTime(Timestamp endTime) {
        this.endTime = endTime;
    }

    @Basic
    @Column(name = "GatheringPlace")
    public String getGatheringPlace() {
        return gatheringPlace;
    }

    public void setGatheringPlace(String gatheringPlace) {
        this.gatheringPlace = gatheringPlace;
    }

    @Basic
    @Column(name = "IsFinished")
    public boolean isFinished() {
        return isFinished;
    }

    public void setFinished(boolean finished) {
        isFinished = finished;
    }

    @Basic
    @Column(name = "AdminId")
    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TripEntity that = (TripEntity) o;

        if (id != that.id) return false;
        if (isFinished != that.isFinished) return false;
        if (adminId != that.adminId) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (startTime != null ? !startTime.equals(that.startTime) : that.startTime != null) return false;
        if (endTime != null ? !endTime.equals(that.endTime) : that.endTime != null) return false;
        if (gatheringPlace != null ? !gatheringPlace.equals(that.gatheringPlace) : that.gatheringPlace != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (startTime != null ? startTime.hashCode() : 0);
        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
        result = 31 * result + (gatheringPlace != null ? gatheringPlace.hashCode() : 0);
        result = 31 * result + (isFinished ? 1 : 0);
        result = 31 * result + adminId;
        return result;
    }
}
