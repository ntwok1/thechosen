/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gwtech.thechosen.admin.Mapper;

import gwtech.thechosen.admin.Entity.Account;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author nguye
 */

public class AccountMapper implements RowMapper<Account>{
    @Override
    public Account mapRow(ResultSet rs, int i) throws SQLException {
        Account a = new Account();
        a.setId(rs.getString("idStaff"));
        a.setName(rs.getString("name"));
        a.setPassword(rs.getString("password"));
        a.setRole(rs.getString("role"));
        return a;
    }
}
