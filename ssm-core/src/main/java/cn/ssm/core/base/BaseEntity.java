package cn.ssm.core.base;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Zephyr
 * @date 2018/4/30.
 */
public abstract class BaseEntity implements Serializable {
    protected static final String DEFAULT_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

    /**
     * 唯一主键，非空，自增，默认由数据库管理
     */
    private Integer id;
    /**
     * 数据的创建时间，根据请求提交到后台的时间由程序自动创建，在存入数据库之前更新即可，非空
     */
    private Date createDate = null;
    /**
     * 数据信息的最后修改时间，如果创建时间不为空则更新此值，在后台修改，允许为空
     */
    private Date updateDate = null;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreateDate() {
        return (null==createDate ? null : (Date)createDate.clone());
    }

    public void setCreateTime(Date createTime) {
        this.createDate = (null==createTime ? null : (Date)createTime.clone());
        //以下写法与上方注释掉的写法作用完全一致
        //this.createTime = null;
        //if(null != createTime) {
        //    this.createTime = createTime;
        //}
    }

    public void setLastUpdateTime(Date lastUpdateDate) {
        this.updateDate = (null==lastUpdateDate ? null : (Date)lastUpdateDate.clone() );
    }

    public Date getLastUpdateTime() {
        if (null == updateDate) {
            return null;
        }
        return (Date)updateDate.clone();
    }
}
