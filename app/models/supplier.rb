class Supplier < ApplicationRecord

  validates :name,                 presence: true
  validates :image,                presence: true
  validates :street,               presence: true
  validates :rooms,                numericality: { only_integer: true }
  validates :conference_capacity,  numericality: true
  validates :distance_airport,     numericality: true
  validates :distance_city,        numericality: true
  validates :distance_highway,     numericality: true
  validates :distance_train,       numericality: true
  validates :feedback,             presence: true, numericality: true
  validates :latitude,             presence: true, numericality: true
  validates :longitude,            presence: true, numericality: true
end
