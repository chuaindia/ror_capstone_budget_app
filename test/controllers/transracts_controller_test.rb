require 'test_helper'

class TransractsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get transracts_index_url
    assert_response :success
  end
end
