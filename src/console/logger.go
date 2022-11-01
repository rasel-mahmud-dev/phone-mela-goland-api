package console

import (
	"fmt"
	"io/ioutil"
	"os"
	"time"
)

func SaveLog(message string) {

	isPM := "AM"
	t := time.Now().Hour()
	if t > 11 {
		isPM = "PM"
	}

	formatMessage := "----------------------------------------------------------------------------------------------- \n" +
		"Create on " + time.Now().Format("2006/01/02:::03:04:05") + isPM + "\n message:" + "\n \n" + message +
		"\n " +
		"----------------------------------------------------------------------------------------------- \n \n \n \n"

	fileName := time.Now().Format("2006-01-02")
	fileName = fileName + ".log"

	path := "src/logs/" + fileName

	_, err := os.Stat(path)
	if err != nil {
		err = ioutil.WriteFile(path, []byte(formatMessage), 0644)
		if err != nil {
			fmt.Println(err)
			return
		}
		return
	}

	open, err := os.OpenFile(path, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		return
	}
	defer open.Close()
	_, err = open.Write([]byte(formatMessage))
	if err != nil {
		return
	}

	err = open.Close()
	if err != nil {
		return
	}
}
