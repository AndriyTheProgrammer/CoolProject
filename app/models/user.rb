class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :developer
  has_one :customer

  accepts_nested_attributes_for :customer
  accepts_nested_attributes_for :developer

  enum role: %w(Customer Developer)
end
