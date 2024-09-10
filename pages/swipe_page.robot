*** Settings ***
Library     AppiumLibrary
Library               Process


Resource    ../locators/swipe_page_locators.robot
*** Keywords ***

Navigate to Swipe Page
    Wait Until Element Is Visible    ${SWIPE_PAGE}
    Click Element    ${SWIPE_PAGE}


Swap to Specific Item
      [Arguments]               ${item}
      Wait Until Element Is Visible    ${item}
      ${element_size}=    Get Element Size    ${item}
      ${element_location}=    Get Element Location    ${item}
      ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
      ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
      ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
      ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
      Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500

