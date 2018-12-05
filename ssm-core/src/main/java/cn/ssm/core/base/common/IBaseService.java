package cn.ssm.core.base.common;

import com.baomidou.mybatisplus.service.IService;

import java.util.List;

/**
 * @author Zephyr
 * @date 2018/5/16.
 */
public interface IBaseService<E> extends IService<E> {

    /**
     * 插入或更新一条数据 （不使用dubbo调用service时使用默认的insert方法即可）
     *
     * 执行insert或update操作后，数据的id会自动填充回实体，但是在使用dubbo的形式调用service时，
     * 默认的insert接口方法只会返回boolean值，消费者无法获得insert后的实体的id，本接口就是为了解决这个问题
     *
     * @param entity
     * @param returnEntity 是否返回
     * @return
     */
    E insertOrUpdate(E entity, boolean returnEntity);

    /**
     * 查询数据库对应表内所有数据
     * @return List<E> 数据库表内所有数据
     */
    List<E> selectAll();

}
