package main

import (
	"flag"
	"fmt"
	"os"
	"io/ioutil"
	validator "github.com/gidsi/go-spaceapi-validator"
)

func init() {
	flag.Usage = func() {
		fmt.Println("Usage: spaceapi-validator FILENAME")
		flag.PrintDefaults()
	}
}

func main() {
	flag.Parse()

	filename := flag.Arg(0)
	if filename == "" {
		flag.Usage()
		os.Exit(1)
	}

	file, err := ioutil.ReadFile(filename)
	if err != nil {
		fmt.Println(err)
		os.Exit(2)
	}

	result, err := validator.Validate(string(file[:]))
	if err != nil || !result.Valid {
		fmt.Println("file is invalid")
		for _, desc := range result.Errors {
			fmt.Printf("- %s.%s: %s\n", desc.Context, desc.Field, desc.Description)
		}
		os.Exit(1)
	}

	fmt.Println("file is valid")
	os.Exit(0)
}