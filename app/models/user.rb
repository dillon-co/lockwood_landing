# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string           not null
#  last_name              :string           not null
#  suffix                 :integer
#  age_range              :integer          not null
#  country                :string           not null
#  subscribed             :boolean
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum suffix: {
       "" => 0,
       "Jr" => 1,
       "MS" => 2,
       "PhD" => 3,
       "MD" => 4,
       "PharmD" => 5,
       "JD" => 6
  }

  enum age_range: {
    "Less than 20" => 0,
    "20 – 29" => 1,
    "30 – 39" => 2,
    "40 – 49" => 3,
    "50 – 59" => 4,
    "60 – 69" => 5,
    "70 or greater" => 6
  }
end
