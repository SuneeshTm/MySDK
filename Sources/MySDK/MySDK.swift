import SwiftUI

// Pure SwiftUI approach - no UIKit needed
public struct SDKGreetingView: View {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public var body: some View {
        Text("Hello, \(name)!")
            .font(.system(size: 18, weight: .bold))
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.teal)
            )
    }
}