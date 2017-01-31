# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class SMARTCOSMOSProfilesClient
    # Singleton access to data_import_endpoints controller
    # @return [DataImportEndpointsController] Returns the controller instance
    def data_import_endpoints
      DataImportEndpointsController.instance
    end

    # Singleton access to tag_data_endpoints controller
    # @return [TagDataEndpointsController] Returns the controller instance
    def tag_data_endpoints
      TagDataEndpointsController.instance
    end

    # Singleton access to tag_delivery_network_endpoints controller
    # @return [TagDeliveryNetworkEndpointsController] Returns the controller instance
    def tag_delivery_network_endpoints
      TagDeliveryNetworkEndpointsController.instance
    end

    # Singleton access to transaction_endpoints controller
    # @return [TransactionEndpointsController] Returns the controller instance
    def transaction_endpoints
      TransactionEndpointsController.instance
    end

    # Singleton access to tag_authentication_endpoints controller
    # @return [TagAuthenticationEndpointsController] Returns the controller instance
    def tag_authentication_endpoints
      TagAuthenticationEndpointsController.instance
    end

    # Singleton access to tag_verification_endpoints controller
    # @return [TagVerificationEndpointsController] Returns the controller instance
    def tag_verification_endpoints
      TagVerificationEndpointsController.instance
    end

    # Singleton access to platform_availability_endpoints controller
    # @return [PlatformAvailabilityEndpointsController] Returns the controller instance
    def platform_availability_endpoints
      PlatformAvailabilityEndpointsController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(basic_auth_user_name: nil, basic_auth_password: nil)
      Configuration.basic_auth_user_name = basic_auth_user_name if basic_auth_user_name
      Configuration.basic_auth_password = basic_auth_password if basic_auth_password
    end
  end
end
