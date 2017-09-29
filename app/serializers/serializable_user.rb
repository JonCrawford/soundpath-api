# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableUser < JSONAPI::Serializable::Resource
  type :users
  
  attribute :name
  attribute :email
  attribute :id
end
