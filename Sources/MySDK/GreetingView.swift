import SwiftUI

public struct GreetingView: View {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.teal)
            
            Text("Hello, \(name)!")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.white)
        }
    }
}
