import Foundation
import SwiftUI
import PlaygroundSupport

public struct IColors {
    static let background: Color = Color(#colorLiteral(red: 0.9490196078, green: 0.9647058824, blue: 1, alpha: 1))
    static let cardColor: Color = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    static let shadowColor: Color = Color(#colorLiteral(red: 0.2156862745, green: 0.3294117647, blue: 0.6666666667, alpha: 1))
    
}



public struct IsometricView: View {
        @State private var bouncing = false
    public init() {}

    public var body: some View {
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Group {
                        Group {
                            ZStack(alignment: .topLeading) {
                                RoundedRectangle(cornerRadius: 40)
                                    .foregroundColor(IColors.shadowColor.opacity(0.2))
                                    .frame(width: 300, height: 300, alignment: .center)

                                RoundedRectangle(cornerRadius: 40)
                                    .foregroundColor(IColors.cardColor)
                                    .frame(width: 280, height: 280, alignment: .center)
                                    .offset(x: -10.0, y: -10.0)
                                    .blur(radius: 20.0)
                            }
                        }
                        .rotationEffect(Angle.init(degrees: 45))
                        .scaleEffect(y: 0.5)
                    }
                    .shadow(color: IColors.shadowColor.opacity(0.1), radius: 15, x: 0, y: 100)
                    .offset(y: bouncing ? 15 : -15)
                    .animation(
                        Animation
                            .easeInOut(duration: 2.0)
                            .repeatForever(autoreverses: true)
                    )
                    Spacer()
                }
                Spacer()
            }
            .background(IColors.background.edgesIgnoringSafeArea(.all))
            .onAppear {
                self.bouncing.toggle()
            }
        }
    }
