package org.sakila.dao.entities;

// Generated Jun 1, 2013 2:10:12 PM by Hibernate Tools 3.4.0.CR1

import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * SalesByStoreId generated by hbm2java
 */
@Embeddable
public class SalesByStoreId implements java.io.Serializable {

	private String store;
	private String manager;
	private BigDecimal totalSales;

	public SalesByStoreId() {
	}

	public SalesByStoreId(String store, String manager, BigDecimal totalSales) {
		this.store = store;
		this.manager = manager;
		this.totalSales = totalSales;
	}

	@Column(name = "store", length = 101)
	public String getStore() {
		return this.store;
	}

	public void setStore(String store) {
		this.store = store;
	}

	@Column(name = "manager", length = 91)
	public String getManager() {
		return this.manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	@Column(name = "total_sales", precision = 27)
	public BigDecimal getTotalSales() {
		return this.totalSales;
	}

	public void setTotalSales(BigDecimal totalSales) {
		this.totalSales = totalSales;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof SalesByStoreId))
			return false;
		SalesByStoreId castOther = (SalesByStoreId) other;

		return ((this.getStore() == castOther.getStore()) || (this.getStore() != null
				&& castOther.getStore() != null && this.getStore().equals(
				castOther.getStore())))
				&& ((this.getManager() == castOther.getManager()) || (this
						.getManager() != null && castOther.getManager() != null && this
						.getManager().equals(castOther.getManager())))
				&& ((this.getTotalSales() == castOther.getTotalSales()) || (this
						.getTotalSales() != null
						&& castOther.getTotalSales() != null && this
						.getTotalSales().equals(castOther.getTotalSales())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getStore() == null ? 0 : this.getStore().hashCode());
		result = 37 * result
				+ (getManager() == null ? 0 : this.getManager().hashCode());
		result = 37
				* result
				+ (getTotalSales() == null ? 0 : this.getTotalSales()
						.hashCode());
		return result;
	}

}
