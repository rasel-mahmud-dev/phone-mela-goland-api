package middleware

import (
	"encoding/json"
	"github.com/rasel-mahmud-dev/mobile-shop-api/src/database"
	"github.com/rasel-mahmud-dev/mobile-shop-api/src/jwt"
	"github.com/rasel-mahmud-dev/mobile-shop-api/src/response"
	"net/http"
)

var AdminId int

// ' Check you are real admin or not.

func IsAdmin(handlerFun http.HandlerFunc) http.HandlerFunc {
	return func(res http.ResponseWriter, req *http.Request) {

		token := req.Header.Get("token")

		valid, err := jwt.TokenValid(token)
		if err != nil {
			res.WriteHeader(401)
			response.ErrorHandler(res, 403, "token expired")
			return
		}

		if valid != 0 {
			AdminId = int(valid)

			db, err := database.Connect()
			if err != nil {
				res.WriteHeader(500)
				json.NewEncoder(res).Encode(map[string]interface{}{"message": "Database connection fail"})
				return
			}
			defer db.Close()

			ctx, cancel := database.CreateContext(req)
			defer cancel()
			var role string

			err = db.QueryRowContext(ctx, "SELECT role from users where id = ?", AdminId).Scan(&role)
			if err != nil {
				res.WriteHeader(401)
				json.NewEncoder(res).Encode(map[string]interface{}{"message": "Unauthorized"})
				return
			}

			if role != "admin" {
				json.NewEncoder(res).Encode(map[string]interface{}{"message": "Unauthorized"})
				return
			}

			handlerFun(res, req)

		} else {
			response.ErrorHandler(res, 403, "Unauthorized")
		}
	}
}
