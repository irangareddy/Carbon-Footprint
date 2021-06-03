
//: [Back to  Game](@previous)
/*:
 
# Calculate your Carbon Footprint

Calculating your carbon footprint can help you identify ways to reduce your impact on the environment. Calculating your carbon footprint requires taking lots of different factors into account. You may not be able to get an exact figure to represent your carbon footprint, but you can get a close estimate. You can calculate some things, like your water usage and waste, using points, while others, like the impact of your car and utilities, in tons of CO2 emissions.

Run the playground!

 
>:
The text under the Question helps you understand the context more easily.
 
 

 
 
## Page Tech Stack
- Handling Trivia Logic
- Conditional Based Views
- Using new Color Picker in SwiftUI
- Repetitive Animations
- Custom Progress Ring
:*/


import PlaygroundSupport
import SwiftUI

struct CalculatorView_Preview: View {
    var body: some View {
        VStack {
           CalculatorView()
                .frame(width: 600, height: 800, alignment: .center).padding(30)
        }
  }
}

let viewController = UIHostingController(rootView: CalculatorView_Preview())


PlaygroundPage.current.liveView = viewController

    
/*:
 - Important:
    - The footprint you have seen in the result view is custom shape in SwiftUI
 
 
 - Note:
    -   Don't worry if your Carbon Footprint is high.
    - Offsetting Footprint is nothing but Reduces Carbon Emissions.
 
:*/

//: Let's us see some Strategies to [Offset](@next)
