package cn.ssm.core.base.utils;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * 以静态变量保存Spring的ApplicationContext, 可在任何地方任何时候取出ApplicaitonContext.
 * 注意：必须在Spring的配置文件中将该类声明为一个bean
 *
 * @author Zephyr
 * @date 2018/11/4
 */
public class SpringContextUtil implements ApplicationContextAware, DisposableBean {

    public static ApplicationContext context;


    /**
     * 从静态变量applicationContext中取得Bean, 自动转型为所赋值对象的类型.
     */
    public static <T> T getBean(Class<T> requiredType) {
        assertContextInjected();
        return context.getBean(requiredType);
    }

    /**
     * 从静态变量applicationContext中取得Bean, 自动转型为所赋值对象的类型.
     *
     * 如果使用默认的@Service注解，service对应的beanName形如：“carModelServiceImpl”
     * 如果使用@Service("serviceName")的形式，service的beanName为：“serviceName”
     */
    @SuppressWarnings("unchecked")
    public static <T> T getBean(String beanName) {
        assertContextInjected();
        return (T) context.getBean(beanName);
    }

    public ApplicationContext getApplicationContext(){
        assertContextInjected();
        return context;
    }

    /**
     * 实现ApplicationContextAware接口, Spring会自动注入ApplicationContext到静态变量中.
     * 注意：必须将该类交给Spring管理（即在Spring的配置文件中将该类声明为一个bean），Spring才会调用该方法
     */
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) {
        SpringContextUtil.context = applicationContext;
    }

    /**
     * 实现DisposableBean接口, 在Context关闭时清理静态变量.
     */
    @Override
    public void destroy() throws Exception {
        context = null;
    }

    /**
     * 判断applicationContext是否已经注入，没有注入则
     * @throws IllegalStateException
     */
    private static void assertContextInjected(){
        Validate.validState(context != null,
                "applicaitonContext属性未注入, 请在Spring的配置文件中定义SpringContextHolder.");
    }
}
