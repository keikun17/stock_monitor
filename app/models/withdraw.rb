class Withdraw < ActiveRecord::Base
  belongs_to :stock

  delegate :product, to: :stock, prefix: false
end

# == Schema Information
#
# Table name: withdraws
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
