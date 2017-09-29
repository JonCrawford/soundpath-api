# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableEvent < JSONAPI::Serializable::Resource
  type :events

  # Add attributes here to ensure they get rendered, .e.g.
  #
  # attribute :name
  #
  # To customize, pass a block and reference the underlying @object
  # being serialized:
  #
  # attribute :name do
  #   @object.name.upcase
  # end

  attribute :datetime do
    @object.datetime.to_i.to_s
  end

  attribute :id
  attribute :notes
  attribute :user_id
end
