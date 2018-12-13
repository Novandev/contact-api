class Contact < ApplicationRecord
  # # model association

  # validations
  #  validates_presence_of :title, :created_by
  validates_presence_of :name, :number, :user_id
end
