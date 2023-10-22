import UIKit

extension UIView {
    
    func translate() {
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setCardShadow() {
        layer.shadowColor = UIColor(
            red: 0,
            green: 0,
            blue: 0,
            alpha: 0.1
        ).cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 8
        layer.shouldRasterize = true
        layer.masksToBounds = false
        layer.rasterizationScale = UIScreen.main.scale
    }
    
    
    func constraints(view: UIView) {
        translate()
        NSLayoutConstraint.activate([
            topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor
            ),
            leadingAnchor.constraint(
                equalTo: view.leadingAnchor
            ),
            trailingAnchor.constraint(
                equalTo: view.trailingAnchor
            ),
            bottomAnchor.constraint(
                equalTo: view.bottomAnchor
            ),
        ])
    }
}
