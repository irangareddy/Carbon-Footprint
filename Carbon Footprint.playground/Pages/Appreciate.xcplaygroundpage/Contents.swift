//: [Previous](@previous)
/*:
# Time to Appreciate

People in the world who had a concern about Climate Change are significantly less. Some of those people created awareness around their surroundings.
Not only people but also companies like Apple, Tata Group, Tata, Reliance, Mahindra, ITC, Microsoft are voluntary pledging for going Carbon Neutral.

Run Playground to see some of the people who made me realize the urgency of the action on climate change.

 - Note:
    - Find people by clicking the top right button
    - Know about them by a hit
    - You find both people and compies

 - Important:You can able rotate Earth 360

## Page Tech Stack
- Using SceneKit in SwiftUI
- Pulse Animation
- Handling Conditional
- Ways to reduce stacks
:*/


import PlaygroundSupport
import SwiftUI

// Make a SwiftUI view
struct ContentView: View {
    init() {
        
    }
    
    var body: some View {
        VStack {
            PulseView()
                .frame(width: 600, height: 700, alignment: .center).padding(30)
        }
  }
}

let viewController = UIHostingController(rootView: ContentView())


PlaygroundPage.current.liveView = viewController
/*:
 
 *What you do makes a difference, and you have to decide what kind of difference you want to make.* -Dr. Jane Goodall, Scientist & Activist

#### Thank you!
 
 
 - Note:
    - Below Ignoring message is a Auto generated
 */
