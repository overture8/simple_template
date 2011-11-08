require File.dirname(__FILE__) + '/spec_helper'

describe SimpleTemplate do
  it "must parse and replace placeholder with matching variable value" do
    output = SimpleTemplate::Renderer.parse("Hello %{name}", { :name => 'Phil' })
    output.must_equal "Hello Phil"
  end

  it "must parse multiple placeholders with their variable counterparts" do
    output = SimpleTemplate::Renderer.parse("This gem is called %{gem_name} and is developed by %{company}", 
                                            { :gem_name => 'simple_template', :company => 'Rumble Labs' })
    output.must_equal "This gem is called simple_template and is developed by Rumble Labs"
  end
end
