require 'rails_helper'

RSpec.describe "products/new", :type => :view do
  before(:each) do
    assign(:product, Product.new(
      :product_id => 1,
      :name => "MyString",
      :description => "MyString",
      :del_flag => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_product_id[name=?]", "product[product_id]"

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_description[name=?]", "product[description]"

      assert_select "input#product_del_flag[name=?]", "product[del_flag]"
    end
  end
end
