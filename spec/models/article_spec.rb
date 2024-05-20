require 'rails_helper'

RSpec.describe Article, type: :model do
  context "validations of presence" do
    it { should validate_presence_of(:de) }
  end

  context "validations of belongs to" do
    it { should belong_to :part_of_speech }
    it { should belong_to :gender }
    it { should belong_to :number }
    it { should belong_to :gcase }
  end
end
