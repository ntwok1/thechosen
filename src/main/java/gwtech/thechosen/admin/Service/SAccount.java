/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gwtech.thechosen.admin.Service;

import gwtech.thechosen.admin.DAO.AccountDAO;
import gwtech.thechosen.admin.Entity.Account;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author nguye
 */
@Service
public class SAccount implements IAccount{
    @Autowired
    AccountDAO accDao = new AccountDAO();
    
    @Override
    public Account checkAccount(Account user) {
        String pass = user.getPassword();
        user = accDao.validateUser(user);
        if (user != null) {
            if (BCrypt.checkpw(pass, user.getPassword())) {
                return user;
            } else {
                return null;
            }
        }
        return null;
    }
    
}
