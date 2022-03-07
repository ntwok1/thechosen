/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package gwtech.thechosen.admin.Service;

import gwtech.thechosen.admin.Entity.Account;
import org.springframework.stereotype.Service;

/**
 *
 * @author nguye
 */
@Service
public interface IAccount {
    public Account  checkAccount(Account user);
}
