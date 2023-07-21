package com.entity.view;

import com.entity.HuanfangxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 换房信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-23 14:00:13
 */
@TableName("huanfangxinxi")
public class HuanfangxinxiView  extends HuanfangxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public HuanfangxinxiView(){
	}
 
 	public HuanfangxinxiView(HuanfangxinxiEntity huanfangxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, huanfangxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
