@javascript
Feature: Show - Tabs

  Add tabs with different content to the page

  Scenario: Set a method to be called on the resource as the title
    Given a post with the title "Hello World" written by "Jane Doe" exists

    And a configuration of:
    """
      ActiveAdmin.register Post do
        show do
          tabs do
            tab :overview do
              span "tab 1"
            end

            tab 'ใในใ', id: :test_non_ascii do
              span "tab 2"
            end

            tab '๐ค' do
              span "tab 3"
            end
          end
        end
      end
    """

    And I am logged in
    And I am on the post's show page

    Then I should see tabs:
    | Tab title |
    | Overview  |
    | ใในใ     |
    | ๐ค        |
    And I should see tab content "tab 1"
    And I should not see tab content "tab 2"
    And I should not see tab content "tab 3"

    When I follow "ใในใ"
    Then I should not see tab content "tab 1"
    And I should see tab content "tab 2"
    And I should not see tab content "tab 3"

    When I follow "๐ค"
    Then I should not see tab content "tab 1"
    And I should not see tab content "tab 2"
    And I should see tab content "tab 3"
