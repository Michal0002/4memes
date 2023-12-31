# == Schema Information
#
# Table name: memes
#
#  id         :integer          not null, primary key
#  title      :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class MemeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
