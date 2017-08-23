# == Schema Information
#
# Table name: word_corpuses
#
#  id          :integer          not null, primary key
#  word_id     :integer
#  location    :string
#  description :text
#  image_src   :string
#  segments    :json
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe WordCorpus, type: :model do
  describe 'associations' do
    it 'belongs_to word' do
      word = described_class.reflect_on_association(:word)
      expect(word.macro).to eq :belongs_to
    end
  end
end
