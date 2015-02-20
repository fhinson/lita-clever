require 'spec_helper'

describe Lita::Handlers::Clever, lita_handler: true do
  it {is_expected.to route_command("test").to(:test) }

  describe 'test' do
    it "replies to a 'test' command" do
      send_command('test')
      expect(replies.last).to be_kind_of(String)
    end
  end
end
