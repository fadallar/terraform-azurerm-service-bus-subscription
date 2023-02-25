variable "environment" {
  description = "Environment name"
  type        = string
}

variable "stack" {
  description = "Stack name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group the resources will belong to"
  type        = string
}

variable "location" {
  description = "Azure location for Key Vault."
  type        = string
}

variable "location_short" {
  description = "Short string for Azure location."
  type        = string
}

variable "auto_delete_on_idle" {
  description = "The idle interval after which the topic is automatically deleted as an ISO 8601 duration. The minimum duration is 5 minutes or PT5M."
  type        = string
  default     = null
}

variable "default_message_ttl" {
  description = "The Default message timespan to live as an ISO 8601 duration. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself."
  type        = string
  default     = null
}

variable "lock_duration" {
  description = "The lock duration for the subscription as an ISO 8601 duration. The default value is 1 minute or P0DT0H1M0S . The maximum value is 5 minutes or P0DT0H5M0S ."
  type        = string
  default     = null
}

variable "dead_lettering_on_message_expiration" {
  description = "Boolean flag which controls whether the Subscription has dead letter support when a message expires."
  type        = bool
  default     = true
}

variable "dead_lettering_on_filter_evaluation_error" {
  description = "Boolean flag which controls whether the Subscription has dead letter support on filter evaluation exceptions. Defaults to true."
  type        = bool
  default     = true
}

variable "enable_batched_operations" {
  description = "Boolean flag which controls whether the Subscription supports batched operations."
  type        = bool
  default     = true
}

variable "requires_session" {
  description = "Boolean flag which controls whether this Subscription supports the concept of a session. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}

variable "forward_to" {
  description = "The name of a Queue or Topic to automatically forward messages to."
  type        = string
  default     = null
}

variable "forward_dead_lettered_messages_to" {
  description = "The name of a Queue or Topic to automatically forward Dead Letter messages to."
  type        = string
  default     = null
}

variable "status" {
  description = "The status of the Subscription. Possible values are Active,ReceiveDisabled, or Disabled. Defaults to Active."
  type        = string
  default     = "Active"
}

variable "client_scoped_subscription_enabled" {
  description = "Whether the subscription is scoped to a client id. Defaults to False."
  type        = bool
  default     = false
}

variable "client_scoped_subscription" {
  description = "A client_scoped_subscription block as defined below."
  type        = map(string)
  default     = null
}
