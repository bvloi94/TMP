package net.techeco.util;

import java.sql.Types;

/**
 * Created by vanloibui on 4/11/16.
 */
public class SqlServerDialectWithNvarchar extends org.hibernate.dialect.SQLServerDialect {

    public SqlServerDialectWithNvarchar() {
        registerHibernateType(Types.NVARCHAR, 4000, "string");
    }

}