# frozen_string_literal: true

class PlaceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
end
