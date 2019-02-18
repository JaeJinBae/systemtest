package com.webaid.domain;

import java.util.Date;

public class StatisticsVO {
	int sno;
	String url;
	String browser;
	String device;
	Date connectdate;
	
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getBrowser() {
		return browser;
	}
	public void setBrowser(String browser) {
		this.browser = browser;
	}
	public String getDevice() {
		return device;
	}
	public void setDevice(String device) {
		this.device = device;
	}
	public Date getConnectdate() {
		return connectdate;
	}
	public void setConnectdate(Date connectdate) {
		this.connectdate = connectdate;
	}
	@Override
	public String toString() {
		return String.format("StatisticsVO [sno=%s, url=%s, browser=%s, device=%s, connectdate=%s]", sno, url, browser,
				device, connectdate);
	}
		
}
