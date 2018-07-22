package cn.ssm.user;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author Zephyr
 * @date 2018/7/18.
 */
public class Provider {

    public static void main(String[] args) {
        try {
            ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath*:spring-mybatis.xml");
            System.out.println(context.getDisplayName() + " : here");
            context.start();
            System.out.println("dubbo services started......");
            System.in.read();  //使程序进入等待输入的状态，使服务持久运行
            System.out.println("dubbo services end......");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
