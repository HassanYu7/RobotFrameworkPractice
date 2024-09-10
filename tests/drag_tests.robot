*** Settings ***
Resource    ../resources/appium_config.robot
Resource    ../pages/drag_page.robot
Library     AppiumLibrary

*** Test Cases ***
Test Drag And Drop Functionality
    [Documentation]    This test case validates the drag-and-drop functionality.

    Open Appium Application
    Navigate to Drag Page
    Perform Drag and Drop
    Close Application


