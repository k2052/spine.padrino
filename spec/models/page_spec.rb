require 'spec_helper'

describe "Page Model" do
  let(:page) { Page.new }
  it 'can be created' do
    page.should_not be_nil
  end
end
