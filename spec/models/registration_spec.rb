require 'rails_helper'

RSpec.describe Registration, type: :model do

  describe '.new' do
    it 'instantiates a Registration object' do
      r = Registration.new
      expect(r.is_a?(Registration)).to be true
      expect(r.attributes.keys.count).to eql(9)
    end
  end

end
