terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"

    }
  }
}

###
# Description:  
#
#
# Note:  Currently we only allow a two email domain routes per Genesys Cloud organization.  You can contact CARE for an additional email route.  This
# command will fail if there is already have two email routes present.
###

resource "genesyscloud_routing_email_domain" "skyluxemaildomain" {
  domain_id = var.genesys_email_domain
  subdomain = true
}
