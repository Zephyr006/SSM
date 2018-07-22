import cn.ssm.user.api.model.User;
import cn.ssm.user.api.service.IUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    final Logger logger = LoggerFactory.getLogger("testtt");

    @Autowired
    private IUserService userService;

    @Test
    public void test1(){
        try {
            User user = new User();
            //user.setId(11);
            //user.setNickName("Nick");
            //user.setUserName("username123");
            //user.setPassword("666666");
            //user.setBirthday(new java.sql.Date(System.currentTimeMillis()));
            //user.setIsLocked(true);
            //user.setRole(Role.TEMPUSER.getIndex());
            //System.out.println(userService.insert(user));

            user = userService.findByUserName("user1");
            System.out.println(user);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Test
    public void testLogger(){
        logger.warn("success?");
    }
}
