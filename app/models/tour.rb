# require 'elasticsearch/model'

class Tour < ApplicationRecord
  belongs_to :country
  #  include Elasticsearch::Model
  #  include Elasticsearch::Model::Callbacks
end
