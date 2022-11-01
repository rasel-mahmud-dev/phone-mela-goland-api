package auto

import (
	"fmt"
	"github.com/rasel-mahmud-dev/mobile-shop-api/src/database"
)

func InitialCreateAllTable() {
	db, err := database.Connect()
	if err != nil {
		fmt.Println("database not connected")
		return
	}
	defer db.Close()

	userTableSql := `
		CREATE TABLE IF NOT EXISTS users (
		  id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
		  username VARCHAR(40) NOT NULL,
		  email VARCHAR(50) NOT NULL UNIQUE,
		  password VARCHAR(100) NOT NULL,
		  avatar VARCHAR(100) NULL DEFAULT NULL,
		  created_at DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
		  role ENUM('admin', 'user') NOT NULL DEFAULT 'user'
		)`

	res, err := db.Exec(userTableSql)
	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Println("Users Table Created ")
		_ = res
	}

	res, err = db.Exec(`
		CREATE TABLE IF NOT EXISTS products (
		  id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
		  title VARCHAR(255) NOT NULL,
		  description LONGTEXT NULL,
		  price DOUBLE,
		  author_id INT NOT NULL,
		  brand_id INT DEFAULT 0,
			cover VARCHAR(255) DEFAULT '',
			tags json DEFAULT NULL,
			attributes json DEFAULT NULL,
		  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
			updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
		)`)
	if err != nil {
		fmt.Println(err, "-----")
	} else {
		fmt.Println("Products Table Created ")
	}

	res, err = db.Exec(`
		CREATE TABLE IF NOT EXISTS brands (
		  id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
		  name VARCHAR(255) NOT NULL,
		  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
		)`)
	if err != nil {
		fmt.Println(err, "-----")
	} else {
		fmt.Println("Brands Table Created ")
	}

	// 	res, err = db.Exec(`
	// 		CREATE TABLE IF NOT EXISTS likes (
	// 		  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	// 		  post_id INT NOT NULL,
	// 		  user_id INT NOT NULL,
	// 		  CONSTRAINT fk_likes_posts
	// 		    FOREIGN KEY (post_id)
	// 		    REFERENCES posts (id)
	// 		    ON DELETE CASCADE
	// 		    ON UPDATE CASCADE,
	// 		  CONSTRAINT fk_likes_users
	// 		    FOREIGN KEY (user_id)
	// 		    REFERENCES users (id)
	// 		    ON DELETE CASCADE
	// 		    ON UPDATE CASCADE)
	// `)
	// 	if err != nil {
	// 		fmt.Println(err, "-----")
	// 	} else {
	// 		fmt.Println("Likes Table Created ")
	// 	}
	//
	// 	res, err = db.Exec(`
	// 		CREATE TABLE IF NOT EXISTS comments (
	//  			id INT NOT NULL AUTO_INCREMENT,
	//  			text VARCHAR(500) NOT NULL,
	//  			post_id INT NOT NULL,
	//  			user_id INT NOT NULL,
	//  			parent_id INT DEFAULT NULL,
	//  			created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	//  			PRIMARY KEY (id),
	//  			CONSTRAINT fk_comments_users
	//  			  FOREIGN KEY (user_id)
	//  			  REFERENCES users (id)
	//  			  ON DELETE CASCADE
	//  			  ON UPDATE CASCADE,
	//  			CONSTRAINT fk_comments_posts
	//  			  FOREIGN KEY (post_id)
	//  			  REFERENCES posts (id)
	//  			  ON DELETE CASCADE
	//  			  ON UPDATE CASCADE,
	//  			CONSTRAINT fk_comments_comments
	//  			  FOREIGN KEY (parent_id)
	//  			  REFERENCES comments (id)
	//  			  ON DELETE CASCADE
	//  			  ON UPDATE CASCADE)
	// 	`)
	// 	if err != nil {
	// 		fmt.Println(err, "-----")
	// 	} else {
	// 		fmt.Println("Comments Table Created ")
	// 	}
}

func DropAllTables() {
	db, err := database.Connect()
	if err != nil {
		fmt.Println("database not connected")
		return
	}

	defer db.Close()

	_, err = db.Exec(`
			DROP TABLE IF EXISTS likes;
			DROP TABLE IF EXISTS brands;
			DROP TABLE IF EXISTS comments;
			DROP TABLE IF EXISTS users;
			DROP TABLE IF EXISTS products;
		`)
	if err != nil {
		fmt.Println(err)
	}
	fmt.Println("all table are Deleted")

	//
	// result, err = db.Exec(`DROP TABLE IF EXISTS posts`)
	// if err != nil {
	// 	fmt.Println(result)
	// }
	// result, err = db.Exec(`DROP TABLE IF EXISTS posts`)
	// if err != nil {
	// 	fmt.Println(result)
	// }
	// result, err = db.Exec(`DROP TABLE IF EXISTS likes`)
	// if err != nil {
	// 	fmt.Println(result)
	// }

}
