package cn.ssm.core.base;

import org.springframework.dao.DataAccessException;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * @author Zephyr
 * @date 2018/5/16.
 */
public abstract class BaseService<E, PK extends Serializable> implements IBaseService<E, PK> {

    protected abstract IBaseDao<E, PK> getEntityDao();

    public E getById(PK id) throws DataAccessException {
        return getEntityDao().getById(id);
    }

    @Transactional(rollbackFor = Exception.class)
    public int deleteById(PK id) throws DataAccessException {
        return getEntityDao().deleteById(id);
    }

    @Transactional(rollbackFor = Exception.class)
    public int insert(E entity) throws DataAccessException {
        return getEntityDao().insert(entity);
    }

    @Transactional(rollbackFor = Exception.class)
    public int insertBatch(List<E> entityList) throws DataAccessException {
        if (entityList == null  ||  entityList.isEmpty())
            return 0;
        return getEntityDao().insertBatch(entityList);
    }

    @Transactional(rollbackFor = Exception.class)
    public int update(E entity) throws DataAccessException {
        if (entity == null)
            return 0;
        return getEntityDao().update(entity);
    }

    public List<E> findAll() {
        return getEntityDao().findAll();
    }
}
