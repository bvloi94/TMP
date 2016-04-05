package net.techeco.entity;

import javax.persistence.*;

/**
 * Created by vanloibui on 4/6/16.
 */
@Entity
@Table(name = "Preparation", schema = "dbo", catalog = "T1P")
public class PreparationEntity {
    private int id;
    private int memberId;
    private String object;

    @Id
    @Column(name = "Id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
    @Column(name = "Object")
    public String getObject() {
        return object;
    }

    public void setObject(String object) {
        this.object = object;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PreparationEntity that = (PreparationEntity) o;

        if (id != that.id) return false;
        if (memberId != that.memberId) return false;
        if (object != null ? !object.equals(that.object) : that.object != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + memberId;
        result = 31 * result + (object != null ? object.hashCode() : 0);
        return result;
    }
}
