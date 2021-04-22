package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestBasicSuccess(t *testing.T) {
	t.Parallel()

	monitors := []map[string]interface{}{
		{
			"friendly_name": "test-url",
			"url":           "https://google.com",
		},
	}
	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "uptimerobot-monitor-basic",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"monitors": monitors,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
	outputMonitors := terraform.Output(t, terraformOptions, "instance")
	outputIDs := terraform.OutputList(t, terraformOptions, "ids")
	assert.NotEmpty(t, outputMonitors, outputMonitors)
	assert.NotEmpty(t, outputIDs, outputIDs)
}
