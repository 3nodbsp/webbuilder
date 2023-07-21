package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KefangkuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KefangkuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KefangkuView;


/**
 * 客房库
 *
 * @author 
 * @email 
 * @date 2020-11-23 14:00:13
 */
public interface KefangkuService extends IService<KefangkuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KefangkuVO> selectListVO(Wrapper<KefangkuEntity> wrapper);
   	
   	KefangkuVO selectVO(@Param("ew") Wrapper<KefangkuEntity> wrapper);
   	
   	List<KefangkuView> selectListView(Wrapper<KefangkuEntity> wrapper);
   	
   	KefangkuView selectView(@Param("ew") Wrapper<KefangkuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KefangkuEntity> wrapper);
   	
}

