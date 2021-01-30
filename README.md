## Pipeline
It is used to create VM and Notify the actions on slack channel

## Providers

| Name | Version |
|------|---------|
| google | n/a |
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| image\_name | image\_name of description | `string` | n/a | yes |
| machine\_type | machine type of instance | `string` | n/a | yes |
| network | Name of the network, use null if creating on shared vpc | `any` | n/a | yes |
| server\_name | name of instance | `string` | n/a | yes |
| subnetwork | Enter the particular subnet in the vpc | `string` | `""` | no |
| subnetwork\_project | Project ID where subnetwork belong, optional on host vpc, required if shared vpc | `any` | `null` | no |
| zone | zone of instance | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| instance\_ids | n/a |
