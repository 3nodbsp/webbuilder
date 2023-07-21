package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 费用信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-11-23 14:00:13
 */
@TableName("feiyongxinxi")
public class FeiyongxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public FeiyongxinxiEntity() {
		
	}
	
	public FeiyongxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 客房类型
	 */
					
	private String kefangleixing;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：客房类型
	 */
	public void setKefangleixing(String kefangleixing) {
		this.kefangleixing = kefangleixing;
	}
	/**
	 * 获取：客房类型
	 */
	public String getKefangleixing() {
		return kefangleixing;
	}
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
