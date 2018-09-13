package cn.ssm.core.base;

import org.springframework.dao.DataAccessException;

import java.io.Serializable;
import java.util.List;

/**
 * @author Zephyr
 * @date 2018/5/16.
 */
public interface IBaseService<E, PK extends Serializable> {
    E getById(PK id) throws DataAccessException;

    int deleteById(PK id) throws DataAccessException;

    int insert(E entity) throws DataAccessException;

    int insertBatch(List<E> list)  throws DataAccessException;

    int update(E entity) throws DataAccessException;

    //List<E> find(ApiPage query);

    //Page<E> findPage(ApiPage query);

    E getByEntity(E entity);

    List<E> findAll();
}
