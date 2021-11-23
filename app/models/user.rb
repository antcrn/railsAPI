class User < ApplicationRecord
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable, :rememberable, :validatable,
         jwt_revocation_strategy: JwtDenylist         
  has_many :articles
end