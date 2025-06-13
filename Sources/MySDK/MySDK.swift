import Foundation

#if canImport(UIKit)
import UIKit

public class GreetingView: UIView {
    
    private let label = UILabel()
    private var currentName: String
    
    public init(name: String) {
        self.currentName = name
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        self.currentName = ""
        super.init(coder: coder)
        setupUI()
    }

    private func setupUI() {
        backgroundColor = .systemTeal
        layer.cornerRadius = 12
        
        label.text = "Hello, \(currentName)!"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
    }
    
    // This method was missing in your original SDK
    public func updateName(_ name: String) {
        currentName = name
        label.text = "Hello, \(name)!"
    }
}

#endif
