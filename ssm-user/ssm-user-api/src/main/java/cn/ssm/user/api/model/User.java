package cn.ssm.user.api.model;

import cn.ssm.core.base.common.BaseEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
@TableName("sys_user")
public class User extends BaseEntity<Integer> {
    private static final long serialVersionUID = 5454155825314635432L;
    /**
     * 用户名，可以包含汉字，也可以是纯数字，非空
     */
    @TableField(value = "user_name")
    private String userName;
    /**
     * 昵称，可以包含汉字，也可以是纯数字，可空，可重复
     */
    @TableField(value = "nick_name")
    private String nickName;
    /**
     * 密码：只能包含字符，不能包含汉字和非法字符
     */
    @TableField(value = "password")
    private String password;
    /**
     * 用户身份：0代表普通用户,1代表管理员，默认普通用户
     */
    @TableField(value = "role")
    private int role;


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User@ userName=" + getUserName() + " ,password=" + getPassword();
    }
}