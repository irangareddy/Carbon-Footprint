import Foundation
import SwiftUI
import PlaygroundSupport
import SceneKit

// MARK:- DATA


public let gatesData = """

    BILL GATES


Gates is on a solo global lobbying campaign to press his species to accomplish something on a scale it has never attempted before. He wants human beings to invent their way out of the coming collision with planetary climate change, accelerating a transition to new forms of energy that might normally take a century or more. To head off a rise in average global temperatures of 2 degrees Celsius above preindustrial levels—the goal set by international agreement—Gates believes that by 2050, wealthy nations like China and the United States, the most prodigious belchers of greenhouse gases, must be adding no more carbon to the skies.

Those who study energy patterns say we are in a gradual transition from oil and coal to natural gas, a fuel that emits far less carbon but still contributes to global warming. Gates thinks that we can’t accept this outcome, and that our best chance to vault over natural gas to a globally applicable, carbon-free source of energy is to drive innovation “at an unnaturally high pace.”

When I sat down to hear his case a few weeks ago, he didn’t evince much patience for the argument that American politicians couldn’t agree even on whether climate change is real, much less on how to combat it. “If you’re not bringing math skills to the problem,” he said with a sort of amused asperity, “then representative democracy is a problem.” What follows is a condensed transcript of his remarks, lightly edited for clarity.

"""

public let appleData = """

➡️➡️ Apple’s Climate Roadmap

Apple’s 10-year roadmap will lower emissions with a series of innovative actions, including:

🌟 Low carbon product design: Apple will continue to increase the use of low carbon and recycled materials in its products, innovate in product recycling, and design products to be as energy efficient as possible.

🌟 Apple’s latest recycling innovation — a robot the company is calling “Dave” — disassembles the Taptic Engine from iPhone to better recover key materials such as rare earth magnets and tungsten while also enabling recovery of steel, the next step following its line of “Daisy” iPhone disassembly robots.

🌟 The company’s Material Recovery Lab in Austin, Texas, which is focused on innovative electronics recycling technology, is now partnering with Carnegie Mellon University to further develop engineering solutions.

🌟 All iPhone, iPad, Mac, and Apple Watch devices released in the past year are made with recycled content, including 100 percent recycled rare earth elements in the iPhone Taptic Engine — a first for Apple and for any smartphone.

🌟 Apple decreased its carbon footprint by 4.3 million metric tons in 2019 through design and recycled content innovations in its products. Over the past 11 years, Apple has reduced the average energy needed for product use by 73 percent.



Apple’s latest recycling invention — its Dave robot — recovers material from an iPhone component for better use in future products.

🌟 Expanding energy efficiency: Apple will identify new ways to lower energy use at its corporate facilities and help its supply chain make the same transition.

🌟 Through a new partnership with Apple, the US-China Green Fund will invest $100 million in accelerated energy efficiency projects for Apple’s suppliers.

🌟 The number of facilities participating in Apple’s Supplier Energy Efficiency Program grew to 92 in 2019; these facilities avoided over 779,000 annualised metric tons of supply chain carbon emissions.

🌟 Last year, Apple invested in energy efficiency upgrades to over 6.4 million square feet of new and existing buildings, lowering electricity needs by nearly one-fifth and saving the company $27 million.
 
🌟 A worker atop a wind turbine performs repairs hundreds of feet off the ground.

🌟 Through a first-of-its-kind investment fund, Apple and 10 of its suppliers in China are investing nearly $300 million to develop projects totalling 1 gigawatt of renewable energy.

🌟 Renewable energy: Apple will remain at 100 percent renewable energy for its operations — focusing on creating new projects and moving its entire supply chain to clean power.

🌟 Apple now has commitments from over 70 suppliers to use 100 percent renewable energy for Apple production — equivalent to nearly 8 gigawatts in commitments to power the manufacturing of its products. Once completed, these commitments will avoid over 14.3 million metric tons of CO2e annually — the equivalent of taking more than 3 million cars off the road each year.

Source: Apple
"""

public let tataData = """

    TATA GROUP


Tata Group is one of India’s largest and most diverse conglomerates, with annual revenues of over $110 billion. The group has more than 30 companies, employing over 700,000 people, operating in over 100 countries across a wide variety of sectors including steel, power, automobiles, chemicals, hospitality, consumer businesses, information and communication technology.

Commitments

🌟 Tata Power has a target of achieving 40% of its power generation through non fossil sources by 2025. It has also committed to stop building new coal-fired power plants going forward.

🌟 Tata Chemicals has a goal to make a 20% reduction in the carbon intensity of all its products by 2020 and is committed to setting a science-based target with the Science Based Targets initiative.

🌟 Tata Motors has a target to be 100% renewable by 2030 and 50% by 2022, with RE100.

🌟 Tata Steel has set an ambitious target to be the global benchmark for steel in terms of CO2 emissions – <2tCO2/tcs – by 2025.

🌟 Tata Housing has taken target to abate the carbon footprint of previous year by 10% year on year.

🌟 Tata Communication aims to be carbon neutral by 2022, including sourcing 100% renewable energy.

🌟 Tata Sons Limited is committed to improving water security, reporting climate change information and responsible corporate engagement in climate policy, through the We Mean Business coalition’s Take Action campaign.
"""

public let vandhanData = """
 
    VANDANA SHIVA,
        Director of the Foundation for Science, Technology & Ecology - Board Member International Forum on Globalization


Besides being a physicist, ecologist, activist, editor, and author of numerous books, Vandana Shiva is a tireless defender of the environment. She is the founder of Navdanya, a movement for biodiversity conservation and farmers’ rights. She is also the founder and director of the Research Foundation for Science, Technology and Natural Resource Policy. Shiva fights for changes in the practice and paradigms of agriculture and food: “I don't want to live in a world where five giant companies control our health and our food.”

Intellectual property rights, biodiversity, biotechnology, bioethics, and genetic engineering are among the fields where Shiva has contributed intellectually and through activist campaigns. During the 1970s, she participated in the nonviolent Chipko movement, whose main participants were women. She has assisted grassroots organizations of the Green movement in Africa, Asia, Latin America, Ireland, Switzerland, and Austria with campaigns against genetic engineering. Shiva has also served as an adviser to governments in India and abroad as well as non-governmental organizations, including the International Forum on Globalization, the Women's Environment and Development Organization, the Third World Network, and the Asia Pacific People’s Environment Network.

Her writings include Staying Alive, The Violence of the Green Revolution, Biopiracy: The Plunder of Nature and Knowledge, Monocultures of the Mind, Water Wars: Privatization, Pollution, and Profit, and Stolen Harvest: The Hijacking of the Global Food Supply, as well as over 300 papers in leading scientific and technical journals.

In 1993, she received the Right Livelihood Award, commonly known as the “Alternative Nobel Prize.” Other awards include the Order of the Golden Ark, Global 500 Award of the UN, Earth Day International Award, the Lennon Ono Grant for Peace, and the Sydney Peace Prize 2010.

In 2003, Time magazine identified Shiva as an “environmental hero,” and Asia Week has called her one of the five most powerful communicators of Asia.

"""

public let shivamSingh = """

Shivam Singh, is a young Climate Reality Leader with our India branch who is working to mobilize his community to take climate action on large scale. He has led workshops, marathons, cleanup drives, and more actions on a weekly and monthly basis.

Currently, Shivam is organizing an online competition, Youth4Earth, where he is asking the global youth community to take climate action from the safety of their own homes by sharing short videos about why they are serious about climate crisis. These videos and submissions can be in any medium – whether it’s creating art, singing, dancing, or taking a pledge – all to share the message of climate action around the world.

Along with taking climate action in his own community, Shivam has represented youth climate activists at the global UN Climate Change Summit, COP 21, and served as youth advisor for India’s Ministry of Environment, Forest and Climate Change (MoEFCC.)


"""

// MARK:- Models

public struct People: Identifiable {
    
    public var id = UUID()
    var image: String
    var name: String
    var data: String
    // Offset used in pulse
    var offset: CGSize = CGSize(width: 0, height: 0)
}

// MARK:- ModelsData

public var peoples = [
    
    People(image: "billgates.jpg", name: "Bill Gates", data: gatesData),
    People(image: "tata.png", name: "Tata Group", data: tataData),
    People(image: "apple.png", name: "Apple", data: appleData),
    People(image: "shivam.png", name: "Shivam", data: shivamSingh),
    People(image: "vandhana.jpg", name: "Vandhana", data: vandhanData),
]

public var firstFiveOffsets: [CGSize] = [
    
    CGSize(width: 200, height: 200),
    CGSize(width: -100, height: -130),
    CGSize(width: -150, height: 130),
    CGSize(width: 150, height: -130),
    CGSize(width: -150, height: -220)
    
]





public struct PulseView: View {
    
    @State var startAnimation: Bool = false
    
    @State var pulse1: Bool = false
    @State var pulse2: Bool = false
    
    // Found people max 5
    @State var foundPeople: [People] = []
    
    @State var finishAnimation: Bool = false
    @State var selected: People = peoples[0]
    @State var showSheet: Bool = false
    
    
    public init() {}
    
    public var body: some View {
        ZStack {
            Color.black.opacity(0.05).ignoresSafeArea()
            if(!showSheet) {
                ZStack {
                    
                    VStack(alignment:.trailing) {
                        Text(foundPeople.count == 5 ? "Know more about them on tapping on them" : "Find People")
                            .foregroundColor(Color.white)
                            .padding(8)
                            .background(
                                RoundedRectangle(cornerRadius: 16.0)
                                    .foregroundColor(Color.orange)
                                    .shadow(color: Color.black.opacity(0.22), radius: 10.0, x: 0.0, y: 10.0)
                            )
                            .onTapGesture {
                                withAnimation(Animation.linear(duration: 0.6)) {
                                verifyAndAddPeople()
                                }
                               
                        }
                        Text("You have total \(5-foundPeople.count) to view")
                            .font(.footnote)
                            .foregroundColor(Color.black)
                    }.frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding()
                    Circle()
                        .stroke(Color.gray.opacity(0.6),lineWidth: 1.4)
                        .frame(width: 130, height: 130, alignment: .center)
                        .scaleEffect(pulse1 ? 3.3 : 0)
                        .opacity(pulse1 ? 0 : 1)
                    
                    Circle()
                        .stroke(Color.gray.opacity(0.6),lineWidth: 1.4)
                        .frame(width: 130, height: 130, alignment: .center)
                        .scaleEffect(pulse2 ? 3.3 : 0)
                        .opacity(pulse2 ? 0 : 1)
                    

                    
                    
                    
                    ZStack {
                        
                        GlobalWarming()
                            .frame(width: 70, height: 70, alignment: .center)
                        
                    }.frame(width: 100, height: 100, alignment: .center)
                    
                    /// Rotating View Animation
                    .rotationEffect(.init(degrees: startAnimation ? 360 : 1))
                    
                    ///  Showing People
                    
                    ForEach(foundPeople) { people in
                        Image(uiImage: UIImage(named: people.image)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipShape(Circle())
                           
                            .padding(8)
                            .background(Color.white.clipShape(Circle()))
                            .offset(people.offset)
                           
                            .onTapGesture {
                                withAnimation(Animation.interactiveSpring()) {
                                    selected = people
                                    self.showSheet.toggle()
                                }
                            }
                        
                        
                    }
                    
                    
                }.frame(maxHeight: .infinity)
                .onAppear(perform: {
                    animateView()
                })
                .onDisappear(perform: {
                    finishAnimation = true
                })
            } else {
                
                DetailView(show: $showSheet, appearText: true, people: $selected)
            }
            
            
            
        }
    }
    
    public func verifyAndAddPeople() {
        if foundPeople.count < 5 {
            
            withAnimation {
                var people = peoples[foundPeople.count]
                people.offset = firstFiveOffsets[foundPeople.count]
                self.foundPeople.append(people)
            }
        } else {
            withAnimation(Animation.linear(duration: 0.6)) {
                finishAnimation.toggle()
                
                startAnimation =  false
                pulse1 = false
                pulse2 = false
                
            }
        }
    }
    
    public func  animateView() {
        withAnimation(Animation.linear(duration: 1.7).repeatForever(autoreverses: false)) {
            startAnimation.toggle()
        }
        
        withAnimation(Animation.linear(duration: 1.7).delay(-0.1).repeatForever(autoreverses: false)) {
            pulse1.toggle()
        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            
            withAnimation(Animation.linear(duration: 1.7).delay(-0.1).repeatForever(autoreverses: false)) {
                pulse2.toggle()
            }
        }
        
    }
}


public struct GlobalWarming: View {
    @State private var start = false
    @State private var rotateState: Double = 0

    
    public init() {
    }
    
    func rotateEarth() {
        self.rotateState += 360
    }
    
    
    public var body: some View {
        
        
        ZStack {
            
            SceneView(scene: SCNScene(named:"Earth.usdz" )!,
                      options: [.autoenablesDefaultLighting,.allowsCameraControl])
                .frame(width: 200, height: 200, alignment: .center)
                .clipShape(Circle(), style: FillStyle(eoFill: false, antialiased: false))
                .rotationEffect(Angle(degrees: self.rotateState))
                
                .gesture(RotationGesture()
                            .onChanged { value in
                                self.rotateState = value.degrees
                            }
                ).animation(start ?
                                Animation.linear(duration: 5.0)
                                //                                         .delay(1) // Add 1 second between animations
                                .repeatForever(autoreverses: false) : .default)
                
                
                .onAppear(perform: {
                    self.start.toggle()
                    rotateEarth()
                })
        }
        
    }
}

// MARK:- DetailView

struct DetailView: View {
    
    @Binding var show: Bool
    @State var appearText = false
    @Binding var people: People
    
    var body: some View {
        ZStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10){
                    Text(people.data)
                        .padding()
                        .offset(y: appearText ? 0 : 100)
                        .onAppear(perform: {
                            withAnimation {
                                appearText = true
                            }
                            
                        })
                        .onDisappear(perform: {
                            withAnimation {
                                appearText = false
                            }
                            
                        })
                    Spacer()
                }
            }.edgesIgnoringSafeArea(.top)
            Image(systemName: "xmark.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30)
                .foregroundColor(.black)
                .onTapGesture {
                    withAnimation(Animation.spring()) {
                            self.show.toggle()

                    }
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topTrailing)
                .padding(30)
        }
    }
}

