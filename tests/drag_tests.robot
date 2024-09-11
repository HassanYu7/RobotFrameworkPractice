*** Settings ***
Resource    ../resources/appium_config.robot
Resource    ../pages/drag_page.robot
Library     AppiumLibrary
Suite Setup   Open Appium Application
Suite Teardown   Close Application

*** Test Cases ***
Test Drag And Drop Functionality
    Navigate to Drag Page
    Perform Drag and Drop


