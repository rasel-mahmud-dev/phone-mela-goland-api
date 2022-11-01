package auto

import (
	"fmt"
	"github.com/rasel-mahmud-dev/mobile-shop-api/src/console"
	"github.com/rasel-mahmud-dev/mobile-shop-api/src/database"
	"io/ioutil"
)

func InitialData() {
	db, err := database.Connect()
	if err != nil {
		console.SaveLog(err.Error())
		return
	}
	defer db.Close()

	usersData, err := ioutil.ReadFile("src/auto/sql/app3_database_users.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(usersData))
	if err != nil {
		console.SaveLog(err.Error())
	} else {
		fmt.Println("Users Inserted ")
	}

	productsData, err := ioutil.ReadFile("src/auto/sql/app3_database_products.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(productsData))
	if err != nil {
		console.SaveLog(err.Error())
	} else {
		fmt.Println("Products Inserted ")
	}

	brandsSql, err := ioutil.ReadFile("src/auto/sql/app3_database_brands.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(brandsSql))
	if err != nil {
		console.SaveLog(err.Error())
	} else {
		console.SaveLog("Brands Inserted")
		fmt.Println("Brands Inserted")
	}

	cartsSql, err := ioutil.ReadFile("src/auto/sql/app3_database_carts.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(cartsSql))
	if err != nil {
		console.SaveLog(err.Error())
	}

	ordersSql, err := ioutil.ReadFile("src/auto/sql/app3_database_orders.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(ordersSql))
	if err != nil {
		console.SaveLog(err.Error())
	}

	product_questionsSql, err := ioutil.ReadFile("src/auto/sql/app3_database_product_questions.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(product_questionsSql))
	if err != nil {
		console.SaveLog(err.Error())
	}

	product_reviewsSql, err := ioutil.ReadFile("src/auto/sql/app3_database_product_reviews.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(product_reviewsSql))
	if err != nil {
		console.SaveLog(err.Error())
	}

	product_specificationsSql, err := ioutil.ReadFile("src/auto/sql/app3_database_product_specifications.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(product_specificationsSql))
	if err != nil {
		console.SaveLog(err.Error())
	}

	salesSql, err := ioutil.ReadFile("src/auto/sql/app3_database_sales.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(salesSql))
	if err != nil {
		console.SaveLog(err.Error())
	}

	shippersSql, err := ioutil.ReadFile("src/auto/sql/app3_database_shippers.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(shippersSql))
	if err != nil {
		console.SaveLog(err.Error())
	}

	shipping_addressesSql, err := ioutil.ReadFile("src/auto/sql/app3_database_shipping_addresses.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(shipping_addressesSql))
	if err != nil {
		console.SaveLog(err.Error())
	}

	wishlistSql, err := ioutil.ReadFile("src/auto/sql/app3_database_wishlist.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(wishlistSql))
	if err != nil {
		console.SaveLog(err.Error())
	}

	order_statusesSql, err := ioutil.ReadFile("src/auto/sql/app3_database_order_statuses.sql")
	if err != nil {
		console.SaveLog(err.Error())
	}
	_, err = db.Exec(string(order_statusesSql))
	if err != nil {
		console.SaveLog(err.Error())
	}

}
