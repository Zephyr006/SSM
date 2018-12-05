package cn.ssm.core.base.common;

import com.baomidou.mybatisplus.service.IService;

import java.util.List;

/**
 * @author Zephyr
 * @date 2018/5/16.
 */
public interface IBaseService<E> extends IService<E> {

    List<E> selectAll();

}
