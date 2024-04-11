package main

import (
	"context"
	"fmt"
	"os"

	"github.com/aws/aws-lambda-go/lambda"
)

func HandleRequest(ctx context.Context) (string, error) {
	return "Hello from Lambda using Go!", nil
}

func main() {
	if os.Getenv("AWS_LAMBDA_RUNTIME_API") == "" {
		// Simulate Lambda invocation locally
		result, err := HandleRequest(context.Background())
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error: %v\n", err)
			os.Exit(1)
		}
		fmt.Println(result)
	} else {
		// Run the Lambda handler
		lambda.Start(HandleRequest)
	}
}

// package main

// import (
// 	"context"
// 	"sort"

// 	"github.com/aws/aws-lambda-go/lambda"
// )

// type Address struct {
// 	Firstname string `json:"firstname"`
// 	Lastname  string `json:"lastname"`
// 	ID        int    `json:"id"`
// }

// // The event structure you expect to receive, modify as needed.
// type MyEvent struct {
// 	Addresses []Address `json:"addresses"`
// }

// // HandleRequest is your Lambda function handler
// func HandleRequest(ctx context.Context, event MyEvent) ([]Address, error) {
// 	sort.Slice(event.Addresses, func(i, j int) bool {
// 		if event.Addresses[i].Lastname < event.Addresses[j].Lastname {
// 			return true
// 		}
// 		if event.Addresses[i].Lastname > event.Addresses[j].Lastname {
// 			return false
// 		}
// 		return event.Addresses[i].Firstname < event.Addresses[j].Firstname
// 	})

// 	return event.Addresses, nil
// }

// func main() {
// 	// Make the handler available for Remote Procedure Call by AWS Lambda
// 	lambda.Start(HandleRequest)
// }
