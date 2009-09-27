require File.join(File.dirname(__FILE__), "..", "spec_helper")

describe Redcar::MenuItem do
  class DummyCommand; end
  
  before do
    @menu_item = Redcar::MenuItem.new("File", DummyCommand)
  end

  it "has text" do
    @menu_item.text.should == "File"
  end

  it "has a command" do
    @menu_item.command.should == DummyCommand
  end
end
