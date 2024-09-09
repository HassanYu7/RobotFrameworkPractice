*** Variables ***
${LOGIN_PAGE}                        //android.view.View[@content-desc="Login"]
${SIGNUP_LAYOUT}                     //android.widget.TextView[@text="Sign up"]
${EMAIL_FIELD}                       accessibility_id=input-email
${PASSWORD_FIELD}                    accessibility_id=input-password
${CONFIRM_PASSWORD_FIELD}            accessibility_id=input-repeat-password
${SIGNUP_BUTTON}                       //android.view.ViewGroup[@content-desc="button-SIGN UP"]/android.view.ViewGroup
${MESSAGE_SUCCESS}                    //android.widget.TextView[@resource-id="android:id/message"]
${MESSAGE_EMAIL_INVALID}              //android.widget.TextView[@text="Please enter a valid email address"]
${MESSAGE_PASSWORD_INVALID}           //android.widget.TextView[@text="Please enter at least 8 characters"]
${MESSAGE_CONFIRM_PASSWORD_INVALID}   //android.widget.TextView[@text="Please enter the same password"]

# You successfully signed up!



