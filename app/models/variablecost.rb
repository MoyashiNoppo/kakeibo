class Variablecost < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :Genrevariable

  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}
end
