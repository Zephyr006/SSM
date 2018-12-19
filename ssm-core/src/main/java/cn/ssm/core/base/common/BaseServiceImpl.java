package cn.ssm.core.base.common;

import cn.ssm.core.base.query.EntityWrapper;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;

import java.util.List;

/**
 * @author Zephyr
 * @date 2018/5/16.
 */
public abstract class BaseServiceImpl<M extends BaseMapper<E>, E> extends ServiceImpl<M, E>
        implements IBaseService<E> {

    @Override
    public E insertOrUpdate(E entity, boolean returnEntity) {
        if (super.insertOrUpdate(entity)){
            return entity;
        }
        return returnEntity ? entity : null;
    }

    @Override
    public List<E> selectAll() {
        return super.selectList(new EntityWrapper<E>().eq("1","1"));
    }
}
