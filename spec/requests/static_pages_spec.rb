require 'rails_helper'

describe 'StaticPages', type: :request do
  let(:base_title) { 'クソリプブロッカー' }
  subject { page }

  describe 'GET /static_pages' do
    before { visit root_path }

    describe 'Home page' do
      it { should have_title("#{base_title}") }
      it { should have_content('Sample App') }
      it { should_not have_title('| Home') }
    end

    describe 'Help page' do
      before { visit help_path }

      it { should have_content('Help') }
      it { should have_title("#{base_title} | Help") }
    end

    describe 'About page' do
      before { visit about_path }

      it { should have_content('About us') }
      it { should have_title("#{base_title} | About") }
    end

    describe 'Contact page' do
      before { visit contact_path }

      it { should have_content('Contact') }
      it { should have_title("#{base_title} | Contact") }
    end
  end
end
