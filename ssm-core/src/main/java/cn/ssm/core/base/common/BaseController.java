package cn.ssm.core.base.common;

import cn.ssm.core.base.json.AjaxJson;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author Zephyr
 * @date 2018/12/5.
 */
public abstract class BaseController<Entity> {
    protected final Logger logger = LoggerFactory.getLogger(getClass());
    private IBaseService<Entity> baseService;


    protected AjaxJson save(Entity entity){
        AjaxJson ajaxJson = new AjaxJson();
        if (baseService.insertOrUpdate(entity)){
            return ajaxJson;
        }else {
            return ajaxJson.fail("保存失败");
        }

    }

    protected void setBaseService(IBaseService<Entity> service){
        this.baseService = service;
    }
}
