require 'test_helper'

class TransractGroupsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get transract_groups_index_url
    assert_response :success
  end
end
