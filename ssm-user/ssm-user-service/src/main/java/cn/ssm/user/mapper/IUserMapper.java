package cn.ssm.user.mapper;

import cn.ssm.user.api.model.User;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public interface IUserMapper extends BaseMapper<User> {

    User selectByUserName(@Param("userName") String userName);
}
