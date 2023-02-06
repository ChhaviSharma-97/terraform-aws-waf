module "owasp_top_10" {
  source = "../../"
  product_domain                 = "ttn"
  service_name                   = "ttnwaf"
  environment                    = "staging"
  description                    = "OWASP Top 10 rules for ttnwaf"
  target_scope                   = "global"
  create_rule_group              = "true"
  max_expected_uri_size          = "512"
  max_expected_query_string_size = "1024"
  max_expected_body_size         = "4096"
  max_expected_cookie_size       = "4093"
  csrf_expected_header           = "x-csrf-token"
  csrf_expected_size             = "36"
}


