/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gwtech.thechosen.admin.DAO;

import gwtech.thechosen.admin.Entity.Account;
import gwtech.thechosen.admin.Mapper.AccountMapper;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author nguye
 */
@Repository
public class AccountDAO extends Base {
    
    public Account validateUser(Account user) {
        if (user.getId().isEmpty()) {
            return null;
        } else {
            String sql = "SELECT idStaff,name,password,role FROM Staff where idStaff ='" + user.getId() + "'";
            List<Account> list = _jdbcTemplate.query(sql, new AccountMapper());
            return list.size() > 0 ? list.get(0) : null;
        }
    }
}
