

*** Variables ***
${LOGIN_PAGE}            xpath=//android.view.View[@content-desc="Login"]
${EMAIL_FIELD}           accessibility_id=input-email
${PASSWORD_FIELD}        accessibility_id=input-password
${LOGIN_BUTTON}          xpath=//android.widget.TextView[@text="LOGIN"]
${MESSAGE}               xpath=//android.widget.TextView[@resource-id="android:id/message"]
${EMAIL_INVALID}         xpath=//android.widget.TextView[@text="Please enter a valid email address"]
${PASSWORD_INVALID}      xpath=//android.widget.TextView[@text="Please enter at least 8 characters"]

# You are logged in!


