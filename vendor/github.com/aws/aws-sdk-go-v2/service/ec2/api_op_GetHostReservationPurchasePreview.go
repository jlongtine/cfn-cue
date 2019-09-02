// Code generated by private/model/cli/gen-api/main.go. DO NOT EDIT.

package ec2

import (
	"context"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/internal/awsutil"
)

// Please also see https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetHostReservationPurchasePreviewRequest
type GetHostReservationPurchasePreviewInput struct {
	_ struct{} `type:"structure"`

	// The IDs of the Dedicated Hosts with which the reservation is associated.
	//
	// HostIdSet is a required field
	HostIdSet []string `locationNameList:"item" type:"list" required:"true"`

	// The offering ID of the reservation.
	//
	// OfferingId is a required field
	OfferingId *string `type:"string" required:"true"`
}

// String returns the string representation
func (s GetHostReservationPurchasePreviewInput) String() string {
	return awsutil.Prettify(s)
}

// Validate inspects the fields of the type to determine if they are valid.
func (s *GetHostReservationPurchasePreviewInput) Validate() error {
	invalidParams := aws.ErrInvalidParams{Context: "GetHostReservationPurchasePreviewInput"}

	if s.HostIdSet == nil {
		invalidParams.Add(aws.NewErrParamRequired("HostIdSet"))
	}

	if s.OfferingId == nil {
		invalidParams.Add(aws.NewErrParamRequired("OfferingId"))
	}

	if invalidParams.Len() > 0 {
		return invalidParams
	}
	return nil
}

// Please also see https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetHostReservationPurchasePreviewResult
type GetHostReservationPurchasePreviewOutput struct {
	_ struct{} `type:"structure"`

	// The currency in which the totalUpfrontPrice and totalHourlyPrice amounts
	// are specified. At this time, the only supported currency is USD.
	CurrencyCode CurrencyCodeValues `locationName:"currencyCode" type:"string" enum:"true"`

	// The purchase information of the Dedicated Host reservation and the Dedicated
	// Hosts associated with it.
	Purchase []Purchase `locationName:"purchase" locationNameList:"item" type:"list"`

	// The potential total hourly price of the reservation per hour.
	TotalHourlyPrice *string `locationName:"totalHourlyPrice" type:"string"`

	// The potential total upfront price. This is billed immediately.
	TotalUpfrontPrice *string `locationName:"totalUpfrontPrice" type:"string"`
}

// String returns the string representation
func (s GetHostReservationPurchasePreviewOutput) String() string {
	return awsutil.Prettify(s)
}

const opGetHostReservationPurchasePreview = "GetHostReservationPurchasePreview"

// GetHostReservationPurchasePreviewRequest returns a request value for making API operation for
// Amazon Elastic Compute Cloud.
//
// Preview a reservation purchase with configurations that match those of your
// Dedicated Host. You must have active Dedicated Hosts in your account before
// you purchase a reservation.
//
// This is a preview of the PurchaseHostReservation action and does not result
// in the offering being purchased.
//
//    // Example sending a request using GetHostReservationPurchasePreviewRequest.
//    req := client.GetHostReservationPurchasePreviewRequest(params)
//    resp, err := req.Send(context.TODO())
//    if err == nil {
//        fmt.Println(resp)
//    }
//
// Please also see https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetHostReservationPurchasePreview
func (c *Client) GetHostReservationPurchasePreviewRequest(input *GetHostReservationPurchasePreviewInput) GetHostReservationPurchasePreviewRequest {
	op := &aws.Operation{
		Name:       opGetHostReservationPurchasePreview,
		HTTPMethod: "POST",
		HTTPPath:   "/",
	}

	if input == nil {
		input = &GetHostReservationPurchasePreviewInput{}
	}

	req := c.newRequest(op, input, &GetHostReservationPurchasePreviewOutput{})
	return GetHostReservationPurchasePreviewRequest{Request: req, Input: input, Copy: c.GetHostReservationPurchasePreviewRequest}
}

// GetHostReservationPurchasePreviewRequest is the request type for the
// GetHostReservationPurchasePreview API operation.
type GetHostReservationPurchasePreviewRequest struct {
	*aws.Request
	Input *GetHostReservationPurchasePreviewInput
	Copy  func(*GetHostReservationPurchasePreviewInput) GetHostReservationPurchasePreviewRequest
}

// Send marshals and sends the GetHostReservationPurchasePreview API request.
func (r GetHostReservationPurchasePreviewRequest) Send(ctx context.Context) (*GetHostReservationPurchasePreviewResponse, error) {
	r.Request.SetContext(ctx)
	err := r.Request.Send()
	if err != nil {
		return nil, err
	}

	resp := &GetHostReservationPurchasePreviewResponse{
		GetHostReservationPurchasePreviewOutput: r.Request.Data.(*GetHostReservationPurchasePreviewOutput),
		response:                                &aws.Response{Request: r.Request},
	}

	return resp, nil
}

// GetHostReservationPurchasePreviewResponse is the response type for the
// GetHostReservationPurchasePreview API operation.
type GetHostReservationPurchasePreviewResponse struct {
	*GetHostReservationPurchasePreviewOutput

	response *aws.Response
}

// SDKResponseMetdata returns the response metadata for the
// GetHostReservationPurchasePreview request.
func (r *GetHostReservationPurchasePreviewResponse) SDKResponseMetdata() *aws.Response {
	return r.response
}
