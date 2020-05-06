require 'test_helper'

class QuestionBankControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get question_bank_index_url
    assert_response :success
  end

end
