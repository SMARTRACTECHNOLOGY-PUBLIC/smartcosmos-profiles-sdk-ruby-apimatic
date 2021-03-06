# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class BaseModel
    # Returns a Hash representation of the current object
    def to_hash
      hash = {}
      self.instance_variables.each do |name|
        value = self.instance_variable_get(name)
        name = name[1..-1]
        key = self.class.names.key?(name) ? self.class.names[name] : name
        if value.instance_of? Array
          hash[key] = value.map{|v| v.kind_of?(BaseModel) ? v.to_hash : v}
        elsif value.instance_of? Hash
          hash[key] = {}
          value.each do |k, v|
            hash[key][k] = v.kind_of?(BaseModel) ? v.to_hash : v
          end
        else
          hash[key] = value.kind_of?(BaseModel) ? value.to_hash : value
        end
      end
      hash
    end

    # Returns a JSON representation of the curent object
    def to_json(options = {})
      hash = to_hash
      hash.to_json(options)
    end

    # Use to allow additional model properties
    def method_missing(method_sym, *arguments, &block)
      method = method_sym.to_s
      if method.end_with? '='
        instance_variable_set("@%s" % [method.chomp('=')], arguments.first)
      elsif instance_variable_defined?("@#{method}") && arguments.empty?
        instance_variable_get("@#{method}")
      else
        super
      end
    end

    # Override for additional model properties
    def respond_to?(method_sym, include_private=false)
      instance_variable_defined?("@#{method_sym}") ? true : super
    end
  end
end