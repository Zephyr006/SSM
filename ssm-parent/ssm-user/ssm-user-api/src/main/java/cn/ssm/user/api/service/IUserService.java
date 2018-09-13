package cn.ssm.user.api.service;

import cn.ssm.user.api.model.User;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public interface IUserService {

    User getById(Integer userId);

    Boolean insert(User user);

    Boolean insertOrUpdate(User user);

    User getByUserName(String userName);
}
