package cn.ssm.web;

import cn.ssm.user.api.model.User;
import cn.ssm.user.api.service.IUserService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author Zephyr
 * @date 2018/7/21.
 */
public class Consumer {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath*:spring-mybatis.xml");
        context.start();
        IUserService userService = context.getBean(IUserService.class);
        User user = userService.getByUserName("user1");
        if (user!=null)
            System.out.println(user.getPassword());
        else
            System.out.println("user is null....");
    }
}
