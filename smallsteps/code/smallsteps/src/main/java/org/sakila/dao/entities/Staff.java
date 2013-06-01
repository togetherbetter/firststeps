package org.sakila.dao.entities;

// Generated Jun 1, 2013 2:10:12 PM by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Staff generated by hbm2java
 */
@Entity
@Table(name = "staff", catalog = "sakila")
public class Staff implements java.io.Serializable {

	private Byte staffId;
	private Address address;
	private Store store;
	private String firstName;
	private String lastName;
	private byte[] picture;
	private String email;
	private boolean active;
	private String username;
	private String password;
	private Date lastUpdate;
	private Set rentals = new HashSet(0);
	private Set payments = new HashSet(0);
	private Set stores = new HashSet(0);

	public Staff() {
	}

	public Staff(Address address, Store store, String firstName,
			String lastName, boolean active, String username, Date lastUpdate) {
		this.address = address;
		this.store = store;
		this.firstName = firstName;
		this.lastName = lastName;
		this.active = active;
		this.username = username;
		this.lastUpdate = lastUpdate;
	}

	public Staff(Address address, Store store, String firstName,
			String lastName, byte[] picture, String email, boolean active,
			String username, String password, Date lastUpdate, Set rentals,
			Set payments, Set stores) {
		this.address = address;
		this.store = store;
		this.firstName = firstName;
		this.lastName = lastName;
		this.picture = picture;
		this.email = email;
		this.active = active;
		this.username = username;
		this.password = password;
		this.lastUpdate = lastUpdate;
		this.rentals = rentals;
		this.payments = payments;
		this.stores = stores;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "staff_id", unique = true, nullable = false)
	public Byte getStaffId() {
		return this.staffId;
	}

	public void setStaffId(Byte staffId) {
		this.staffId = staffId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "address_id", nullable = false)
	public Address getAddress() {
		return this.address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "store_id", nullable = false)
	public Store getStore() {
		return this.store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	@Column(name = "first_name", nullable = false, length = 45)
	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "last_name", nullable = false, length = 45)
	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "picture")
	public byte[] getPicture() {
		return this.picture;
	}

	public void setPicture(byte[] picture) {
		this.picture = picture;
	}

	@Column(name = "email", length = 50)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "active", nullable = false)
	public boolean isActive() {
		return this.active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	@Column(name = "username", nullable = false, length = 16)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "password", length = 40)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "last_update", nullable = false, length = 19)
	public Date getLastUpdate() {
		return this.lastUpdate;
	}

	public void setLastUpdate(Date lastUpdate) {
		this.lastUpdate = lastUpdate;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "staff")
	public Set getRentals() {
		return this.rentals;
	}

	public void setRentals(Set rentals) {
		this.rentals = rentals;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "staff")
	public Set getPayments() {
		return this.payments;
	}

	public void setPayments(Set payments) {
		this.payments = payments;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "staff")
	public Set getStores() {
		return this.stores;
	}

	public void setStores(Set stores) {
		this.stores = stores;
	}

}