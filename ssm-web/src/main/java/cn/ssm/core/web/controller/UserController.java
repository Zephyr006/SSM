package cn.ssm.core.web.controller;


import cn.ssm.core.base.utils.DateUtil;
import cn.ssm.user.api.model.User;
import cn.ssm.user.api.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
@Controller
@RequestMapping("/account")
public class UserController {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
    @Resource
    private IUserService userService;

    @RequestMapping(value = "/login")
    public String login(Model model, HttpServletRequest request) {
        model.addAttribute("action","login");
        return "login";
    }

    @RequestMapping(value = "/register")
    public String register(String info, Model model) {
        if(info != null) {
            model.addAttribute("info",info);
        }
        model.addAttribute("action", "register");
        return "register";
    }

    @RequestMapping(value = "/logoff")
    public String logOff(HttpServletRequest req, HttpServletResponse resp, Model model) {
        System.out.println(req.getRequestedSessionId());
        for (int i=0; i<req.getCookies().length; i++) {
            if("userName".equals(req.getCookies()[i].getName())) {
                req.getCookies()[i].setMaxAge(0);
                resp.addCookie(req.getCookies()[i]);
                break;
            }
        }
        model.addAttribute("action","login");
        return "login_or_register";
    }

    @RequestMapping(value="/loginVerify", method = RequestMethod.POST)
    public String loginVerify(HttpServletRequest req, HttpServletResponse resp, Model model) {
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        //LOGGER.info("用户 " + userName + " 正在进行登录操作...");
        User user = null;
        try{
            user = userService.getByUserName(userName);
        }catch (Exception e){
            LOGGER.error("用户 " +userName+ " 登录异常！！错误信息为：\n" + e);
            model.addAttribute("info","用户名或密码输入错误，请重新输入");
            model.addAttribute("action","login");
            return "login_or_register";
        }
        //通过用户名能找到用户记录，*前提是用户名唯一*
        if (user != null && req.getParameter("userName").equals(user.getUserName()) && password.equals(user.getPassword())){
            Cookie[] cookies = req.getCookies();
            if(cookies != null) {
                for (Cookie cookie : cookies) {
                    if("userName".equals(cookie.getName())){
                        LOGGER.info("User already logged in, cookieValue=" + cookie.getValue());
                        return "index";
                    }
                }
            }
            Cookie cookie = new Cookie("userName",user.getUserName());
            cookie.setMaxAge(60*60*24); //one day
            resp.addCookie(cookie);
            model.addAttribute("info", "登录成功");
            LOGGER.info("用户 " +userName+ " 登录成功！");
            return "index";
        }else {
            LOGGER.warn("用户 " +userName+ " 登录失败，其输入的用户名或密码错误！");
            model.addAttribute("info","用户名或密码输入错误，请重新输入");
            model.addAttribute("action","login");
            return "login_or_register";
        }
    }

    @RequestMapping("/registerVerify")
    public String registerVerify(HttpServletRequest req, Model model) {
        //User auth = (User)model.asMap().get("auth");
        //LOGGER.info("开始执行注册用户请求!");
        User user = new User();
        user.setUserName(req.getParameter("userName"));
        user.setPassword(req.getParameter("password"));
        user.setNickName(req.getParameter("userName"));
        if(null != req.getParameter("nickName"))
            user.setNickName(req.getParameter("nickName"));
        if( !StringUtils.isEmpty(req.getParameter("birthday")) ){
            try {
                user.setBirthday(DateUtil.stringToDate(req.getParameter("birthday")));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        try {
            if( userService.insert(user) ){
                LOGGER.info("用户注册成功，将跳转到登录页面！！！");
                return "redirect:/account/login";
            }else {
                LOGGER.info("当前使用的注册用户名重复，将再次跳转回注册页面！！！");
                model.addAttribute("info","用户名重复，请使用其他用户名注册！");
                return "redirect:/account/register";
            }
        } catch (Exception e){
            LOGGER.error("UserService.insert(user)方法异常，用户注册信息写入失败！错误信息如下：\n" + e);
            return "redirect:/account/register";
        }
    }
}
