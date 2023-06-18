require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  test "creating a new category" do
    visit new_category_path

    fill_in "category_categoryName", with: "Test Category"
    click_on "Save"

    assert_text "Category was successfully created."
    assert_text "Test Category"
  end

  test "editing a category" do
    category = Category.create(categoryName: "Initial Category")

    visit edit_category_path(category)

    fill_in "category_categoryName", with: "Updated Category"
    click_on "Save"

    assert_text "Category was successfully updated."
    assert_text "Updated Category"
  end

  test "deleting a category" do
    category = Category.create(categoryName: "Category to Delete")
  
    visit category_path(category)
  
    page.evaluate_script('window.confirm = function() { return true; }')
  
    click_on "Destroy this category"
  
    assert_text "Category was successfully destroyed."
    assert_no_text category.categoryName
  end
  

  test "viewing category details" do
    category = Category.create(categoryName: "Category to View")

    visit category_path(category)

    assert_text "Category Name:"
    assert_text category.categoryName
  end

  test "viewing all categories" do
    categories = [
      Category.create(categoryName: "Category 1"),
      Category.create(categoryName: "Category 2"),
      Category.create(categoryName: "Category 3")
    ]

    visit categories_path

    categories.each do |category|
      assert_text category.categoryName
    end
  end
end
