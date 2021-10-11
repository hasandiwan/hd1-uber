class Ride < ApplicationRecord
    validates :source_latitude, numericality: {in: -90..90, message: 'source_latitude out of range'}, on: :create
    validates :target_latitude, numericality: {in: -90..90, message: 'target_latitude out of range', on: :create}
    validates :source_longitude, numericality: {in: -180..180, message: 'source_longitude out of range'}, on: :create
    validates :target_longitude, numericality: {in: -180..180, message: 'target_longitude out of range'}, on: :create
end
