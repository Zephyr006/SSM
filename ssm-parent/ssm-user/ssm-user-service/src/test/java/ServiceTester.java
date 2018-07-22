

import cn.ssm.user.api.model.User;
import cn.ssm.user.api.service.IUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @author Zephyr
 * @date 2018/7/19.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring-mybatis.xml")
public class ServiceTester {

    @Autowired
    private IUserService userService;

    @Test
    public void test2(){
        try {
            User user = userService.findByUserName("user1");
            System.out.println(user.getPassword());
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
