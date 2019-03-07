require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product attributes must not be empty" do
    product = Product.new(title: products(:ruby).title,
                          description: 'hukbuk jbuk bubkub ubuyguy',
                          price: 1,
                          image_url: 'huuk.jpeg')
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end
end
