import XCTest

struct LoginView {
    let app = XCUIApplication()
    let alert = XCUIApplication().alerts["Login"]

    func fillInEmail(_ email: String) {
        let emailTextField = app.textFields["nameTextField"]
        emailTextField.tap()
        emailTextField.typeText(email)
    }

    func fillInPassword(_ password: String) {
        let passwordTextField = app.secureTextFields["passwordTextField"]
        passwordTextField.tap()
        passwordTextField.typeText(password)
    }

    func tapButton() {
        app.buttons["Login"].tap()
    }

    func tapAlertButton() {
        let loginAlert = app.alerts["Login"]
        loginAlert.buttons["OK"].tap()
    }

    func alertHasText(_ text: String) -> Bool {
        return alert.staticTexts[text].exists
    }
}
