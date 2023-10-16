require "test_helper"
require "application_system_test_case"

  require "test_helper"

class LineItemDateTest < ActiveSupport::TestCase
  include ActionView::Helpers::NumberHelper
  test "#previous_date returns the quote's previous date when it exitsts" do
    assert_equal line_item_dates(:today), line_item_dates(:next_week).previous_date
  end

  test "#previous_date returns nil when the quote has no previous date" do
    assert_nil line_item_dates(:today).previous_date
  end

  test "Destroying a line item date" do
    # All the previous code
    assert_text number_to_currency(@quote.total_price)
  end
end
