package cn.ssm.user;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * dubbo的启动程序
 * @author Zephyr
 * @date 2018/7/18.
 * @link http://dubbo.apache.org/zh-cn/docs/user/quick-start.html
 */
public class Provider {

    public static void main(String[] args) {
        try {
            ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath*:spring-mybatis.xml");
            context.start();
            System.out.println("dubbo services started......");
            System.in.read();  //使程序进入等待输入的状态，使服务持久运行
            System.out.println("dubbo services end......");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
