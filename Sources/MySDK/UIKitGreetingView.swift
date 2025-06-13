import Foundation

#if os(iOS)
import UIKit
import SwiftUI

public class UIKitGreetingView: UIView {
    private let label = UILabel()
    
    public init(name: String) {
        super.init(frame: .zero)
        setupView(with: name)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView(with: "")
    }
    
    private func setupView(with name: String) {
        backgroundColor = UIColor.systemTeal
        layer.cornerRadius = 12
        
        label.text = "Hello, \(name)!"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor, constant: 8),
            label.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor, constant: -8)
        ])
    }
    
    public func updateName(_ name: String) {
        label.text = "Hello, \(name)!"
    }
}

public struct UIKitGreetingViewRepresentable: UIViewRepresentable {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public func makeUIView(context: Context) -> UIKitGreetingView {
        return UIKitGreetingView(name: name)
    }
    
    public func updateUIView(_ uiView: UIKitGreetingView, context: Context) {
        uiView.updateName(name)
    }
}
#endif
