//: [Back to  Calculator](@previous)
/*:
 
 # Offset your Carbon Emission

 Carbon Offset activity (such as planting trees or carbon sequestration) compensates for the emission of carbon dioxide or other greenhouse gases.  There are many strategies to Offset your carbon footprint, but here we are considering five strategies to Offset.

 Run playground!

- Note:
    - Select Strategie to Offset
    - Tap on them to know how?
 


 ## Tech Stack
 
- Using TabView in SwiftUI
-  Handling fullscreen sheets with Animation
-  Building and Animating Custom Shapes in SwiftUI

 - Important: To view full-fledged custom shapes in SwiftUI, select strategies and hit save at the end.
 
 */
import SwiftUI
import PlaygroundSupport


import PlaygroundSupport
import SwiftUI

struct Offset_Preview: View {
    var body: some View {
            StratedyView().frame(width:  500, height:  800, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 16.0))
                .padding(30)
                .background(RoundedRectangle(cornerRadius: 16.0).foregroundColor(Color(#colorLiteral(red: 0.3882352941, green: 0.8, blue: 0.5098039216, alpha: 1))))
                .padding(30)
  }
}

let viewController = UIHostingController(rootView: Offset_Preview())


PlaygroundPage.current.liveView = viewController

/*:
 
 - Important:
    -   To whole Flowers and leafs are custom shapes in SwiftUI
    - ♻️ Thanks for going Carbon Neutral.
:*/
//: One last step [Appreciation](@next)
