# Copyright (C) 2012-2022 Zammad Foundation, https://zammad-foundation.org/

require 'rails_helper'

RSpec.describe 'Profile > Out of Office', type: :system do
  context 'when logged in as a customer', authenticated_as: :user do
    let(:user) { create(:customer) }

    before do
      visit 'profile/language'
      click_on 'Appearance'
    end

    it 'can change appearance' do
      within :active_content do
        find('span', text: 'Dark').click

        value = execute_script('return document.documentElement.dataset.theme')
        expect(value).to eq 'dark'
      end
    end
  end
end
