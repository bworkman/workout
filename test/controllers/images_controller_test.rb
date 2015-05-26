require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  setup do
    @image = images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image" do
    assert_difference('Image.count') do
      post :create, params: { image: { description: @image.description, post_images: @image.post_images } }
    end

    assert_redirected_to image_path(Image.last)
  end

  test "should show image" do
    get :show, params: { id: @image }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @image }
    assert_response :success
  end

  test "should update image" do
    patch :update, params: { id: @image, image: { description: @image.description, post_images: @image.post_images } }
    assert_redirected_to image_path(@image)
  end

  test "should destroy image" do
    assert_difference('Image.count', -1) do
      delete :destroy, params: { id: @image }
    end

    assert_redirected_to images_path
  end
end
