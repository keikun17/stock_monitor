class Deposit < ActiveRecord::Base
  belongs_to :stock
end

# == Schema Information
#
# Table name: deposits
#
#  id           :integer          not null, primary key
#  quantity     :float
#  unit         :string
#  date_ordered :datetime
#  arrival_date :datetime
#  remarks      :text
#  stock_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
