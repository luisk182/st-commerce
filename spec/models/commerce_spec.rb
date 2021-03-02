require 'rails_helper'

RSpec.describe Commerce, type: :model do
  it { should validate_presence_of(:name) }
end
