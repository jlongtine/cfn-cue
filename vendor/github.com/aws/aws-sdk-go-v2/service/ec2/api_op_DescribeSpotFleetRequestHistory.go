// Code generated by private/model/cli/gen-api/main.go. DO NOT EDIT.

package ec2

import (
	"context"
	"time"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/internal/awsutil"
)

// Contains the parameters for DescribeSpotFleetRequestHistory.
// Please also see https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequestHistoryRequest
type DescribeSpotFleetRequestHistoryInput struct {
	_ struct{} `type:"structure"`

	// Checks whether you have the required permissions for the action, without
	// actually making the request, and provides an error response. If you have
	// the required permissions, the error response is DryRunOperation. Otherwise,
	// it is UnauthorizedOperation.
	DryRun *bool `locationName:"dryRun" type:"boolean"`

	// The type of events to describe. By default, all events are described.
	EventType EventType `locationName:"eventType" type:"string" enum:"true"`

	// The maximum number of results to return in a single call. Specify a value
	// between 1 and 1000. The default value is 1000. To retrieve the remaining
	// results, make another call with the returned NextToken value.
	MaxResults *int64 `locationName:"maxResults" min:"1" type:"integer"`

	// The token for the next set of results.
	NextToken *string `locationName:"nextToken" type:"string"`

	// The ID of the Spot Fleet request.
	//
	// SpotFleetRequestId is a required field
	SpotFleetRequestId *string `locationName:"spotFleetRequestId" type:"string" required:"true"`

	// The starting date and time for the events, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ).
	//
	// StartTime is a required field
	StartTime *time.Time `locationName:"startTime" type:"timestamp" required:"true"`
}

// String returns the string representation
func (s DescribeSpotFleetRequestHistoryInput) String() string {
	return awsutil.Prettify(s)
}

// Validate inspects the fields of the type to determine if they are valid.
func (s *DescribeSpotFleetRequestHistoryInput) Validate() error {
	invalidParams := aws.ErrInvalidParams{Context: "DescribeSpotFleetRequestHistoryInput"}
	if s.MaxResults != nil && *s.MaxResults < 1 {
		invalidParams.Add(aws.NewErrParamMinValue("MaxResults", 1))
	}

	if s.SpotFleetRequestId == nil {
		invalidParams.Add(aws.NewErrParamRequired("SpotFleetRequestId"))
	}

	if s.StartTime == nil {
		invalidParams.Add(aws.NewErrParamRequired("StartTime"))
	}

	if invalidParams.Len() > 0 {
		return invalidParams
	}
	return nil
}

// Contains the output of DescribeSpotFleetRequestHistory.
// Please also see https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequestHistoryResponse
type DescribeSpotFleetRequestHistoryOutput struct {
	_ struct{} `type:"structure"`

	// Information about the events in the history of the Spot Fleet request.
	HistoryRecords []HistoryRecord `locationName:"historyRecordSet" locationNameList:"item" type:"list"`

	// The last date and time for the events, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ).
	// All records up to this time were retrieved.
	//
	// If nextToken indicates that there are more results, this value is not present.
	LastEvaluatedTime *time.Time `locationName:"lastEvaluatedTime" type:"timestamp"`

	// The token required to retrieve the next set of results. This value is null
	// when there are no more results to return.
	NextToken *string `locationName:"nextToken" type:"string"`

	// The ID of the Spot Fleet request.
	SpotFleetRequestId *string `locationName:"spotFleetRequestId" type:"string"`

	// The starting date and time for the events, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ).
	StartTime *time.Time `locationName:"startTime" type:"timestamp"`
}

// String returns the string representation
func (s DescribeSpotFleetRequestHistoryOutput) String() string {
	return awsutil.Prettify(s)
}

const opDescribeSpotFleetRequestHistory = "DescribeSpotFleetRequestHistory"

// DescribeSpotFleetRequestHistoryRequest returns a request value for making API operation for
// Amazon Elastic Compute Cloud.
//
// Describes the events for the specified Spot Fleet request during the specified
// time.
//
// Spot Fleet events are delayed by up to 30 seconds before they can be described.
// This ensures that you can query by the last evaluated time and not miss a
// recorded event. Spot Fleet events are available for 48 hours.
//
//    // Example sending a request using DescribeSpotFleetRequestHistoryRequest.
//    req := client.DescribeSpotFleetRequestHistoryRequest(params)
//    resp, err := req.Send(context.TODO())
//    if err == nil {
//        fmt.Println(resp)
//    }
//
// Please also see https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequestHistory
func (c *Client) DescribeSpotFleetRequestHistoryRequest(input *DescribeSpotFleetRequestHistoryInput) DescribeSpotFleetRequestHistoryRequest {
	op := &aws.Operation{
		Name:       opDescribeSpotFleetRequestHistory,
		HTTPMethod: "POST",
		HTTPPath:   "/",
	}

	if input == nil {
		input = &DescribeSpotFleetRequestHistoryInput{}
	}

	req := c.newRequest(op, input, &DescribeSpotFleetRequestHistoryOutput{})
	return DescribeSpotFleetRequestHistoryRequest{Request: req, Input: input, Copy: c.DescribeSpotFleetRequestHistoryRequest}
}

// DescribeSpotFleetRequestHistoryRequest is the request type for the
// DescribeSpotFleetRequestHistory API operation.
type DescribeSpotFleetRequestHistoryRequest struct {
	*aws.Request
	Input *DescribeSpotFleetRequestHistoryInput
	Copy  func(*DescribeSpotFleetRequestHistoryInput) DescribeSpotFleetRequestHistoryRequest
}

// Send marshals and sends the DescribeSpotFleetRequestHistory API request.
func (r DescribeSpotFleetRequestHistoryRequest) Send(ctx context.Context) (*DescribeSpotFleetRequestHistoryResponse, error) {
	r.Request.SetContext(ctx)
	err := r.Request.Send()
	if err != nil {
		return nil, err
	}

	resp := &DescribeSpotFleetRequestHistoryResponse{
		DescribeSpotFleetRequestHistoryOutput: r.Request.Data.(*DescribeSpotFleetRequestHistoryOutput),
		response:                              &aws.Response{Request: r.Request},
	}

	return resp, nil
}

// DescribeSpotFleetRequestHistoryResponse is the response type for the
// DescribeSpotFleetRequestHistory API operation.
type DescribeSpotFleetRequestHistoryResponse struct {
	*DescribeSpotFleetRequestHistoryOutput

	response *aws.Response
}

// SDKResponseMetdata returns the response metadata for the
// DescribeSpotFleetRequestHistory request.
func (r *DescribeSpotFleetRequestHistoryResponse) SDKResponseMetdata() *aws.Response {
	return r.response
}
