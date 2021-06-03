
//: [Back to Awareness](@previous)
/*:
 
 # The Easiest Way
 
 The easiest way is you have the power to plant as many tresses 🌳 as you want, that is by playing a game. 👻

 ## Game Rules

 
 **You have a total of three lives**
 
 ➡️ Plant Tree 🌲 - You get 100 points/hit
 
 ➡️ Carbon Hit 💣 - You lose one life/hit
 
 ➡️ Recycle Life ♻️ - You lose one life/hit

 *Run playground to start the game!*
 


 #### Page Tech Stack
 
- Handling Game Development in **SwiftUI**
- Core Game Logic Implementaion
- Play Audio Files on Synchronous using **AVKit**
 
 >You can enable life in the Game Preview View
  
 >
    status = false
 Run Playground
:*/
import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    @State var status = false
    var body: some View {
        VStack {
            Game(enableRecycle: self._status)
        }
    .frame(width: 600, height: 800, alignment: .center)
    }
}

PlaygroundPage.current.setLiveView(ContentView())
/*:
 
 Hope you have planted many tress and saved Earth. 🌏  It's time to calculate your Carbon Footprint.
 
 :*/
//: [Carbon Footprint Calculator](@next)
