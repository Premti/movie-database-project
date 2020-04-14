require 'test_helper'

class MovieCharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_character = movie_characters(:one)
  end

  test "should get index" do
    get movie_characters_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_character_url
    assert_response :success
  end

  test "should create movie_character" do
    assert_difference('MovieCharacter.count') do
      post movie_characters_url, params: { movie_character: { character_id: @movie_character.character_id, movie_id: @movie_character.movie_id } }
    end

    assert_redirected_to movie_character_url(MovieCharacter.last)
  end

  test "should show movie_character" do
    get movie_character_url(@movie_character)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_character_url(@movie_character)
    assert_response :success
  end

  test "should update movie_character" do
    patch movie_character_url(@movie_character), params: { movie_character: { character_id: @movie_character.character_id, movie_id: @movie_character.movie_id } }
    assert_redirected_to movie_character_url(@movie_character)
  end

  test "should destroy movie_character" do
    assert_difference('MovieCharacter.count', -1) do
      delete movie_character_url(@movie_character)
    end

    assert_redirected_to movie_characters_url
  end
end
