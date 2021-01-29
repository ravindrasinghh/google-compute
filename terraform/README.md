# Pipeline

This repo is to proviosion the VM and install the docker image into it.

## How To
```
Environment
{
server_name = "__"
machine_type = "__"
zone = "__"
network = "__"
subnetwork = "__"
image_name = "__"
}
```
Change the content of terraform.tfvars.json for adding users.

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
| 
