package net.techeco.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by vanloibui on 4/9/16.
 */
@Entity
public class PrepareObject {
    private int id;
    private String object;
    private int unit;
    private boolean isDeleted;

    @Id
    @Column(name = "Id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "Object")
    public String getObject() {
        return object;
    }

    public void setObject(String object) {
        this.object = object;
    }

    @Basic
    @Column(name = "Unit")
    public int getUnit() {
        return unit;
    }

    public void setUnit(int unit) {
        this.unit = unit;
    }

    @Basic
    @Column(name = "IsDeleted")
    public boolean getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PrepareObject that = (PrepareObject) o;

        if (id != that.id) return false;
        if (unit != that.unit) return false;
        if (isDeleted != that.isDeleted) return false;
        if (object != null ? !object.equals(that.object) : that.object != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (object != null ? object.hashCode() : 0);
        result = 31 * result + unit;
        result = 31 * result + (isDeleted ? 1 : 0);
        return result;
    }
}
