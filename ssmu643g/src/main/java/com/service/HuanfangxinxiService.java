package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuanfangxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuanfangxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuanfangxinxiView;


/**
 * 换房信息
 *
 * @author 
 * @email 
 * @date 2020-11-23 14:00:13
 */
public interface HuanfangxinxiService extends IService<HuanfangxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuanfangxinxiVO> selectListVO(Wrapper<HuanfangxinxiEntity> wrapper);
   	
   	HuanfangxinxiVO selectVO(@Param("ew") Wrapper<HuanfangxinxiEntity> wrapper);
   	
   	List<HuanfangxinxiView> selectListView(Wrapper<HuanfangxinxiEntity> wrapper);
   	
   	HuanfangxinxiView selectView(@Param("ew") Wrapper<HuanfangxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuanfangxinxiEntity> wrapper);
   	
}

