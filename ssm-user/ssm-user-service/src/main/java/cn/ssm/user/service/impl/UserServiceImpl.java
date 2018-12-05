package cn.ssm.user.service.impl;


import cn.ssm.core.base.common.BaseServiceImpl;
import cn.ssm.user.api.model.User;
import cn.ssm.user.api.service.IUserService;
import cn.ssm.user.mapper.IUserMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
@Service("userService")
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl extends BaseServiceImpl<IUserMapper,User>
        implements IUserService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());


    public User getByUserName(String userName) {
        return userName == null ? null : baseMapper.selectByUserName(userName);
    }

    private Boolean isNewUser(User user) {
        return user.getId() == null || baseMapper.selectById(user.getId()) == null;
    }

}
