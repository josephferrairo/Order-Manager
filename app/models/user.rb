class User < ActiveRecord::Base
  has_many :customers
  has_many :work_instructions
  has_many :procedures
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
