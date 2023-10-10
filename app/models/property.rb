# == Schema Information
#
# Table name: properties
#
#  id               :bigint           not null, primary key
#  user_id          :bigint           not null
#  type_offer_id    :bigint           not null
#  type_property_id :bigint           not null
#  area             :integer
#  description      :text
#  price            :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Property < ApplicationRecord
  belongs_to :user
  belongs_to :type_offer
  belongs_to :type_property
end

