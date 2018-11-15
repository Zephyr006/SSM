package cn.ssm.core.base;

import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.io.Serializable;

/**
 * @author Zephyr
 * @date 2018/11/15.
 */
public interface IBaseMapper<T, PK extends Serializable> extends BaseMapper<T> {

}
