package cn.ssm.user.service.impl;


import cn.ssm.user.api.model.User;
import cn.ssm.user.api.service.IUserService;
import cn.ssm.user.mapper.IUserMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
@Service("userService")
public class UserServiceImpl implements IUserService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private IUserMapper userDao;

    public User getByUserName(String userName) {
        return userName == null ? null : userDao.selectByUserName(userName);
    }

    private Boolean isNewUser(User user) {
        return user.getId() == null || userDao.getById(user.getId()) == null;
    }

    public User getById(Integer userId) {
        return userDao.getById(userId);
    }

    /**
     * 插入一条新数据，数据的id由数据库维护，不需要手动指定
     * @param user
     * @return boolean
     */
    @Transactional(rollbackFor = Exception.class)
    public Boolean insert(User user) {
        if (userDao.selectByUserName(user.getUserName()) == null) {
            user.setCreateTime(new Date());
            userDao.insert(user);
            return true;
        } else {
            return false;
        }
    }

    /**
     * 如果是新创建的用户，执行插入操作,否则执行更新操作
     * @param user
     */
    @Transactional(rollbackFor = Exception.class)
    public Boolean insertOrUpdate(User user) {
        try {
            if (isNewUser(user)) {
                user.setCreateTime(new Date());
                userDao.insert(user);
            } else {
                user.setLastUpdateTime(new Date());
                userDao.update(user);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}
