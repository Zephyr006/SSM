package cn.ssm.user.mapper;

import cn.ssm.core.base.IBaseDao;
import cn.ssm.user.api.model.User;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public interface IUserMapper extends IBaseDao<User, Integer> {

    User selectByUserName(String userName);
}
