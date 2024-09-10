*** Settings ***
Resource    ../locators/drag_page_locators.robot
Library     AppiumLibrary


*** Keywords ***

Navigate to Drag Page
    [Documentation]    Navigate to the Login Page.
    Wait Until Element Is Visible    ${DRAG_PAGE}
    Click Element    ${DRAG_PAGE}

Perform Drag and Drop
    [Documentation]    This keyword performs drag-and-drop operations for multiple elements with waits to ensure visibility before interacting.

    # Wait and drag first element
    Wait Until Element Is Visible    ${DRAG_1}    10s
    Wait Until Element Is Visible    ${DROP_1}    10s
    Drag And Drop    ${DRAG_1}    ${DROP_1}

    # Wait and drag second element
    Wait Until Element Is Visible    ${DRAG_2}    10s
    Wait Until Element Is Visible    ${DROP_2}    10s
    Drag And Drop    ${DRAG_2}    ${DROP_2}

    # Wait and drag third element
    Wait Until Element Is Visible    ${DRAG_3}    10s
    Wait Until Element Is Visible    ${DROP_3}    10s
    Drag And Drop    ${DRAG_3}    ${DROP_3}

    # Wait and drag fourth element
    Wait Until Element Is Visible    ${DRAG_4}    10s
    Wait Until Element Is Visible    ${DROP_4}    10s
    Drag And Drop    ${DRAG_4}    ${DROP_4}

    # Wait and drag fifth element
    Wait Until Element Is Visible    ${DRAG_5}    10s
    Wait Until Element Is Visible    ${DROP_5}    10s
    Drag And Drop    ${DRAG_5}    ${DROP_5}

    # Wait and drag sixth element
    Wait Until Element Is Visible    ${DRAG_6}    10s
    Wait Until Element Is Visible    ${DROP_6}    10s
    Drag And Drop    ${DRAG_6}    ${DROP_6}


