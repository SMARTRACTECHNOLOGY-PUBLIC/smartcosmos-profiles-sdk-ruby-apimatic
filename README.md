# Getting started

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build smartcosmos_profiles.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install smartcosmos_profiles-2.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=SMART%20COSMOS%20Profiles-Ruby&workspaceName=SMART%20COSMOS%20Profiles-Ruby&projectName=smartcosmos_profiles&gemName=smartcosmos_profiles&gemVer=2.0.0)

## How to Use

The following section explains how to use the SMARTCOSMOSProfiles Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=SMART%20COSMOS%20Profiles-Ruby&workspaceName=SMARTCOSMOSProfiles&projectName=smartcosmos_profiles&gemName=smartcosmos_profiles&gemVer=2.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=SMART%20COSMOS%20Profiles-Ruby&workspaceName=SMARTCOSMOSProfiles&projectName=smartcosmos_profiles&gemName=smartcosmos_profiles&gemVer=2.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=SMART%20COSMOS%20Profiles-Ruby&workspaceName=SMARTCOSMOSProfiles&projectName=smartcosmos_profiles&gemName=smartcosmos_profiles&gemVer=2.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the SMARTCOSMOSProfiles gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'smartcosmos_profiles', '~> 2.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=SMART%20COSMOS%20Profiles-Ruby&workspaceName=SMARTCOSMOSProfiles&projectName=smartcosmos_profiles&gemName=smartcosmos_profiles&gemVer=2.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=SMART%20COSMOS%20Profiles-Ruby&workspaceName=SMARTCOSMOSProfiles&projectName=smartcosmos_profiles&gemName=smartcosmos_profiles&gemVer=2.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=SMART%20COSMOS%20Profiles-Ruby&workspaceName=SMARTCOSMOSProfiles&projectName=smartcosmos_profiles&gemName=smartcosmos_profiles&gemVer=2.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=SMART%20COSMOS%20Profiles-Ruby&workspaceName=SMARTCOSMOSProfiles&projectName=smartcosmos_profiles&gemName=smartcosmos_profiles&gemVer=2.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=SMART%20COSMOS%20Profiles-Ruby&workspaceName=SMARTCOSMOSProfiles&projectName=smartcosmos_profiles&gemName=smartcosmos_profiles&gemVer=2.0.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| basic_auth_user_name | The username to use with basic authentication |
| basic_auth_password | The password to use with basic authentication |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
basic_auth_user_name = "basic_auth_user_name"; # The username to use with basic authentication
basic_auth_password = "basic_auth_password"; # The password to use with basic authentication

client = SmartcosmosProfiles::SMARTCOSMOSProfilesClient.new(basic_auth_user_name, basic_auth_password)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=SMART%20COSMOS%20Profiles-Ruby&workspaceName=SMARTCOSMOSProfiles&projectName=smartcosmos_profiles&gemName=smartcosmos_profiles&gemVer=2.0.0&initLine=client%2520%253D%2520SMARTCOSMOSProfilesClient.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)

## Class Reference

### <a name="list_of_controllers"></a>List of Controllers

* [DataImportEndpointsController](#data_import_endpoints_controller)
* [TagDataEndpointsController](#tag_data_endpoints_controller)
* [TagDeliveryNetworkEndpointsController](#tag_delivery_network_endpoints_controller)
* [TransactionEndpointsController](#transaction_endpoints_controller)
* [TagAuthenticationEndpointsController](#tag_authentication_endpoints_controller)
* [TagVerificationEndpointsController](#tag_verification_endpoints_controller)
* [PlatformAvailabilityEndpointsController](#platform_availability_endpoints_controller)

### <a name="data_import_endpoints_controller"></a>![Class: ](https://apidocs.io/img/class.png ".DataImportEndpointsController") DataImportEndpointsController

#### Get singleton instance

The singleton instance of the ``` DataImportEndpointsController ``` class can be accessed from the API Client.

```ruby
dataImportEndpoints = client.data_import_endpoints
```

#### <a name="create_file_transmission_receipt"></a>![Method: ](https://apidocs.io/img/method.png ".DataImportEndpointsController.create_file_transmission_receipt") create_file_transmission_receipt

> TODO: Add a method description


```ruby
def create_file_transmission_receipt(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = FileTransmissionReceiptRequestModel.new

dataImportEndpoints.create_file_transmission_receipt(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



#### <a name="update_file_transmission_request"></a>![Method: ](https://apidocs.io/img/method.png ".DataImportEndpointsController.update_file_transmission_request") update_file_transmission_request

> TODO: Add a method description


```ruby
def update_file_transmission_request(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = FileTransmissionRequestRequestModel.new

result = dataImportEndpoints.update_file_transmission_request(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

### <a name="tag_data_endpoints_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TagDataEndpointsController") TagDataEndpointsController

#### Get singleton instance

The singleton instance of the ``` TagDataEndpointsController ``` class can be accessed from the API Client.

```ruby
tagDataEndpoints = client.tag_data_endpoints
```

#### <a name="get_tag_metadata_definition"></a>![Method: ](https://apidocs.io/img/method.png ".TagDataEndpointsController.get_tag_metadata_definition") get_tag_metadata_definition

> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** specified tag was found, result available
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> - **401 UNAUTHORIZED** user not authorized
> ### Input HTTP Headers:
> - HTTP Basic Authorization (as specified above)
> ### Input parameters
> - tagId (required, string, `E12345678912345678`) ... a single RFID tag identifier
> - nameLike (optional, string, `chip`) ... Comparison string for metadata properties
> ### Output parameters
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - tagId the requested `tagID`
> - properties an array of JSON objects, each of which contains property ID, property name, property data type, and a flag indicating whether the property exists for the tag.


```ruby
def get_tag_metadata_definition(tag_id, 
                                    name_like = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| tag_id |  ``` Required ```  | TODO: Add a parameter description |
| name_like |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
tag_id = 'tagId'
name_like = 'nameLike'

result = tagDataEndpoints.get_tag_metadata_definition(tag_id, name_like)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



#### <a name="get_query_tags"></a>![Method: ](https://apidocs.io/img/method.png ".TagDataEndpointsController.get_query_tags") get_query_tags

> Look up an array of the first **count** tag IDs with the specified batch URN.
> ### Output parameters
> - tagIds (array of string, `E12345678912345678`) ... Array of RFID tag identifiers


```ruby
def get_query_tags(batch_urn, 
                       count = 100000); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| batch_urn |  ``` Required ```  | Case-sensitive batch URN |
| count |  ``` Optional ```  ``` DefaultValue ```  | Maximum number of tag IDs to return; defaults to 100000; maximum is 1000000 |


#### Example Usage

```ruby
batch_urn = 'batchUrn'
count = 100000

result = tagDataEndpoints.get_query_tags(batch_urn, count)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



#### <a name="create_get_single_tag_code_message"></a>![Method: ](https://apidocs.io/img/method.png ".TagDataEndpointsController.create_get_single_tag_code_message") create_get_single_tag_code_message

> Get a message to a single numeric tag code.
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** message available
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> - **401 UNAUTHORIZED** user not authorized
> ### Input HTTP Headers:
> - HTTP Basic Authorization (as specified above)
> - Accept language (as specified above)
> ### Input parameters:
> - tagCode (required, number, `0`) ... Result code of a tag action
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - message (string, `verified`) ... Result message in `Accept-Language` (see `Multi language support`)


```ruby
def create_get_single_tag_code_message(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = GetSingleTagCodeMessageRequestModel.new

result = tagDataEndpoints.create_get_single_tag_code_message(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



#### <a name="update_tag_values"></a>![Method: ](https://apidocs.io/img/method.png ".TagDataEndpointsController.update_tag_values") update_tag_values

> Writes application data to tags, which updated the existing application data in Profiles. This
> function also supports setting the lock state of the application data, which prevents further
> changes of the application data.
> Writing application data to a tag is permitted under following conditions only:
> - The tag with the given tagId must exist in Profiles
> - The tag must have an application record with the given appId
> - The lock state of the tag's application data must be present and explicitly set to **false**
> - To insert a new application record, the data transaction endpoint shall be used
> **Notes:**
> - Omitting **value** in the request will update the lock state of the tag only.
> - Omitting **locked** in the request will write the value only.
> - It is not possible to unlock a locked tag by setting **locked** to **false**.
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** tags found and result available (also returned if only a subset of tags have this keys)
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> - **401 UNAUTHORIZED** user not authorized
> - **404 NOT_FOUND** no matching tags found or none the tags found do have app IDs with given name
> ### Input HTTP Headers:
> - HTTP Basic Authorization (as specified above)
> - Accept language (as specified above)
> ### Input parameters:
> - appId (required, string, `ndef`) ... Application ID which references the data
> - tagId (required, string, `0EEEE100000001`) ... Identifier for each tag to be updated
> - value (optional, string, `AQIDBAUGBwgJCgsM`) ... Application data to be updated
> - locked (optional, boolean, `true`) ... Lock flag to be set
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - tagId (string, `0EEEE100000001`) ... Tag ID
> - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `Possible result codes for a tag actions`)


```ruby
def update_tag_values(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = UpdateTagValuesRequestModel.new

result = tagDataEndpoints.update_tag_values(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |
| 404 | Unexpected error in API call. See HTTP response body for details. |



#### <a name="create_get_application_data_from_tags"></a>![Method: ](https://apidocs.io/img/method.png ".TagDataEndpointsController.create_get_application_data_from_tags") create_get_application_data_from_tags

> Get application data from tags, which returns data encoded on the tags. This function also returns
> the lock state of the application data.
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** tags found and result available (also returned if only a subset of tags have this keys)
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> - **401 UNAUTHORIZED** user not authorized
> - **404 NOT_FOUND** no matching tags found or none the tags found does have keys with given name
> ### Input HTTP Headers:
> - HTTP Basic Authorization (as specified above)
> - Accept language (as specified above)
> ### Input parameters:
> - tagIds (required, string, `0EEEE100000001`) ... Identifier for each tag to be queried
> - appId (required, string, `ndef`) ... Application ID which references the data
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - tagId (string, `0EEEE100000001`) ... Tag ID
> - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `Possible result codes for a tag actions`)
> - value (string, `AQIDBAUGBwgJCgsM`) ... Application data (Base64 encoded)
> - locked (boolean, `false`) ... Tag has been made read-only


```ruby
def create_get_application_data_from_tags(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = GetApplicationDataFromTagsRequestModel.new

result = tagDataEndpoints.create_get_application_data_from_tags(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |
| 404 | Unexpected error in API call. See HTTP response body for details. |



#### <a name="get_query_batches"></a>![Method: ](https://apidocs.io/img/method.png ".TagDataEndpointsController.get_query_batches") get_query_batches

> Look up an array of the first **count** batchUrns with the specified customer PO.
> **NOTE: Only one customerPO can be specified.**
> ### Output parameters
> - batchUrns (array of string, `urn:uuid:smartrac-group:batch:99990001`) ... Array of batch URNs


```ruby
def get_query_batches(customer_po, 
                          count = 100000); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_po |  ``` Required ```  | Case-sensitive customerPO |
| count |  ``` Optional ```  ``` DefaultValue ```  | Maximum number of batch URNs to return; defaults to 100000; maximum is 1000000 |


#### Example Usage

```ruby
customer_po = 'customerPO'
count = 100000

result = tagDataEndpoints.get_query_batches(customer_po, count)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



#### <a name="create_get_tag_metadata"></a>![Method: ](https://apidocs.io/img/method.png ".TagDataEndpointsController.create_get_tag_metadata") create_get_tag_metadata

> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** minimum 1 tag found and result available
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> - **401 UNAUTHORIZED** user not authorized
> ### Input HTTP Headers:
> - HTTP Basic Authorization (as specified above)
> ### Input parameters
> - tagIds (required, array of string, `E12345678912345678`) ... Array of RFID tag identifiers; max 1000 entries allowed
> - verificationTypes (optional, array of string, `RR`) ... Array of verification types
> - properties (optional, array of string, `plantId,batchId`) ... Array of requested properties
> <!--
> - materialPerformance (optional, array of string, `air,carton`) ... Array of requested material performance data
> -->
> ### Available tag properties
> Property ID | Data Type | Description | Availability
> ------------ | ------------- | ------------ | ------------
> custId | String | Customer ID | available
> orderId | String | Order ID | available
> orderDate | Long | Order date | available
> orderQty | Number | Order quantity | available
> orderQtyU | String | Order quantity unit | available
> customerPO | String | Customer purchase order number | available
> customerName | String | Customer name | available
> supplPO | String | Supplier purchase order number | available
> delivId | String | Delivery ID | available
> delivDate | Long | Delivery date | available
> delivQty | Number | Delivery quantity | available
> delivQtyU | String | Delivery quantity unit | available
> batchId | String | Roll number / batch ID | available
> yield | Number | Batch yield [%] | available
> subRoll | String | Sub roll number / sub batch ID | available
> plantId | String | Manufacturer production side ID | available
> chipManuf | String | Chip manufacturer | available
> chipModel | String | Chip model | available
> inlayType | String | Inlay type | available
> inlayManufDate | Long | Inlay manufacturer date | available
> attenuation | Number | Attenuation in dB | available
> checkState | Number | 0=failed; 1=passed (default) | available
> Notes:
>  - Only available properties can be requested (check `Availability` column above)
>  - Same data is not available for all tags/batches
>  - There are additional properties planned in the future
> ### Output parameters
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - tagId according the requested `tagIds`
> - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `result codes for a tag actions`)
> - verificationState according the requested `verificationTypes`
> - properties according the requested `properties`


```ruby
def create_get_tag_metadata(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = GetTagMetadataRequestModel.new

result = tagDataEndpoints.create_get_tag_metadata(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



#### <a name="create_get_keys_used_for_tag_authentication"></a>![Method: ](https://apidocs.io/img/method.png ".TagDataEndpointsController.create_get_keys_used_for_tag_authentication") create_get_keys_used_for_tag_authentication

> Get authentication keys for encoded tags, which can be used to access the tag memory. The key names,
> content and access rules need to be defined when ordering the tags.
> It is possible to have several applications with their corresponding keys on a tag.
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** tags found and result available (also returned if only a subset of tags have this keys)
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> - **401 UNAUTHORIZED** user not authorized
> - **404 NOT_FOUND** no matching tags found or none the tags found does have keys with given name
> ### Input HTTP Headers:
> - HTTP Basic Authorization (as specified above)
> - Accept language (as specified above)
> ### Input parameters:
> - tagIds (required, string, `0EEEE100000001`) ... Identifier for each tag to be queried
> - appId (required, string, `SC Public Transport`) ... Application ID which references the key
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - tagId (string, `0EEEE100000001`) ... Tag ID
> - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `Possible result codes for a tag actions`)
> - key (string, `0102030405060708090A0B0C`) ... Key blob (AsciiHex encoded key)


```ruby
def create_get_keys_used_for_tag_authentication(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = GetKeysUsedForTagAuthenticationRequestModel.new

result = tagDataEndpoints.create_get_keys_used_for_tag_authentication(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |
| 404 | Unexpected error in API call. See HTTP response body for details. |



[Back to List of Controllers](#list_of_controllers)

### <a name="tag_delivery_network_endpoints_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TagDeliveryNetworkEndpointsController") TagDeliveryNetworkEndpointsController

#### Get singleton instance

The singleton instance of the ``` TagDeliveryNetworkEndpointsController ``` class can be accessed from the API Client.

```ruby
tagDeliveryNetworkEndpoints = client.tag_delivery_network_endpoints
```

#### <a name="get_tag_delivery_network_data"></a>![Method: ](https://apidocs.io/img/method.png ".TagDeliveryNetworkEndpointsController.get_tag_delivery_network_data") get_tag_delivery_network_data

> **DRAFT** - Under development
> Get TDN data for a tag. The TDN data is proprietary and needs the SMART COSMOS TDN client
> service on the REST client for decoding. The endpoint will report "404 Not found" for all
> tags with no TDN data attached (so it is not possible to probe the Profiles instance for 
> no-TDN tag IDs without authorization).
> ### Notes
>  - Public endpoint (no authorization needed)
>  - If a secure endpoint is needed, it is possible to disable this endpoint and use GetTagValue with "TDN" as appId instead.
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate
> the actual result.
> - **200 OK** valid TDN tag ID
> - **404 NOT_FOUND** invalid tag ID (tag not available or no TDN data attached)
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - value (string, `54646E50726F707269657461727944617461`) ... TDN data (AsciiHex encoded)


```ruby
def get_tag_delivery_network_data(tag_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| tag_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
tag_id = 'tagId'

result = tagDeliveryNetworkEndpoints.get_tag_delivery_network_data(tag_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

### <a name="transaction_endpoints_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TransactionEndpointsController") TransactionEndpointsController

#### Get singleton instance

The singleton instance of the ``` TransactionEndpointsController ``` class can be accessed from the API Client.

```ruby
transactionEndpoints = client.transaction_endpoints
```

#### <a name="create_transactionally_insert_or_update_data_provided_in_request_message_body_into_the_datastore"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionEndpointsController.create_transactionally_insert_or_update_data_provided_in_request_message_body_into_the_datastore") create_transactionally_insert_or_update_data_provided_in_request_message_body_into_the_datastore

> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> ### Input parameters:
> - [[account, objects[], objectAddresses[], metadata[], relationships[], [...], ...]
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - message (string, `11e5d3f6-0c65-7791-917a-e95d5a282bcb`) ... System-generated Transaction ID, as used in all logging
> ### Input HTTP Headers:
> - HTTP Basic Authorization (as specified above)
> ### HTTP result codes
> This endpoint will respond with an appropriate HTTP status code to indicate the actual result
> - **200 SUCCESS** the insertion was successful. The UUID in the message string of the response body is system-generated transaction ID, which can be helpful for logging.
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information, including an approximate count of elements processed before the error occurred.
> - **401 UNAUTHORIZED** user not authorized


```ruby
def create_transactionally_insert_or_update_data_provided_in_request_message_body_into_the_datastore(body, 
                                                                                                         transaction_handler_name); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |
| transaction_handler_name |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = [TransactionallyInsertOrUpdateDataProvidedInRequestMessageBodyIntoTheDatastoreRequestModel.new]
transaction_handler_name = 'transactionHandlerName'

result = transactionEndpoints.create_transactionally_insert_or_update_data_provided_in_request_message_body_into_the_datastore(body, transaction_handler_name)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

### <a name="tag_authentication_endpoints_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TagAuthenticationEndpointsController") TagAuthenticationEndpointsController

#### Get singleton instance

The singleton instance of the ``` TagAuthenticationEndpointsController ``` class can be accessed from the API Client.

```ruby
tagAuthenticationEndpoints = client.tag_authentication_endpoints
```

#### <a name="create_get_otp_authentication_challenge"></a>![Method: ](https://apidocs.io/img/method.png ".TagAuthenticationEndpointsController.create_get_otp_authentication_challenge") create_get_otp_authentication_challenge

> OTP (One-Time Password) Authentication is performed in three steps:
>  1. Retrieve an authentication challenge for the given tag
>     in: tagId, appId
>     out: otpRequestId, otpVector
>  2. Calculate the OTP encryption result on the client
>  3. Send the OTP encryption result to the service
>     in: tagId, otpRequestId, otpResult
>     out: verification result
> Get an authentication challenge to authenticate a tag identified by its tag ID using an OTP init vector
> and a key. The authentication session is valid for 60 seconds.
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** tags found and result available (also returned if only a subset of tags have this keys)
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> - **401 UNAUTHORIZED** user not authorized
> - **404 NOT_FOUND** no matching tags found or none the tags found does support OTP authentication
> ### Input parameters:
> - tagId (required, string, `0EEEE100000001`) ... Identifier for the tag
> - appId (optional, string, `OTP`) ... Identifier for the requested application (used for multi application RFID tags)
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - message (string, `Verification successful`) ... Result message
> - tagId (string, `0EEEE100000001`) ... tag ID
> - otpRequestId (string, `urn:uuid:82b3a00c-e1b0-44cb-a50d-7705e1c6e2b4`) ... Identifier to track the authentication flow
> - otpVector (byte[], `MzMEOwsSAkYTBRUTPjpGJRIsLgE=`) ... Generated OTP init vector to calculate the OTP result


```ruby
def create_get_otp_authentication_challenge(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = GetOTPAuthenticationChallengeRequestModel.new

result = tagAuthenticationEndpoints.create_get_otp_authentication_challenge(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |
| 404 | Unexpected error in API call. See HTTP response body for details. |



#### <a name="create_verify_nxp_tag_signature"></a>![Method: ](https://apidocs.io/img/method.png ".TagAuthenticationEndpointsController.create_verify_nxp_tag_signature") create_verify_nxp_tag_signature

> Verify the signature of NXP NTAG, Mifare Ultralight EV1 or I-Code SLIX2 tags. The signature could be obtained
> from the NXP tag by issuing a READ_SIG command. To use the correct verification key, it is also
> required to submit the tag version, which could be acquired by issuing a GET_VERSION command.
> The signature is verified in Profiles by ECDSA using the public key from NXP.
> Following NXP chip types are supported:
> - NXP NTAG
> - NXP Mifare Ultralight EV1
> - NXP I-Code SLIX2
> ### Note on tagVersion
> - For NTAG and Ultralight it is required to provide the GET_VERSION response to locate the correct verification key
> - For I-Code the *tagVersion* could be ommitted, because the verification key is derived from the UID directly
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** signature valid
> - **400 BAD_REQUEST** signature invalid
> - **401 UNAUTHORIZED** user not authorized
> ### Input parameters:
> - tagId (required, string, `04001122334455`) ... NXP tag UID
> - tagVersion (optional, string, `0004040201000F03`) ... NXP GET_VERSION response
> - signature (required, string, `MTIzNDU2NzgxMjM0NTY3ODEyMzQ1Njc4MTIzNDU2Nzg=`) ... signature read from the chip (Base64 encoded)
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - message (string, `Verification successful`) ... Result message
> - tagId (string, `04001122334455`) ... NXP tag UID


```ruby
def create_verify_nxp_tag_signature(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = VerifyNXPTagSignatureRequestModel.new

result = tagAuthenticationEndpoints.create_verify_nxp_tag_signature(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



#### <a name="create_validate_otp_encryption_result"></a>![Method: ](https://apidocs.io/img/method.png ".TagAuthenticationEndpointsController.create_validate_otp_encryption_result") create_validate_otp_encryption_result

> Validate the OTP authentication attempt based on the OTP init vactor identified by UUID.
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** authentication successful
> - **400 BAD_REQUEST** authentication failed
> - **401 UNAUTHORIZED** user not authorized
> - **404 NOT_FOUND** invalid session or session expired
> ### Input parameters:
> - timestamp (required, long, `1430911319542`) ... UTC timestamp used by the client to calculate the OTP
> - otpRequestId (required, string, `urn:uuid:82b3a00c-e1b0-44cb-a50d-7705e1c6e2b4`) ... Server side generated id to track the authentication flow
> - otpResult (required, int, `123456`) ... Generated OTP from HMAC according to RFC 6238
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - message (string, `Verification successful`) ... Result message
> - tagId (string, `0EEEE100000001`) ... tag ID


```ruby
def create_validate_otp_encryption_result(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = ValidateOTPEncryptionResultRequestModel.new

result = tagAuthenticationEndpoints.create_validate_otp_encryption_result(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |
| 404 | Unexpected error in API call. See HTTP response body for details. |



[Back to List of Controllers](#list_of_controllers)

### <a name="tag_verification_endpoints_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TagVerificationEndpointsController") TagVerificationEndpointsController

#### Get singleton instance

The singleton instance of the ``` TagVerificationEndpointsController ``` class can be accessed from the API Client.

```ruby
tagVerificationEndpoints = client.tag_verification_endpoints
```

#### <a name="create_get_verification_state_message"></a>![Method: ](https://apidocs.io/img/method.png ".TagVerificationEndpointsController.create_get_verification_state_message") create_get_verification_state_message

> Get a message to a single verification state. Translate a numeric verification state into a human readable format. e.g. `0` into `verified`
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** tag found and result available
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> - **401 UNAUTHORIZED** user not authorized
> ### Input HTTP Headers:
> - HTTP Basic Authorization (as specified above)
> - Accept language (as specified above)
> ### Input parameters:
> - verificationType (required, string, `RR`) ... Identifier of the verification type
> - verificationState (required, number, `0`) ... State of the verification
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - message (string, `verified`) ... Result message in `Accept-Language` (see `Multi language support`)


```ruby
def create_get_verification_state_message(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = GetVerificationStateMessageRequestModel.new

result = tagVerificationEndpoints.create_get_verification_state_message(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



#### <a name="create_verify_tags_for_round_rock_compliance"></a>![Method: ](https://apidocs.io/img/method.png ".TagVerificationEndpointsController.create_verify_tags_for_round_rock_compliance") create_verify_tags_for_round_rock_compliance

> Verify tags for Round Rock compliance (verification type `RR`)
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** tag found and Round Rock compliance result available
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> ### Input parameters:
> - tagIds (required, array of string, `E12345678912345678`) ... Array of RFID tag identifiers; max 1000 entries allowed
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - tagId (string, `0EEEE100000001`) ... RFID tag identifiers
> - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `result codes for a tag actions`)
> - state (Number, `0`) ... Indicates the current RoundRock compliance state (1 = Round Rock licensed; 0 = Not RoundRock licensed)
> The output contains all desired tag records. Even if the tag is not available or the user does not have permissions. The `tagCode` indicates the result code for each tag.


```ruby
def create_verify_tags_for_round_rock_compliance(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = VerifyTagsForRoundRockComplianceRequestModel.new

result = tagVerificationEndpoints.create_verify_tags_for_round_rock_compliance(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |



#### <a name="create_verify_tags_for_a_verification_type"></a>![Method: ](https://apidocs.io/img/method.png ".TagVerificationEndpointsController.create_verify_tags_for_a_verification_type") create_verify_tags_for_a_verification_type

> Verify tags for a verification type, which is represented by an unique verification id like 'RR'
> ### Idempotent Behaviour
> This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
> - **200 OK** tag found and verification result available
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> - **401 UNAUTHORIZED** user not authorized
> ### Input HTTP Headers:
> - HTTP Basic Authorization (as specified above)
> ### Input parameters:
> - tagIds (required, array of string, `E12345678912345678`) ... Array of RFID tag identifiers; max 1000 entries allowed
> - verificationType (required, String, `RR`) ... Verification type
> ### Output parameters:
> - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
> - tagId (string, `0EEEE100000001`) ... RFID tag identifiers
> - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `Possible result codes for a tag actions`)
> - state (Number, `0`) ... Indicates the current verification state; Number depends on verification type; Use the message function to get a string message
> The output contains all desired tag records. Even if the tag is not available or the user does not have permissions. The `tagCode` indicates the result code for each tag.


```ruby
def create_verify_tags_for_a_verification_type(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = VerifyTagsForAVerificationTypeRequestModel.new

result = tagVerificationEndpoints.create_verify_tags_for_a_verification_type(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 401 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)

### <a name="platform_availability_endpoints_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PlatformAvailabilityEndpointsController") PlatformAvailabilityEndpointsController

#### Get singleton instance

The singleton instance of the ``` PlatformAvailabilityEndpointsController ``` class can be accessed from the API Client.

```ruby
platformAvailabilityEndpoints = client.platform_availability_endpoints
```

#### <a name="get_check_platform_availability"></a>![Method: ](https://apidocs.io/img/method.png ".PlatformAvailabilityEndpointsController.get_check_platform_availability") get_check_platform_availability

> Resource for checking the platform availability. 
> ### HTTP result codes
> This endpoint will respond with an appropriate HTTP status code to indicate the actual result
> - **204 NO_CONTENT** platform is available
> - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
> - **503 SERVICE_UNAVAILABLE** service is temporary unavailable (e.g. scheduled Platform Maintenance). Try again later.


```ruby
def get_check_platform_availability; end
```

#### Example Usage

```ruby

result = platformAvailabilityEndpoints.get_check_platform_availability()

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 503 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)



