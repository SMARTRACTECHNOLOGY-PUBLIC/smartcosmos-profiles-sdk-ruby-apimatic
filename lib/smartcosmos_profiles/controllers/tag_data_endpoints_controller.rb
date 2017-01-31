# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class TagDataEndpointsController < BaseController
    @@instance = TagDataEndpointsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** specified tag was found, result available
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # - **401 UNAUTHORIZED** user not authorized
    # ### Input HTTP Headers:
    # - HTTP Basic Authorization (as specified above)
    # ### Input parameters
    # - tagId (required, string, `E12345678912345678`) ... a single RFID tag identifier
    # - nameLike (optional, string, `chip`) ... Comparison string for metadata properties
    # ### Output parameters
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - tagId the requested `tagID`
    # - properties an array of JSON objects, each of which contains property ID, property name, property data type, and a flag indicating whether the property exists for the tag.
    # @param [String] tag_id Required parameter: Example: 
    # @param [String] name_like Optional parameter: Example: 
    # @return GetTagMetadataDefinitionResponseModel response from the API call
    def get_tag_metadata_definition(tag_id, 
                                    name_like = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/properties/definition/{tagId}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'tagId' => tag_id
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'nameLike' => name_like
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
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 401
        raise APIException.new '', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetTagMetadataDefinitionResponseModel.from_hash(decoded)
    end

    # Look up an array of the first **count** tag IDs with the specified batch URN.
    # ### Output parameters
    # - tagIds (array of string, `E12345678912345678`) ... Array of RFID tag identifiers
    # @param [String] batch_urn Required parameter: Case-sensitive batch URN
    # @param [Integer] count Optional parameter: Maximum number of tag IDs to return; defaults to 100000; maximum is 1000000
    # @return QueryTagsResponseModel response from the API call
    def get_query_tags(batch_urn, 
                       count = 100000)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/queryTags'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'batchUrn' => batch_urn,
        'count' => count
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
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 401
        raise APIException.new '', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return QueryTagsResponseModel.from_hash(decoded)
    end

    # Get a message to a single numeric tag code.
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** message available
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # - **401 UNAUTHORIZED** user not authorized
    # ### Input HTTP Headers:
    # - HTTP Basic Authorization (as specified above)
    # - Accept language (as specified above)
    # ### Input parameters:
    # - tagCode (required, number, `0`) ... Result code of a tag action
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - message (string, `verified`) ... Result message in `Accept-Language` (see `Multi language support`)
    # @param [GetSingleTagCodeMessageRequestModel] body Required parameter: Example: 
    # @return GetSingleTagCodeMessageResponseModel response from the API call
    def create_get_single_tag_code_message(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/message'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 401
        raise APIException.new '', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSingleTagCodeMessageResponseModel.from_hash(decoded)
    end

    # Writes application data to tags, which updated the existing application data in Profiles. This
    # function also supports setting the lock state of the application data, which prevents further
    # changes of the application data.
    # Writing application data to a tag is permitted under following conditions only:
    # - The tag with the given tagId must exist in Profiles
    # - The tag must have an application record with the given appId
    # - The lock state of the tag's application data must be present and explicitly set to **false**
    # - To insert a new application record, the data transaction endpoint shall be used
    # **Notes:**
    # - Omitting **value** in the request will update the lock state of the tag only.
    # - Omitting **locked** in the request will write the value only.
    # - It is not possible to unlock a locked tag by setting **locked** to **false**.
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** tags found and result available (also returned if only a subset of tags have this keys)
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # - **401 UNAUTHORIZED** user not authorized
    # - **404 NOT_FOUND** no matching tags found or none the tags found do have app IDs with given name
    # ### Input HTTP Headers:
    # - HTTP Basic Authorization (as specified above)
    # - Accept language (as specified above)
    # ### Input parameters:
    # - appId (required, string, `ndef`) ... Application ID which references the data
    # - tagId (required, string, `0EEEE100000001`) ... Identifier for each tag to be updated
    # - value (optional, string, `AQIDBAUGBwgJCgsM`) ... Application data to be updated
    # - locked (optional, boolean, `true`) ... Lock flag to be set
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - tagId (string, `0EEEE100000001`) ... Tag ID
    # - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `Possible result codes for a tag actions`)
    # @param [UpdateTagValuesRequestModel] body Required parameter: Example: 
    # @return UpdateTagValuesResponseModel response from the API call
    def update_tag_values(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/value'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.put _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 401
        raise APIException.new '', _context
      elsif _context.response.status_code == 404
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return UpdateTagValuesResponseModel.from_hash(decoded)
    end

    # Get application data from tags, which returns data encoded on the tags. This function also returns
    # the lock state of the application data.
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** tags found and result available (also returned if only a subset of tags have this keys)
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # - **401 UNAUTHORIZED** user not authorized
    # - **404 NOT_FOUND** no matching tags found or none the tags found does have keys with given name
    # ### Input HTTP Headers:
    # - HTTP Basic Authorization (as specified above)
    # - Accept language (as specified above)
    # ### Input parameters:
    # - tagIds (required, string, `0EEEE100000001`) ... Identifier for each tag to be queried
    # - appId (required, string, `ndef`) ... Application ID which references the data
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - tagId (string, `0EEEE100000001`) ... Tag ID
    # - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `Possible result codes for a tag actions`)
    # - value (string, `AQIDBAUGBwgJCgsM`) ... Application data (Base64 encoded)
    # - locked (boolean, `false`) ... Tag has been made read-only
    # @param [GetApplicationDataFromTagsRequestModel] body Required parameter: Example: 
    # @return GetApplicationDataFromTagsResponseModel response from the API call
    def create_get_application_data_from_tags(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/value'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 401
        raise APIException.new '', _context
      elsif _context.response.status_code == 404
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetApplicationDataFromTagsResponseModel.from_hash(decoded)
    end

    # Look up an array of the first **count** batchUrns with the specified customer PO.
    # **NOTE: Only one customerPO can be specified.**
    # ### Output parameters
    # - batchUrns (array of string, `urn:uuid:smartrac-group:batch:99990001`) ... Array of batch URNs
    # @param [String] customer_po Required parameter: Case-sensitive customerPO
    # @param [Integer] count Optional parameter: Maximum number of batch URNs to return; defaults to 100000; maximum is 1000000
    # @return QueryBatchesResponseModel response from the API call
    def get_query_batches(customer_po, 
                          count = 100000)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/queryBatches'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'customerPO' => customer_po,
        'count' => count
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
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 401
        raise APIException.new '', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return QueryBatchesResponseModel.from_hash(decoded)
    end

    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** minimum 1 tag found and result available
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # - **401 UNAUTHORIZED** user not authorized
    # ### Input HTTP Headers:
    # - HTTP Basic Authorization (as specified above)
    # ### Input parameters
    # - tagIds (required, array of string, `E12345678912345678`) ... Array of RFID tag identifiers; max 1000 entries allowed
    # - verificationTypes (optional, array of string, `RR`) ... Array of verification types
    # - properties (optional, array of string, `plantId,batchId`) ... Array of requested properties
    # <!--
    # - materialPerformance (optional, array of string, `air,carton`) ... Array of requested material performance data
    # -->
    # ### Available tag properties
    # Property ID | Data Type | Description | Availability
    # ------------ | ------------- | ------------ | ------------
    # custId | String | Customer ID | available
    # orderId | String | Order ID | available
    # orderDate | Long | Order date | available
    # orderQty | Number | Order quantity | available
    # orderQtyU | String | Order quantity unit | available
    # customerPO | String | Customer purchase order number | available
    # customerName | String | Customer name | available
    # supplPO | String | Supplier purchase order number | available
    # delivId | String | Delivery ID | available
    # delivDate | Long | Delivery date | available
    # delivQty | Number | Delivery quantity | available
    # delivQtyU | String | Delivery quantity unit | available
    # batchId | String | Roll number / batch ID | available
    # yield | Number | Batch yield [%] | available
    # subRoll | String | Sub roll number / sub batch ID | available
    # plantId | String | Manufacturer production side ID | available
    # chipManuf | String | Chip manufacturer | available
    # chipModel | String | Chip model | available
    # inlayType | String | Inlay type | available
    # inlayManufDate | Long | Inlay manufacturer date | available
    # attenuation | Number | Attenuation in dB | available
    # checkState | Number | 0=failed; 1=passed (default) | available
    # Notes:
    #  - Only available properties can be requested (check `Availability` column above)
    #  - Same data is not available for all tags/batches
    #  - There are additional properties planned in the future
    # ### Output parameters
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - tagId according the requested `tagIds`
    # - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `result codes for a tag actions`)
    # - verificationState according the requested `verificationTypes`
    # - properties according the requested `properties`
    # @param [GetTagMetadataRequestModel] body Required parameter: Example: 
    # @return GetTagMetadataResponseModel response from the API call
    def create_get_tag_metadata(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/properties'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 401
        raise APIException.new '', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetTagMetadataResponseModel.from_hash(decoded)
    end

    # Get authentication keys for encoded tags, which can be used to access the tag memory. The key names,
    # content and access rules need to be defined when ordering the tags.
    # It is possible to have several applications with their corresponding keys on a tag.
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** tags found and result available (also returned if only a subset of tags have this keys)
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # - **401 UNAUTHORIZED** user not authorized
    # - **404 NOT_FOUND** no matching tags found or none the tags found does have keys with given name
    # ### Input HTTP Headers:
    # - HTTP Basic Authorization (as specified above)
    # - Accept language (as specified above)
    # ### Input parameters:
    # - tagIds (required, string, `0EEEE100000001`) ... Identifier for each tag to be queried
    # - appId (required, string, `SC Public Transport`) ... Application ID which references the key
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - tagId (string, `0EEEE100000001`) ... Tag ID
    # - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `Possible result codes for a tag actions`)
    # - key (string, `0102030405060708090A0B0C`) ... Key blob (AsciiHex encoded key)
    # @param [GetKeysUsedForTagAuthenticationRequestModel] body Required parameter: Example: 
    # @return GetKeysUsedForTagAuthenticationResponseModel response from the API call
    def create_get_keys_used_for_tag_authentication(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/key'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 401
        raise APIException.new '', _context
      elsif _context.response.status_code == 404
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetKeysUsedForTagAuthenticationResponseModel.from_hash(decoded)
    end
  end
end
