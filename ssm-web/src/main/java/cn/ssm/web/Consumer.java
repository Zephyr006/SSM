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
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
        context.start();
        IUserService userService = (IUserService) context.getBean("userService");
        User user = new User();
        //user.setId(1);
        user.setUserName("name123");
        user.setPassword("1231");
        //user.setId(2);
        User user1 = userService.insertOrUpdate(user, true);
        //userService.updateById(user);
        //List<User> users = userService.selectAll();
        System.out.println(user1.getId() + user1.getCreateTime().toString());
        System.out.println("finish");
    }
}
