package FileUpload

import (
	"errors"
	"io"
	"net/http"
	"os"
	"strconv"
	"strings"
	"time"
)

type NewFile struct {
	Name string
	Size int64
	Path string
}

func Upload(dir string, fieldName string, req *http.Request) (newFile NewFile, returnErr error) {

	upFile := NewFile{}

	_ = req.ParseMultipartForm(2 << 20) // memory storage
	var myErr error
	// create temp folder multipart file
	file, header, err := req.FormFile(fieldName)
	if err != nil {
		myErr = errors.New("No File with given field name " + fieldName)
		return upFile, myErr
	}
	defer file.Close()

	// check isDirExist and create dir
	_, err = os.Stat(dir)
	if os.IsNotExist(err) {
		err = os.MkdirAll(dir, 0777)
		if err != nil {
			return upFile, err
		}
	}

	fileName := dir + header.Filename

	// rename file if it already exists.
	_, err = os.Stat(fileName)
	if !os.IsNotExist(err) {
		indexLastDot := strings.LastIndex(fileName, ".")
		name := fileName[:indexLastDot]
		ext := fileName[indexLastDot:]
		name += "_" + strconv.Itoa(int(time.Now().Unix())) + ext
		fileName = name
	}

	// create new empty file
	dst, err := os.Create(fileName)
	if err != nil {
		return upFile, err
	}
	defer dst.Close()

	// data copy temp multipart file to empty file
	_, err = io.Copy(dst, file)
	if err != nil {
		return upFile, err
	}

	file.Close()
	err = req.MultipartForm.RemoveAll() // delete temp file
	if err != nil {
		return upFile, err
	}

	s, _ := dst.Stat()
	upFile.Name = s.Name()
	upFile.Size = s.Size()
	upFile.Path = dst.Name()

	return upFile, myErr
}
