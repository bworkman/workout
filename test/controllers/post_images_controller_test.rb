require 'test_helper'

class PostImagesControllerTest < ActionController::TestCase
  setup do
    @post_image = post_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_image" do
    assert_difference('PostImage.count') do
      post :create, params: { post_image: { image_id: @post_image.image_id, post_id: @post_image.post_id } }
    end

    assert_redirected_to post_image_path(PostImage.last)
  end

  test "should show post_image" do
    get :show, params: { id: @post_image }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @post_image }
    assert_response :success
  end

  test "should update post_image" do
    patch :update, params: { id: @post_image, post_image: { image_id: @post_image.image_id, post_id: @post_image.post_id } }
    assert_redirected_to post_image_path(@post_image)
  end

  test "should destroy post_image" do
    assert_difference('PostImage.count', -1) do
      delete :destroy, params: { id: @post_image }
    end

    assert_redirected_to post_images_path
  end
end
