package net.techeco.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

/**
 * Created by vanloibui on 4/9/16.
 */
@Entity
public class Trip {
    private int id;
    private String name;
    private int leaderId;
    private Timestamp createTime;
    private Timestamp startTime;
    private Timestamp endTime;
    private String gatheringPlace;
    private int status;
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
    @Column(name = "Name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "LeaderId")
    public int getLeaderId() {
        return leaderId;
    }

    public void setLeaderId(int leaderId) {
        this.leaderId = leaderId;
    }

    @Basic
    @Column(name = "CreateTime")
    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
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
    @Column(name = "Status")
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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

        Trip trip = (Trip) o;

        if (id != trip.id) return false;
        if (leaderId != trip.leaderId) return false;
        if (status != trip.status) return false;
        if (name != null ? !name.equals(trip.name) : trip.name != null) return false;
        if (createTime != null ? !createTime.equals(trip.createTime) : trip.createTime != null) return false;
        if (startTime != null ? !startTime.equals(trip.startTime) : trip.startTime != null) return false;
        if (endTime != null ? !endTime.equals(trip.endTime) : trip.endTime != null) return false;
        if (gatheringPlace != null ? !gatheringPlace.equals(trip.gatheringPlace) : trip.gatheringPlace != null)
            return false;
        if (description != null ? !description.equals(trip.description) : trip.description != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + leaderId;
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + (startTime != null ? startTime.hashCode() : 0);
        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
        result = 31 * result + (gatheringPlace != null ? gatheringPlace.hashCode() : 0);
        result = 31 * result + status;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        return result;
    }
}
