class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :timeoutable, :omniauthable

  ATTRIBUTES = %i[
    display_name sex_id last_name first_name usage_type_id corp_name
    zip prefecture_id address_1 address_2 phone
  ].freeze

  def password_required?
    super if confirmed?
  end
end
