package com.login.model;

public class GuideProfile {
	private String name;
	private String email;
	private String image;
	private String phone;
	private String city;
	private String hobby;
	private String places;
	private String about_tour;
	private int fee;
	private String languages;
	
	
	public GuideProfile() {
		
	}
	
	public GuideProfile(String name, String email, String image, String phone, String city, String hobby, String places,
			String about_tour, int fee, String languages) {
		super();
		this.name = name;
		this.email = email;
		this.image = image;
		this.phone = phone;
		this.city = city;
		this.hobby = hobby;
		this.places = places;
		this.about_tour = about_tour;
		this.fee = fee;
		this.languages = languages;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getPlaces() {
		return places;
	}
	public void setPlaces(String places) {
		this.places = places;
	}
	public String getAbout_tour() {
		return about_tour;
	}
	public void setAbout_tour(String about_tour) {
		this.about_tour = about_tour;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public String getLanguages() {
		return languages;
	}
	public void setLanguages(String languages) {
		this.languages = languages;
	}
}
