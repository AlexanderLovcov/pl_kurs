# require 'elasticsearch/model'

class Tour < ApplicationRecord
  belongs_to :country
  mount_uploader :image, TourImageUploader
  #  include Elasticsearch::Model
  #  include Elasticsearch::Model::Callbacks
end
