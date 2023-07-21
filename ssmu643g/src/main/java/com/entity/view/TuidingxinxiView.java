package com.entity.view;

import com.entity.TuidingxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 退订信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-23 14:00:13
 */
@TableName("tuidingxinxi")
public class TuidingxinxiView  extends TuidingxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public TuidingxinxiView(){
	}
 
 	public TuidingxinxiView(TuidingxinxiEntity tuidingxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, tuidingxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
