package cn.ssm.user.dao;

import cn.ssm.core.base.IBaseDao;
import cn.ssm.user.api.model.User;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public interface IUserDao extends IBaseDao<User, Integer> {

    User getByUserName(String userName);
}
