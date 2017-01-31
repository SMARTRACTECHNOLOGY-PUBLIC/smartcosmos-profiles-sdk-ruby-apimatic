# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class TagDeliveryNetworkEndpointsController < BaseController
    @@instance = TagDeliveryNetworkEndpointsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # **DRAFT** - Under development
    # Get TDN data for a tag. The TDN data is proprietary and needs the SMART COSMOS TDN client
    # service on the REST client for decoding. The endpoint will report "404 Not found" for all
    # tags with no TDN data attached (so it is not possible to probe the Profiles instance for 
    # no-TDN tag IDs without authorization).
    # ### Notes
    #  - Public endpoint (no authorization needed)
    #  - If a secure endpoint is needed, it is possible to disable this endpoint and use GetTagValue with "TDN" as appId instead.
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate
    # the actual result.
    # - **200 OK** valid TDN tag ID
    # - **404 NOT_FOUND** invalid tag ID (tag not available or no TDN data attached)
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - value (string, `54646E50726F707269657461727944617461`) ... TDN data (AsciiHex encoded)
    # @param [String] tag_id Required parameter: Example: 
    # @return GetTagDeliveryNetworkDataResponseModel response from the API call
    def get_tag_delivery_network_data(tag_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/tdn/{tagId}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'tagId' => tag_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 404
        raise APIException.new '', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetTagDeliveryNetworkDataResponseModel.from_hash(decoded)
    end
  end
end
