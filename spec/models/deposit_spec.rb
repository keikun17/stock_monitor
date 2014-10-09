require 'rails_helper'

RSpec.describe Deposit, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
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
