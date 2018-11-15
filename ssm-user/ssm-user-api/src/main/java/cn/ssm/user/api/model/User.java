package cn.ssm.user.api.model;

import cn.ssm.core.base.BaseEntity;

import java.io.Serializable;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public class User extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 5454155825314635432L;
    /**
     * 用户名，可以包含汉字，也可以是纯数字，非空
     */
    private String userName;
    /**
     * 昵称，可以包含汉字，也可以是纯数字，可空，可重复
     */
    private String nickName;
    /**
     * 密码：只能包含字符，不能包含汉字和非法字符
     */
    private String password;
    /**
     * 该账户是否处于被锁定状态，false表示未锁定的正常状态（默认），true表示锁定,注销则直接删除账号
     */
    private boolean status;
    /**
     * 用户身份：0代表普通用户,1代表管理员，默认普通用户
     */
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

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}