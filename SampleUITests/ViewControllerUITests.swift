import XCTest

class ViewControllerUITests: XCTestCase {
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testCorrectEmailAndPassword() {
        let login = LoginView()

        login.fillInEmail("suzy@email.com")
        login.fillInPassword("123456")
        login.tapButton()

        XCTAssert(login.alertHasText("Usuário logado!"))

        login.tapAlertButton()
    }

    func testInvalidEmailAndPassword() {
        let login = LoginView()

        login.fillInEmail("user@email.com")
        login.fillInPassword("123456")
        login.tapButton()

         XCTAssert(login.alertHasText("Usuário inválido!"))

        login.tapAlertButton()
    }
}
