require "application_system_test_case"

class MovieCharactersTest < ApplicationSystemTestCase
  setup do
    @movie_character = movie_characters(:one)
  end

  test "visiting the index" do
    visit movie_characters_url
    assert_selector "h1", text: "Movie Characters"
  end

  test "creating a Movie character" do
    visit movie_characters_url
    click_on "New Movie Character"

    fill_in "Character", with: @movie_character.character_id
    fill_in "Movie", with: @movie_character.movie_id
    click_on "Create Movie character"

    assert_text "Movie character was successfully created"
    click_on "Back"
  end

  test "updating a Movie character" do
    visit movie_characters_url
    click_on "Edit", match: :first

    fill_in "Character", with: @movie_character.character_id
    fill_in "Movie", with: @movie_character.movie_id
    click_on "Update Movie character"

    assert_text "Movie character was successfully updated"
    click_on "Back"
  end

  test "destroying a Movie character" do
    visit movie_characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movie character was successfully destroyed"
  end
end
