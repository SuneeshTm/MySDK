import SwiftUI

public struct GreetingView: View {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public var body: some View {
        Text("Hello, \(name)!")
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.teal)
            .cornerRadius(12)
    }
}
