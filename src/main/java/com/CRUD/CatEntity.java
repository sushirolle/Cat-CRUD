package com.CRUD;

import com.sun.javafx.beans.IDProperty;

import javax.persistence.*;

/**
 * Created by naomi on 1/21/16.
 */

@Entity
@Table (name = "CATS")
public class CatEntity {

			@Id
			@Column(name = "id", nullable = false, insertable = true, updatable = true)
			private long id;
			@Column(name = "cat_name", nullable = false, insertable = true, updatable = true)
			private String catName;
			@Column(name = "fluffy_rating", nullable = false, insertable = true, updatable = true)
			private String fluffyRating;

			public CatEntity(String catName, String fluffyRating) {
				this.catName = catName;
				this.fluffyRating = fluffyRating;
			}

			public long getId() {return id;}

			public String getCatName() {
				return catName;
			}

			public void setCatName(String catName) {
				this.catName = catName;
			}

			public String getFluffyRating() {
				return fluffyRating;
			}

			public void setFluffyRating(String fluffyRating) {
				this.fluffyRating = fluffyRating;
			}

			protected CatEntity(){}

			@Override
			public String toString() {
				return String.format(
						"Cat[id=%d, catName='%s', fluffyRating='%s']",
						id, catName, fluffyRating);
			}
}
