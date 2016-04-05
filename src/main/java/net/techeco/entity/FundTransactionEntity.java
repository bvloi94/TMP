package net.techeco.entity;

import javax.persistence.*;

/**
 * Created by vanloibui on 4/6/16.
 */
@Entity
@Table(name = "FundTransaction", schema = "dbo", catalog = "T1P")
public class FundTransactionEntity {
    private int id;
    private int fundId;
    private int transactionId;

    @Id
    @Column(name = "Id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "FundId")
    public int getFundId() {
        return fundId;
    }

    public void setFundId(int fundId) {
        this.fundId = fundId;
    }

    @Basic
    @Column(name = "TransactionId")
    public int getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(int transactionId) {
        this.transactionId = transactionId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FundTransactionEntity that = (FundTransactionEntity) o;

        if (id != that.id) return false;
        if (fundId != that.fundId) return false;
        if (transactionId != that.transactionId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + fundId;
        result = 31 * result + transactionId;
        return result;
    }
}
