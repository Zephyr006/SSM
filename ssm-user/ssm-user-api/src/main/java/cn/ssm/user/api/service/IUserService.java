package cn.ssm.user.api.service;

import cn.ssm.core.base.common.IBaseService;
import cn.ssm.user.api.model.User;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public interface IUserService extends IBaseService<User> {

    User getByUserName(String userName);
}
