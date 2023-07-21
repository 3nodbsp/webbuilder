package com.entity.model;

import com.entity.FeiyongxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 费用信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-11-23 14:00:13
 */
public class FeiyongxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 清洁房间
	 */
	
	private Integer qingjiefangjian;
		
	/**
	 * 洗衣服务
	 */
	
	private Integer xiyifuwu;
		
	/**
	 * 叫醒服务
	 */
	
	private Integer jiaoxingfuwu;
		
	/**
	 * 加床服务
	 */
	
	private Integer jiachuangfuwu;
		
	/**
	 * 送餐服务
	 */
	
	private Integer songcanfuwu;
		
	/**
	 * 保姆服务
	 */
	
	private Integer baomufuwu;
		
	/**
	 * 总费用
	 */
	
	private Integer zongfeiyong;
		
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 登记时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjishijian;
		
	/**
	 * 备注
	 */
	
	private String beizhu;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
				
	
	/**
	 * 设置：清洁房间
	 */
	 
	public void setQingjiefangjian(Integer qingjiefangjian) {
		this.qingjiefangjian = qingjiefangjian;
	}
	
	/**
	 * 获取：清洁房间
	 */
	public Integer getQingjiefangjian() {
		return qingjiefangjian;
	}
				
	
	/**
	 * 设置：洗衣服务
	 */
	 
	public void setXiyifuwu(Integer xiyifuwu) {
		this.xiyifuwu = xiyifuwu;
	}
	
	/**
	 * 获取：洗衣服务
	 */
	public Integer getXiyifuwu() {
		return xiyifuwu;
	}
				
	
	/**
	 * 设置：叫醒服务
	 */
	 
	public void setJiaoxingfuwu(Integer jiaoxingfuwu) {
		this.jiaoxingfuwu = jiaoxingfuwu;
	}
	
	/**
	 * 获取：叫醒服务
	 */
	public Integer getJiaoxingfuwu() {
		return jiaoxingfuwu;
	}
				
	
	/**
	 * 设置：加床服务
	 */
	 
	public void setJiachuangfuwu(Integer jiachuangfuwu) {
		this.jiachuangfuwu = jiachuangfuwu;
	}
	
	/**
	 * 获取：加床服务
	 */
	public Integer getJiachuangfuwu() {
		return jiachuangfuwu;
	}
				
	
	/**
	 * 设置：送餐服务
	 */
	 
	public void setSongcanfuwu(Integer songcanfuwu) {
		this.songcanfuwu = songcanfuwu;
	}
	
	/**
	 * 获取：送餐服务
	 */
	public Integer getSongcanfuwu() {
		return songcanfuwu;
	}
				
	
	/**
	 * 设置：保姆服务
	 */
	 
	public void setBaomufuwu(Integer baomufuwu) {
		this.baomufuwu = baomufuwu;
	}
	
	/**
	 * 获取：保姆服务
	 */
	public Integer getBaomufuwu() {
		return baomufuwu;
	}
				
	
	/**
	 * 设置：总费用
	 */
	 
	public void setZongfeiyong(Integer zongfeiyong) {
		this.zongfeiyong = zongfeiyong;
	}
	
	/**
	 * 获取：总费用
	 */
	public Integer getZongfeiyong() {
		return zongfeiyong;
	}
				
	
	/**
	 * 设置：用户名
	 */
	 
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
				
	
	/**
	 * 设置：登记时间
	 */
	 
	public void setDengjishijian(Date dengjishijian) {
		this.dengjishijian = dengjishijian;
	}
	
	/**
	 * 获取：登记时间
	 */
	public Date getDengjishijian() {
		return dengjishijian;
	}
				
	
	/**
	 * 设置：备注
	 */
	 
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}
				
	
	/**
	 * 设置：是否支付
	 */
	 
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}
			
}
