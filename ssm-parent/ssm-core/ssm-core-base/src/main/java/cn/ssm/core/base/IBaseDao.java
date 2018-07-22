package cn.ssm.core.base;

import org.springframework.dao.DataAccessException;

import java.io.Serializable;
import java.util.List;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public interface IBaseDao<E, PK extends Serializable>{
    int deleteById(PK id) throws DataAccessException;//1

    int insert(E entity) throws DataAccessException;//2

    E findById(PK id) throws DataAccessException;//3

    int update(E entity) throws DataAccessException;//4

    List<E> findAll();

    int insertBatch(List<E> list)  throws DataAccessException;

    //int deleteByEntity(E entity);

    //List<E> find(ApiPage query);

    //Page<E> findPage(ApiPage query);
}
