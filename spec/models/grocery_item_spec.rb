require 'spec_helper'

describe GroceryItem do
  
  
  it 'should test some silly thing that will pass' do
    @groceryitem = GroceryItem.new(:name => 'The Title')
    @groceryitem.should be_valid
  end

  it 'should test some silly thing that will fail' do
    @groceryitem = GroceryItem.new
    @groceryitem.should be_valid
  end

  
end
