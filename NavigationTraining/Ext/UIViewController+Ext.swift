import UIKit

extension UIViewController {
    func createUIButton(_ title: String) -> UIButton {
        let uiButton = UIButton()
        uiButton.configuration = .filled()
        uiButton.configuration?.title = title
        uiButton.configuration?.baseForegroundColor = .white
        uiButton.configuration?.baseBackgroundColor = .black
        return uiButton
    }
}
