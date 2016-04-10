/**
 *
 */
package net.techeco.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import net.techeco.AjaxResponse;
import net.techeco.dao.concrete.AccountDAO;
import net.techeco.model.Account;
import net.techeco.model.LoginCriteria;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author Duy Beo
 */
@Controller
@EnableWebMvc
@RequestMapping("auth")
public class Authentication {

    @RequestMapping(value = "Login.htm", method = RequestMethod.GET)
    public String login(Model model) {
        return "Login";
    }

    @RequestMapping(value = "Authenticate.htm", method = RequestMethod.POST, headers = "Accept=*/*", produces = "application/json")
    @ResponseBody
    public String Login(HttpSession session, @RequestBody LoginCriteria account) throws IOException {

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode node = mapper.createObjectNode();

//        AjaxResponse<Account> data = new AjaxResponse<Account>();

        AccountDAO accountDAO = new AccountDAO();
        boolean result = accountDAO.checkLogin(account.getEmail(), account.getPassword());

        System.out.println(account.getEmail());
        System.out.println(account.getPassword());
        if (result) {
            Object info = accountDAO.getAccount(account.getEmail());

            try {
//                data.setResult("true");
//                data.setData((Account) info);
                node.put("result", true);
                node.set("data", mapper.valueToTree(info));
                session.setAttribute("result", true);
            } catch (Exception e) {
                System.out.println(e);
            }
        } else {
            try {
//                data.setResult("false");
                node.put("result", false);
                session.setAttribute("result", false);
            } catch (Exception e) {
                System.out.println(e);
            }
        }

        return node.toString();
//        return data;
    }

}
