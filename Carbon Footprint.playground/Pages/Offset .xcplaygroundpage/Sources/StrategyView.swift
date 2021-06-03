import Foundation
import SwiftUI
import PlaygroundSupport


public struct StrategyColors {
    static let green = Color(#colorLiteral(red: 0.3882352941, green: 0.8, blue: 0.5098039216, alpha: 1))
    static let blue = Color(#colorLiteral(red: 0.262745098, green: 0.4941176471, blue: 0.968627451, alpha: 1))
    static let gray = Color(#colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1))
    
    public init() {}
}


public struct Strategy: Hashable, Identifiable {
    
    public let id = UUID()
    let image: String
    let title: String
    let data: String
    
    
    public init(i: String,t: String,d:String) {
        self.image = i
        self.title = t
        self.data = d
    }
}

public let aboutTree = """
Trees are the ultimate carbon capture and storage machines. Like great carbon sinks, woods and forests absorb atmospheric carbon and lock it up for centuries. They do this through photosynthesis.

The entire woodland ecosystem plays a huge role in locking up carbon, including the living wood, roots, leaves, deadwood, surrounding soils and its associated vegetation.

Climate change is a huge and complex issue and, as individuals, we can feel helpless. But there is something we can do – and that's increasing tree and woodland cover.

Trees are only part of the solution. Other changes have to be made to reduce global CO2 emissions and an effective response lies in the hands of world politicians. But we do need to plant more trees, quickly.

That sounds like a lot of trees, 1.5 million hectares is around the same land area as Yorkshire. But, there’s plenty of space for trees. In fact, scientists have already mapped areas that could be planted across Europe, all of which wouldn’t impact agriculture or urban areas.

We can also get trees in the ground while retaining unique non-woodland habitats. Keeping the landscape diverse is essential for resilience. There are also habitats that store even more carbon than woods, such as peat bogs, that are also in need of restoration.

Planting the right tree in the right place is vital. We plant native trees where they will thrive. By planting native, we make woods that are more genetically diverse and therefore more resilient against pests, diseases and the effects of climate change.

"""



public let aboutRenewable = """
The future of household energy lies in renewable energy sources such as wind, and solar power. Regardless of climate change, there are limitations on the availability of fossil fuels such as oil, natural gas, and coal, while “green electricity” is becoming cheaper and more readily available.

Nowadays most energy suppliers offer “green electricity” tariffs, which seek to champion renewable energy. However, we recommend sourcing one that ensures your electricity supply is 100% renewable (Some companies purchase a mix of renewable and non-renewable electricity).

A 100% green supply means all the electricity you buy is ‘matched’ by purchases of renewable energy such as wind farms and hydroelectric power stations. As more people sign up for such schemes, it will drive up investment in these technologies and subsequently drive down renewable energy prices. It’s a feedback and you can be the catalyst of change.
"""

public let aboutRRR = """

As both climate change and waste are ever growing problems around the world, it is of great importance to understand how these two major issues are also affecting each other. Recycling is beneficial to the climate crisis in two main ways: by limiting the amount of raw materials being used and limiting the amount of waste going into landfills. Project Drawdown estimates that recycling between 2020 and 2050 will reduce emissions by 5.5-6.02  gigatons of carbon dioxide (equivalent to taking over 1 billion cars off the streets for one year). That is a major reduction from a simple lifestyle change, which makes recycling an effective, yet easy change to make to help curb greenhouse gas emissions and help limit the climate crisis.

➡️➡️ Impact of Landfills

🌟 When things are thrown in the landfill, they decompose anaerobically

🌟 Landfills alone in the United States are the third largest emitters of methane

🌟 Because of this, it is especially important to make sure that you are throwing as little as possible into the garbage, and working on recycling and composting more.

➡️➡️ Raw Materials

🌟 Currently, 4-8%  of total oil consumption goes toward creating plastics

🌟 If our current trajectory in plastic use persists, plastics will account for 20% of oil consumption by 2050

➡️➡️ Recycling

🌟 When an item is recycled, it is processed and turned into something new, rather than either creating something out of virgin material, or having the item that is being disposed of be treated as waste in a landfill

🌟 Recycling with the purpose of creating something new generally uses less energy than creating a product from raw materials

🌟 Recycling aluminum is especially energy efficient. Using aluminum scraps to make aluminum cans saves 95% the amount of energy that would be used to make an aluminum can from raw materials. Producing 40 aluminum cans requires the amount of energy in one gallon  of gasoline, this can be significantly decreased by using recycled aluminum scraps.

🌟 The less energy used to produce a good, the fewer greenhouse gases are emitted in the process. This is excellent for climate change, as greenhouse gas emissions are driving factors in the current climate crisis.

➡️➡️ What Can You Do?

🌟 Buy products made from recycled materials! This will support the market for recycled items, and encourage the continued recycling of materials and production of items made from recycled materials

🌟 Recycle everything that you can! Learn exactly what is recyclable and be sure to recycle everything that is.

🌟 Limit the amount of disposable items you are purchasing in the first place in order to reduce production of disposable items.

🌟 Swap out disposable items for reusable items!
"""

public let aboutFood = """
Livestock and their byproducts account for at least 32,000 million tons of CO2 per year, or 51% of all worldwide greenhouse gas emissions, which is significantly more than the combined exhaust fumes from all modes of transportation put together. And these emissions for animal agriculture are projected to increase 80% by 2050!

The meat and dairy industry is also responsible for up to 91% of Amazon deforestation (grazing land and feed crops), which results in the extinction of over 130 plant, insect, and animal species every day. This alarming list of statistics goes on, but it needn’t be like this, and with the ever-increasing range of exceptional vegan and veggie options in our supermarkets and eateries, there really is no excuse!

Each day, a person who eats a vegan diet saves 1,100 gallons of water, 20kgs of grain, 30 sq ft of forested land, 9kgs of CO2, and one animal’s life. But if going vegan really isn’t an option at the moment, adopting a pescatarian diet, flexitarian diet or choosing white over red meat, will also greatly reduce one’s carbon footprint.
"""

public let aboutTransport = """
Second to the meat industry, transportation releases a devastating percentage of CO2 into our atmosphere – 13% of all greenhouse gas emissions!

Unfortunately, as much as we’d like it, it’s not as easy to completely abandon transportation like it is to go veggie or refuse single-use plastic. In fact, for many of us, we’re likely to be reliant on fossil fueled transportation, generating unavoidable carbon emissions, for at least the next 5 to 10 years. So in the meantime, a reduction and rethink on how we travel is the next step to reducing our carbon footprint.

If it’s just five minutes by car, could you walk, run or cycle instead?
Switch off the ignition when at traffic lights, in a traffic jam or waiting for someone.
Is public transport an option? You’ll be surprised how comfortable and economical it is to travel on public transport nowadays.
Could you be car sharing on the school run or commute to work?
Could you reduce the number of flights you take? Is there an alternative, cleaner means of transport e.g. train?
If you can’t avoid it, offset it. Try to carbon offset unavoidable flights or long road trips.
"""

public let strategies = [
    Strategy(i: "tress.jpg", t: "Plant Trees", d:aboutTree),
    Strategy(i: "recycle.jpg", t: "Reduce Reuse Recycle", d: aboutRRR),
    Strategy(i: "renewable.jpg", t: "Green Energy", d: aboutRenewable),
    Strategy(i: "transport.jpg", t: "Transport", d: aboutTransport),
    Strategy(i: "vegan.jpg", t: "Conserve Food", d: aboutFood),

]

public struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selection: Int
    var namespace: Namespace.ID
    @State var appearText = false
    
    public init(selection: Binding<Int>, namespace: Namespace.ID) {
        self._selection = selection
        self.namespace = namespace
    }
    
    public var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10){
                    
                    VStack {
                        Text(strategies[selection].title.uppercased())
                            .font(.system(size: 44, weight: .heavy, design: .serif))
                            .frame(width: 300, alignment: .center)
                            .foregroundColor(.white)
                    }.frame(maxWidth: .infinity, idealHeight: 455, maxHeight: 555, alignment: .center)
                    .background(
                        
                        ZStack {
                            Image(uiImage: UIImage(named: strategies[selection].image)!)
                                .resizable()
                                .scaledToFill()
                            Color.black.opacity(0.08)
                            
                            
                        }
                        
                    ).frame(maxWidth: .infinity, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 0.0,style: .continuous))
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0.0, y: 10.0 )
                    .offset(y: appearText ? 0 : 100)
                    Text(strategies[selection].data)
                        .foregroundColor(.white)
                        .padding()
                        .offset(y: appearText ? 0 : 100)
                        .onAppear(perform: {
                            withAnimation(Animation.spring().delay(0.2)) {
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
                .foregroundColor(.white)
                .onTapGesture {
                    withAnimation(Animation.spring()) {
                        presentationMode.wrappedValue.dismiss()

                    }
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topTrailing)
                .padding(30)
        }
    }
}


public struct StratedyView: View {
    @State private var selection = 0
    @State private var showingSheet = false
    @State var addStrategies : [Strategy] = []
    @Namespace var namespace
    @State private var endSheet = false
    
    public init() {
        
    }

    public var body: some View {
        ZStack {
            
            Color.black.ignoresSafeArea()
                
            VStack {
                VStack(spacing: 10){
                    Text("Strategies")
                        .font(.system(size: 24, weight: .black,design:.serif))
                        .padding(30)
                        .foregroundColor(Color.white)
                    
                    
                      if(addStrategies.isEmpty) {
                          Text("How do you want to neutralize your carbon footprint?")
                              .font(.system(size: 18, weight: .black,design:.serif))
                            .foregroundColor(Color.white)
                              .padding()
                      } else {
                          Text("Selected \(addStrategies.count) of \(strategies.count)")
                              .font(.system(size: 18, weight: .black,design:.serif))
                              .foregroundColor(StrategyColors.blue)
                              .padding()
                      }
                  
                
                    
                    TabView(selection:$selection, content: {
                        CardTemplate(strategy: strategies[0], namespace: namespace, addIndexValues: $addStrategies)
                            .onTapGesture {
                                showingSheet.toggle()
                            }.tag(0)
                        CardTemplate(strategy: strategies[1], namespace: namespace, addIndexValues: $addStrategies)
                            .onTapGesture {
                                showingSheet.toggle()
                            }.tag(1)
                        CardTemplate(strategy: strategies[2], namespace: namespace, addIndexValues: $addStrategies)
                            .onTapGesture {
                                showingSheet.toggle()
                            }.tag(2)
                        CardTemplate(strategy: strategies[3], namespace: namespace, addIndexValues: $addStrategies)
                            .onTapGesture {
                                showingSheet.toggle()
                            }.tag(3)
                        CardTemplate(strategy: strategies[4], namespace: namespace, addIndexValues: $addStrategies)
                            .onTapGesture {
                                showingSheet.toggle()
                            }.tag(4)
                        
                       
                        
                    })
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    
                    Spacer()
                    if(addStrategies.isEmpty) {
                        Text("We recommend mixing all categories for a diverse strategy")
                            .font(.system(size: 16, weight: .black,design:.serif))
                            .frame(width: .infinity, alignment: .center)
                            .padding(.horizontal,40)
                            .padding()
                            .padding(.bottom)
                            .foregroundColor(StrategyColors.gray)
                    } else {
                        Text("Save Strategies")
                            .font(.system(size: 16, weight: .black,design:.serif))
                            .frame(width: .infinity, alignment: .center)
                            .padding(.horizontal,40)
                            .padding()
                            
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 30.0).foregroundColor(StrategyColors.green)
                            ) .padding(.bottom)
                            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0.0, y: 10.0)
                            .shadow(color: Color.white.opacity(0.3), radius: -10, x: -10.0, y: -10.0)
                            .onTapGesture {
                                self.endSheet = true
                            }
                            .padding(.bottom)
                    }
                    
                }
            }.fullScreenCover(isPresented: $showingSheet) {
                    SheetView(selection: $selection, namespace: namespace)
                
                   }  .transition(.slide)
         
        } .background(EmptyView().fullScreenCover(isPresented: $endSheet) {
            SavedStrategiesView()
        
    })
    }
}


public struct CardTemplate: View {
    
    var strategy: Strategy
    var namespace: Namespace.ID
    @State private var tapped: Bool = false
    @Binding var addIndexValues : [Strategy]
    
    public init(strategy: Strategy,namespace: Namespace.ID, addIndexValues : Binding<[Strategy]>) {
        self.strategy = strategy
        self.namespace = namespace
        self._addIndexValues = addIndexValues
    }
    
    public var body: some View {
        VStack {
            Text(strategy.title.uppercased())
                .font(.system(size: 24, weight: .heavy, design: .serif))
                .bold()
                .foregroundColor(.white)
                .frame(width: 160, height: 150, alignment: .center)
        }.frame(maxWidth: 300, maxHeight: 355, alignment: .center)
        .background(
            
            ZStack {
                Image(uiImage: UIImage(named: strategy.image)!)
                    .resizable()
                    .scaledToFill()
                Color.black.opacity(0.08)
                
            }
            
        )
        
        .overlay(VStack {
            Spacer()
            HStack {
                Spacer()
                
                Image(systemName: tapped ? "checkmark" : "plus")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)
                    .background(Circle().foregroundColor(Color.green))
                    .onTapGesture {
                        if(addIndexValues.contains(strategy)) {
                            if let index = addIndexValues.firstIndex(of: strategy) {
                                addIndexValues.remove(at: index)
                            }
                        } else {
                            addIndexValues.append(strategy)
                        }
                        
                        withAnimation(Animation.interactiveSpring()) {
                            self.tapped.toggle()
                        }
                    }
                
                
            }.font(.headline)
            .foregroundColor(.white)
            .frame(maxWidth: 300, alignment: .center)
            .padding(.horizontal,8)
            .padding()
        })
        
        
        .clipShape(RoundedRectangle(cornerRadius: 30.0))
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0.0, y: 10.0 )
        .overlay(
            RoundedRectangle(cornerRadius: 30.0)
                .stroke(lineWidth: tapped ? 5.0 : 0.0)
                .foregroundColor(.green)
        )
    }
}

public struct SavedStrategiesView: View {
    @Environment(\.presentationMode) var presentationMode2
    
    public init() {}
    public var body: some View {
        
        ZStack {
            FlowersView()
            VStack {
                Text("Thank you")
                    .font(.system(size: 44, weight: .heavy,design:.default))
                    .padding(20)
                VStack {
                    Text("for going")
                        .padding(6)
                    Text("Carbon Neutral!")
                }.font(.system(size: 34, weight: .heavy,design:.default))
                    .frame(width: 300, height: 100, alignment: .center)
            }.foregroundColor(.white)
        }
    }
}


public struct FlowersView: View {
    
    public init(){}

    public var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            LeafsView()
                GeometryReader { proxy in
                    ZStack {
                    SunflowerFlower(size: 30.0)
                        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                        SunflowerFlower(size: 40.0)
                            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .bottomTrailing).padding(.bottom,100)


                    HibiscusFlower(size: 60.0)
                        .position(x: proxy.size.width/1.2, y: proxy.size.height/2.1)
                    OrchidFlower(size: 120.0)
                        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .bottomLeading).padding(.bottom,80)
                        
                OrchidFlower(size: 80.0)
                    .position(x: proxy.size.width*0.80, y: proxy.size.height*0.20)
                    Ixora()
                        .fill(Color(#colorLiteral(red: 0.9254901961, green: 0.4117647059, blue: 0.4509803922, alpha: 1)))
                        .frame(width: 70, height: 100, alignment: .center)
                        .position(x: proxy.size.width*0.08, y: proxy.size.height*0.70)
                        Ixora()
                            .fill(Color(#colorLiteral(red: 0.3294117647, green: 0.3960784314, blue: 0.6823529412, alpha: 1)))
                            .frame(width: 70, height: 100, alignment: .center)
                            .position(x: proxy.size.width*0.18, y: proxy.size.height*0.75)
                        Ixora()
                            .fill(Color(#colorLiteral(red: 0.9254901961, green: 0.4117647059, blue: 0.4509803922, alpha: 1)))
                            .frame(width: 70, height: 100, alignment: .center)
                            .position(x: proxy.size.width*0.06, y: proxy.size.height*0.80)


                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            }
            
        }
    }
    
    
    func gR(proxy: CGFloat) -> CGFloat {
        return CGFloat(proxy/CGFloat(Int.random(in: 1..<30)))
    }
}

public struct LeafsView: View {
    public init() {}

    public  var body: some View {
            ZStack {
                Color.black.ignoresSafeArea()
                
                    GeometryReader { proxy in
                        ZStack {
                            Leaf2()
                                .fill(Color(#colorLiteral(red: 0.4549019608, green: 0.6666666667, blue: 0.3882352941, alpha: 1)))
                                .frame(width: 100,height: 100, alignment: .topLeading)
                                .position(x: proxy.size.width*0.90, y: proxy.size.height*0.01)
                                .rotationEffect(.degrees(0))
                
                            
                            Leaf1()
                                .fill(Color(#colorLiteral(red: 0.4549019608, green: 0.6666666667, blue: 0.3882352941, alpha: 1)))
                                .frame(width: 100,height: 100, alignment: .topLeading)
                                .position(x: proxy.size.width*0.50, y: proxy.size.height*0.15)
                                .rotationEffect(.degrees(27))
                            
                            Leaf1()
                                .fill(Color(#colorLiteral(red: 0.4549019608, green: 0.6666666667, blue: 0.3882352941, alpha: 1)))
                                .frame(width: 100,height: 100, alignment: .topLeading)
                                .position(x: proxy.size.width*0.16, y: proxy.size.height*0.15)
                                .rotationEffect(.degrees(12))
                            
                            Leaf1()
                                .fill(Color(#colorLiteral(red: 0.4549019608, green: 0.6666666667, blue: 0.3882352941, alpha: 1)))
                                .frame(width: 100,height: 100, alignment: .topLeading)
                                .position(x: proxy.size.width*0.11, y: proxy.size.height*0.20)
                                .rotationEffect(.degrees(6))
                            
                            Leaf1()
                                .fill(Color(#colorLiteral(red: 0.4549019608, green: 0.6666666667, blue: 0.3882352941, alpha: 1)))
                                .frame(width: 100,height: 100, alignment: .topLeading)
                                .position(x: proxy.size.width*0.12, y: proxy.size.height*0.61)
                                .rotationEffect(.degrees(17))
                            
                            Leaf2()
                                .fill(Color(#colorLiteral(red: 0.4549019608, green: 0.6666666667, blue: 0.3882352941, alpha: 1)))
                                .frame(width: 100,height: 100, alignment: .topLeading)
                                .position(x: proxy.size.width*0.90, y: proxy.size.height*0.95)
                                .rotationEffect(.degrees(0))
                            
                            Leaf2()
                                .fill(Color(#colorLiteral(red: 0.4549019608, green: 0.6666666667, blue: 0.3882352941, alpha: 1)))
                                .frame(width: 100,height: 100, alignment: .topLeading)
                                .position(x: proxy.size.width*0.80, y: proxy.size.height*0.93)
                                .rotationEffect(.degrees(60))
        
                           
                            
                    }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                }
                
            }
        }
        
    
    }

public struct SunflowerFlower: View {
    var size: CGFloat
    @State private var scale: CGFloat = 1
    
    public init(size: CGFloat) {
        self.size = size
    }
    
    public var body: some View {
        ZStack {
            Sunflower()
            .fill(Color.white)
            .frame(width: size*2.76, height: size*2.76, alignment: .center)
            SunflowerCore()
                .fill(Color(#colorLiteral(red: 0.9568627451, green: 0.7058823529, blue: 0.2588235294, alpha: 1)))
                .frame(width: size, height:size, alignment: .center)
                
        } .scaleEffect(scale)
        .onAppear(perform: {
            withAnimation(Animation.linear(duration: 1.0).repeatForever()) {
                self.scale = 1.2
            }
        })
    }
    
}

public struct HibiscusFlower: View {
    var size: CGFloat
    @State private var scale: CGFloat = 1
    
    public init(size: CGFloat) {
        self.size = size
    }
    
    public var body: some View {
        ZStack {
            Hibiscus()
                .fill(Color(#colorLiteral(red: 0.9215686275, green: 0.3529411765, blue: 0.2078431373, alpha: 1)))
                .frame(width: size*2.41, height: size*2.41, alignment: .center)
             HibiscusCore()
                .fill(Color(#colorLiteral(red: 0.9568627451, green: 0.7058823529, blue: 0.2588235294, alpha: 1)))
                .frame(width: size, height:size, alignment: .center)
                
        }.scaleEffect(scale)
        .onAppear(perform: {
            withAnimation(Animation.linear(duration: 2).repeatForever()) {
                self.scale = 1.2
            }
        })
    }
    
}

public struct OrchidFlower: View {
    var size: CGFloat
    @State private var scale: CGFloat = 1
    
    public init(size: CGFloat) {
        self.size = size
    }
    
    public var body: some View {
        ZStack {
            Orchid()
                .fill(Color(#colorLiteral(red: 0.4549019608, green: 0.1843137255, blue: 0.6705882353, alpha: 1)))
                .frame(width: size*1.65, height: size*1.65, alignment: .center)
            OrchidCore()
                .fill(Color(#colorLiteral(red: 0.9333333333, green: 0.8235294118, blue: 0.9725490196, alpha: 1)))
                .frame(width: size, height:size, alignment: .center)
                
        }.scaleEffect(scale)
        .onAppear(perform: {
            withAnimation(Animation.linear(duration: 1.5).repeatForever()) {
                self.scale = 1.2
            }
        })
    }
    
}

public struct Sunflower: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.14646*width, y: 0.85355*height))
        path.addCurve(to: CGPoint(x: 0.49892*width, y: 0.50108*height), control1: CGPoint(x: 0.23144*width, y: 0.80137*height), control2: CGPoint(x: 0.42091*width, y: 0.65781*height))
        path.addLine(to: CGPoint(x: 0.14646*width, y: 0.85355*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.14646*width, y: 0.85355*height))
        path.addCurve(to: CGPoint(x: 0.49893*width, y: 0.50108*height), control1: CGPoint(x: 0.19864*width, y: 0.76856*height), control2: CGPoint(x: 0.34219*width, y: 0.57909*height))
        path.addLine(to: CGPoint(x: 0.14646*width, y: 0.85355*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50109*width, y: 0.49891*height))
        path.addCurve(to: CGPoint(x: 0.85356*width, y: 0.14645*height), control1: CGPoint(x: 0.58608*width, y: 0.44673*height), control2: CGPoint(x: 0.77555*width, y: 0.30318*height))
        path.addLine(to: CGPoint(x: 0.50109*width, y: 0.49891*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50109*width, y: 0.49892*height))
        path.addCurve(to: CGPoint(x: 0.85356*width, y: 0.14645*height), control1: CGPoint(x: 0.55328*width, y: 0.41393*height), control2: CGPoint(x: 0.69683*width, y: 0.22446*height))
        path.addLine(to: CGPoint(x: 0.50109*width, y: 0.49892*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.03806*width, y: 0.69134*height))
        path.addCurve(to: CGPoint(x: 0.49858*width, y: 0.50058*height), control1: CGPoint(x: 0.13655*width, y: 0.67565*height), control2: CGPoint(x: 0.36654*width, y: 0.61553*height))
        path.addLine(to: CGPoint(x: 0.03806*width, y: 0.69134*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.03806*width, y: 0.69134*height))
        path.addCurve(to: CGPoint(x: 0.49858*width, y: 0.50058*height), control1: CGPoint(x: 0.1188*width, y: 0.63279*height), control2: CGPoint(x: 0.32393*width, y: 0.51268*height))
        path.addLine(to: CGPoint(x: 0.03806*width, y: 0.69134*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50142*width, y: 0.49941*height))
        path.addCurve(to: CGPoint(x: 0.96194*width, y: 0.30866*height), control1: CGPoint(x: 0.59991*width, y: 0.48372*height), control2: CGPoint(x: 0.82989*width, y: 0.42361*height))
        path.addLine(to: CGPoint(x: 0.50142*width, y: 0.49941*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50142*width, y: 0.49941*height))
        path.addCurve(to: CGPoint(x: 0.96194*width, y: 0.30866*height), control1: CGPoint(x: 0.58215*width, y: 0.44087*height), control2: CGPoint(x: 0.78729*width, y: 0.32075*height))
        path.addLine(to: CGPoint(x: 0.50142*width, y: 0.49941*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.49847*width, y: 0.5*height), control1: CGPoint(x: 0.097*width, y: 0.52319*height), control2: CGPoint(x: 0.33248*width, y: 0.55566*height))
        path.addLine(to: CGPoint(x: 0, y: 0.5*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.49847*width, y: 0.5*height), control1: CGPoint(x: 0.097*width, y: 0.47681*height), control2: CGPoint(x: 0.33248*width, y: 0.44433*height))
        path.addLine(to: CGPoint(x: 0, y: 0.5*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50154*width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: width, y: 0.5*height), control1: CGPoint(x: 0.59853*width, y: 0.52319*height), control2: CGPoint(x: 0.83401*width, y: 0.55566*height))
        path.addLine(to: CGPoint(x: 0.50154*width, y: 0.5*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50154*width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: width, y: 0.5*height), control1: CGPoint(x: 0.59853*width, y: 0.47681*height), control2: CGPoint(x: 0.83401*width, y: 0.44433*height))
        path.addLine(to: CGPoint(x: 0.50154*width, y: 0.5*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.03806*width, y: 0.30866*height))
        path.addCurve(to: CGPoint(x: 0.49858*width, y: 0.49941*height), control1: CGPoint(x: 0.1188*width, y: 0.3672*height), control2: CGPoint(x: 0.32393*width, y: 0.48732*height))
        path.addLine(to: CGPoint(x: 0.03806*width, y: 0.30866*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.03806*width, y: 0.30866*height))
        path.addCurve(to: CGPoint(x: 0.49858*width, y: 0.49941*height), control1: CGPoint(x: 0.13655*width, y: 0.32435*height), control2: CGPoint(x: 0.36653*width, y: 0.38446*height))
        path.addLine(to: CGPoint(x: 0.03806*width, y: 0.30866*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50142*width, y: 0.50058*height))
        path.addCurve(to: CGPoint(x: 0.96194*width, y: 0.69134*height), control1: CGPoint(x: 0.58215*width, y: 0.55913*height), control2: CGPoint(x: 0.78728*width, y: 0.67925*height))
        path.addLine(to: CGPoint(x: 0.50142*width, y: 0.50058*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50142*width, y: 0.50059*height))
        path.addCurve(to: CGPoint(x: 0.96194*width, y: 0.69134*height), control1: CGPoint(x: 0.5999*width, y: 0.51628*height), control2: CGPoint(x: 0.82988*width, y: 0.57639*height))
        path.addLine(to: CGPoint(x: 0.50142*width, y: 0.50059*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.14645*width, y: 0.14645*height))
        path.addCurve(to: CGPoint(x: 0.49892*width, y: 0.49891*height), control1: CGPoint(x: 0.19863*width, y: 0.23143*height), control2: CGPoint(x: 0.34219*width, y: 0.4209*height))
        path.addLine(to: CGPoint(x: 0.14645*width, y: 0.14645*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.14645*width, y: 0.14645*height))
        path.addCurve(to: CGPoint(x: 0.49892*width, y: 0.49891*height), control1: CGPoint(x: 0.23143*width, y: 0.19863*height), control2: CGPoint(x: 0.42091*width, y: 0.34218*height))
        path.addLine(to: CGPoint(x: 0.14645*width, y: 0.14645*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50108*width, y: 0.50108*height))
        path.addCurve(to: CGPoint(x: 0.85355*width, y: 0.85355*height), control1: CGPoint(x: 0.55327*width, y: 0.58607*height), control2: CGPoint(x: 0.69682*width, y: 0.77554*height))
        path.addLine(to: CGPoint(x: 0.50108*width, y: 0.50108*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50108*width, y: 0.50108*height))
        path.addCurve(to: CGPoint(x: 0.85355*width, y: 0.85355*height), control1: CGPoint(x: 0.58607*width, y: 0.55327*height), control2: CGPoint(x: 0.77554*width, y: 0.69682*height))
        path.addLine(to: CGPoint(x: 0.50108*width, y: 0.50108*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.30866*width, y: 0.03806*height))
        path.addCurve(to: CGPoint(x: 0.49941*width, y: 0.49858*height), control1: CGPoint(x: 0.32435*width, y: 0.13655*height), control2: CGPoint(x: 0.38446*width, y: 0.36653*height))
        path.addLine(to: CGPoint(x: 0.30866*width, y: 0.03806*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.30865*width, y: 0.03806*height))
        path.addCurve(to: CGPoint(x: 0.49941*width, y: 0.49858*height), control1: CGPoint(x: 0.3672*width, y: 0.1188*height), control2: CGPoint(x: 0.48731*width, y: 0.32393*height))
        path.addLine(to: CGPoint(x: 0.30865*width, y: 0.03806*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50058*width, y: 0.50142*height))
        path.addCurve(to: CGPoint(x: 0.69134*width, y: 0.96194*height), control1: CGPoint(x: 0.51627*width, y: 0.5999*height), control2: CGPoint(x: 0.57639*width, y: 0.82989*height))
        path.addLine(to: CGPoint(x: 0.50058*width, y: 0.50142*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50058*width, y: 0.50142*height))
        path.addCurve(to: CGPoint(x: 0.69133*width, y: 0.96194*height), control1: CGPoint(x: 0.55913*width, y: 0.58215*height), control2: CGPoint(x: 0.67925*width, y: 0.78728*height))
        path.addLine(to: CGPoint(x: 0.50058*width, y: 0.50142*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.49847*height), control1: CGPoint(x: 0.47681*width, y: 0.097*height), control2: CGPoint(x: 0.44433*width, y: 0.33248*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.49847*height), control1: CGPoint(x: 0.52319*width, y: 0.097*height), control2: CGPoint(x: 0.55566*width, y: 0.33248*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5*width, y: 0.50153*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: height), control1: CGPoint(x: 0.4768*width, y: 0.59853*height), control2: CGPoint(x: 0.44433*width, y: 0.83401*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.50153*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5*width, y: 0.50153*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: height), control1: CGPoint(x: 0.52319*width, y: 0.59853*height), control2: CGPoint(x: 0.55566*width, y: 0.83401*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.50153*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.69133*width, y: 0.03806*height))
        path.addCurve(to: CGPoint(x: 0.50058*width, y: 0.49858*height), control1: CGPoint(x: 0.63279*width, y: 0.1188*height), control2: CGPoint(x: 0.51267*width, y: 0.32393*height))
        path.addLine(to: CGPoint(x: 0.69133*width, y: 0.03806*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.69133*width, y: 0.03806*height))
        path.addCurve(to: CGPoint(x: 0.50058*width, y: 0.49858*height), control1: CGPoint(x: 0.67564*width, y: 0.13655*height), control2: CGPoint(x: 0.61553*width, y: 0.36653*height))
        path.addLine(to: CGPoint(x: 0.69133*width, y: 0.03806*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49941*width, y: 0.50142*height))
        path.addCurve(to: CGPoint(x: 0.30865*width, y: 0.96194*height), control1: CGPoint(x: 0.44086*width, y: 0.58215*height), control2: CGPoint(x: 0.32074*width, y: 0.78728*height))
        path.addLine(to: CGPoint(x: 0.49941*width, y: 0.50142*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4994*width, y: 0.50142*height))
        path.addCurve(to: CGPoint(x: 0.30865*width, y: 0.96194*height), control1: CGPoint(x: 0.48371*width, y: 0.5999*height), control2: CGPoint(x: 0.4236*width, y: 0.82989*height))
        path.addLine(to: CGPoint(x: 0.4994*width, y: 0.50142*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.85354*width, y: 0.14645*height))
        path.addCurve(to: CGPoint(x: 0.50108*width, y: 0.49892*height), control1: CGPoint(x: 0.76856*width, y: 0.19863*height), control2: CGPoint(x: 0.57908*width, y: 0.34219*height))
        path.addLine(to: CGPoint(x: 0.85354*width, y: 0.14645*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.85354*width, y: 0.14645*height))
        path.addCurve(to: CGPoint(x: 0.50107*width, y: 0.49892*height), control1: CGPoint(x: 0.80136*width, y: 0.23143*height), control2: CGPoint(x: 0.65781*width, y: 0.42091*height))
        path.addLine(to: CGPoint(x: 0.85354*width, y: 0.14645*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49891*width, y: 0.50108*height))
        path.addCurve(to: CGPoint(x: 0.14644*width, y: 0.85355*height), control1: CGPoint(x: 0.41392*width, y: 0.55327*height), control2: CGPoint(x: 0.22445*width, y: 0.69682*height))
        path.addLine(to: CGPoint(x: 0.49891*width, y: 0.50108*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49891*width, y: 0.50108*height))
        path.addCurve(to: CGPoint(x: 0.14644*width, y: 0.85355*height), control1: CGPoint(x: 0.44672*width, y: 0.58607*height), control2: CGPoint(x: 0.30317*width, y: 0.77554*height))
        path.addLine(to: CGPoint(x: 0.49891*width, y: 0.50108*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.96193*width, y: 0.30866*height))
        path.addCurve(to: CGPoint(x: 0.50141*width, y: 0.49942*height), control1: CGPoint(x: 0.86344*width, y: 0.32435*height), control2: CGPoint(x: 0.63345*width, y: 0.38447*height))
        path.addLine(to: CGPoint(x: 0.96193*width, y: 0.30866*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.96193*width, y: 0.30866*height))
        path.addCurve(to: CGPoint(x: 0.5014*width, y: 0.49941*height), control1: CGPoint(x: 0.88119*width, y: 0.36721*height), control2: CGPoint(x: 0.67606*width, y: 0.48732*height))
        path.addLine(to: CGPoint(x: 0.96193*width, y: 0.30866*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49857*width, y: 0.50059*height))
        path.addCurve(to: CGPoint(x: 0.03805*width, y: 0.69134*height), control1: CGPoint(x: 0.40008*width, y: 0.51628*height), control2: CGPoint(x: 0.1701*width, y: 0.57639*height))
        path.addLine(to: CGPoint(x: 0.49857*width, y: 0.50059*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49857*width, y: 0.50058*height))
        path.addCurve(to: CGPoint(x: 0.03805*width, y: 0.69134*height), control1: CGPoint(x: 0.41784*width, y: 0.55913*height), control2: CGPoint(x: 0.2127*width, y: 0.67925*height))
        path.addLine(to: CGPoint(x: 0.49857*width, y: 0.50058*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.50153*width, y: 0.5*height), control1: CGPoint(x: 0.903*width, y: 0.47681*height), control2: CGPoint(x: 0.66752*width, y: 0.44434*height))
        path.addLine(to: CGPoint(x: width, y: 0.5*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.50153*width, y: 0.5*height), control1: CGPoint(x: 0.903*width, y: 0.52319*height), control2: CGPoint(x: 0.66752*width, y: 0.55567*height))
        path.addLine(to: CGPoint(x: width, y: 0.5*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49846*width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.5*height), control1: CGPoint(x: 0.40147*width, y: 0.47681*height), control2: CGPoint(x: 0.16599*width, y: 0.44433*height))
        path.addLine(to: CGPoint(x: 0.49846*width, y: 0.5*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49846*width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.5*height), control1: CGPoint(x: 0.40147*width, y: 0.52319*height), control2: CGPoint(x: 0.16599*width, y: 0.55566*height))
        path.addLine(to: CGPoint(x: 0.49846*width, y: 0.5*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.96193*width, y: 0.69134*height))
        path.addCurve(to: CGPoint(x: 0.50141*width, y: 0.50059*height), control1: CGPoint(x: 0.88119*width, y: 0.6328*height), control2: CGPoint(x: 0.67606*width, y: 0.51268*height))
        path.addLine(to: CGPoint(x: 0.96193*width, y: 0.69134*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.96193*width, y: 0.69134*height))
        path.addCurve(to: CGPoint(x: 0.50141*width, y: 0.50058*height), control1: CGPoint(x: 0.86344*width, y: 0.67565*height), control2: CGPoint(x: 0.63346*width, y: 0.61553*height))
        path.addLine(to: CGPoint(x: 0.96193*width, y: 0.69134*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49857*width, y: 0.49941*height))
        path.addCurve(to: CGPoint(x: 0.03805*width, y: 0.30866*height), control1: CGPoint(x: 0.41784*width, y: 0.44087*height), control2: CGPoint(x: 0.21271*width, y: 0.32075*height))
        path.addLine(to: CGPoint(x: 0.49857*width, y: 0.49941*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49857*width, y: 0.49941*height))
        path.addCurve(to: CGPoint(x: 0.03805*width, y: 0.30866*height), control1: CGPoint(x: 0.40009*width, y: 0.48372*height), control2: CGPoint(x: 0.1701*width, y: 0.42361*height))
        path.addLine(to: CGPoint(x: 0.49857*width, y: 0.49941*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.85354*width, y: 0.85355*height))
        path.addCurve(to: CGPoint(x: 0.50107*width, y: 0.50108*height), control1: CGPoint(x: 0.80136*width, y: 0.76856*height), control2: CGPoint(x: 0.65781*width, y: 0.57909*height))
        path.addLine(to: CGPoint(x: 0.85354*width, y: 0.85355*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.85354*width, y: 0.85355*height))
        path.addCurve(to: CGPoint(x: 0.50107*width, y: 0.50108*height), control1: CGPoint(x: 0.76856*width, y: 0.80137*height), control2: CGPoint(x: 0.57908*width, y: 0.65781*height))
        path.addLine(to: CGPoint(x: 0.85354*width, y: 0.85355*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49891*width, y: 0.49891*height))
        path.addCurve(to: CGPoint(x: 0.14644*width, y: 0.14645*height), control1: CGPoint(x: 0.44672*width, y: 0.41393*height), control2: CGPoint(x: 0.30317*width, y: 0.22446*height))
        path.addLine(to: CGPoint(x: 0.49891*width, y: 0.49891*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49891*width, y: 0.49891*height))
        path.addCurve(to: CGPoint(x: 0.14644*width, y: 0.14645*height), control1: CGPoint(x: 0.41392*width, y: 0.44673*height), control2: CGPoint(x: 0.22445*width, y: 0.30318*height))
        path.addLine(to: CGPoint(x: 0.49891*width, y: 0.49891*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.69132*width, y: 0.96194*height))
        path.addCurve(to: CGPoint(x: 0.50057*width, y: 0.50142*height), control1: CGPoint(x: 0.67563*width, y: 0.86345*height), control2: CGPoint(x: 0.61552*width, y: 0.63346*height))
        path.addLine(to: CGPoint(x: 0.69132*width, y: 0.96194*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.69132*width, y: 0.96194*height))
        path.addCurve(to: CGPoint(x: 0.50057*width, y: 0.50142*height), control1: CGPoint(x: 0.63278*width, y: 0.8812*height), control2: CGPoint(x: 0.51266*width, y: 0.67607*height))
        path.addLine(to: CGPoint(x: 0.69132*width, y: 0.96194*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4994*width, y: 0.49858*height))
        path.addCurve(to: CGPoint(x: 0.30864*width, y: 0.03806*height), control1: CGPoint(x: 0.48371*width, y: 0.40009*height), control2: CGPoint(x: 0.42359*width, y: 0.17011*height))
        path.addLine(to: CGPoint(x: 0.4994*width, y: 0.49858*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4994*width, y: 0.49858*height))
        path.addCurve(to: CGPoint(x: 0.30865*width, y: 0.03806*height), control1: CGPoint(x: 0.44085*width, y: 0.41785*height), control2: CGPoint(x: 0.32074*width, y: 0.21271*height))
        path.addLine(to: CGPoint(x: 0.4994*width, y: 0.49858*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49998*width, y: height))
        path.addCurve(to: CGPoint(x: 0.49998*width, y: 0.50153*height), control1: CGPoint(x: 0.52318*width, y: 0.903*height), control2: CGPoint(x: 0.55565*width, y: 0.66752*height))
        path.addLine(to: CGPoint(x: 0.49998*width, y: height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49999*width, y: height))
        path.addCurve(to: CGPoint(x: 0.49999*width, y: 0.50153*height), control1: CGPoint(x: 0.47679*width, y: 0.903*height), control2: CGPoint(x: 0.44432*width, y: 0.66752*height))
        path.addLine(to: CGPoint(x: 0.49999*width, y: height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49999*width, y: 0.49846*height))
        path.addCurve(to: CGPoint(x: 0.49998*width, y: 0), control1: CGPoint(x: 0.52318*width, y: 0.40147*height), control2: CGPoint(x: 0.55565*width, y: 0.16599*height))
        path.addLine(to: CGPoint(x: 0.49999*width, y: 0.49846*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49999*width, y: 0.49846*height))
        path.addCurve(to: CGPoint(x: 0.49999*width, y: 0), control1: CGPoint(x: 0.47679*width, y: 0.40147*height), control2: CGPoint(x: 0.44432*width, y: 0.16599*height))
        path.addLine(to: CGPoint(x: 0.49999*width, y: 0.49846*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.30867*width, y: 0.96194*height))
        path.addCurve(to: CGPoint(x: 0.49942*width, y: 0.50141*height), control1: CGPoint(x: 0.36721*width, y: 0.8812*height), control2: CGPoint(x: 0.48733*width, y: 0.67607*height))
        path.addLine(to: CGPoint(x: 0.30867*width, y: 0.96194*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.30867*width, y: 0.96194*height))
        path.addCurve(to: CGPoint(x: 0.49942*width, y: 0.50142*height), control1: CGPoint(x: 0.32436*width, y: 0.86345*height), control2: CGPoint(x: 0.38447*width, y: 0.63346*height))
        path.addLine(to: CGPoint(x: 0.30867*width, y: 0.96194*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50059*width, y: 0.49858*height))
        path.addCurve(to: CGPoint(x: 0.69135*width, y: 0.03806*height), control1: CGPoint(x: 0.55914*width, y: 0.41785*height), control2: CGPoint(x: 0.67925*width, y: 0.21271*height))
        path.addLine(to: CGPoint(x: 0.50059*width, y: 0.49858*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5006*width, y: 0.49858*height))
        path.addCurve(to: CGPoint(x: 0.69135*width, y: 0.03806*height), control1: CGPoint(x: 0.51629*width, y: 0.40009*height), control2: CGPoint(x: 0.5764*width, y: 0.17011*height))
        path.addLine(to: CGPoint(x: 0.5006*width, y: 0.49858*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49181*width, y: 0.41827*height))
        path.addCurve(to: CGPoint(x: 0.50819*width, y: 0.41827*height), control1: CGPoint(x: 0.49264*width, y: 0.40822*height), control2: CGPoint(x: 0.50736*width, y: 0.40822*height))
        path.addCurve(to: CGPoint(x: 0.5237*width, y: 0.42136*height), control1: CGPoint(x: 0.50888*width, y: 0.42651*height), control2: CGPoint(x: 0.51992*width, y: 0.42871*height))
        path.addCurve(to: CGPoint(x: 0.53885*width, y: 0.42763*height), control1: CGPoint(x: 0.52832*width, y: 0.41239*height), control2: CGPoint(x: 0.54193*width, y: 0.41802*height))
        path.addCurve(to: CGPoint(x: 0.552*width, y: 0.43642*height), control1: CGPoint(x: 0.53632*width, y: 0.4355*height), control2: CGPoint(x: 0.54569*width, y: 0.44176*height))
        path.addCurve(to: CGPoint(x: 0.56358*width, y: 0.44801*height), control1: CGPoint(x: 0.55969*width, y: 0.42989*height), control2: CGPoint(x: 0.57011*width, y: 0.4403*height))
        path.addCurve(to: CGPoint(x: 0.57237*width, y: 0.46115*height), control1: CGPoint(x: 0.55825*width, y: 0.45431*height), control2: CGPoint(x: 0.5645*width, y: 0.46368*height))
        path.addCurve(to: CGPoint(x: 0.57864*width, y: 0.4763*height), control1: CGPoint(x: 0.58198*width, y: 0.45807*height), control2: CGPoint(x: 0.58762*width, y: 0.47168*height))
        path.addCurve(to: CGPoint(x: 0.58173*width, y: 0.49181*height), control1: CGPoint(x: 0.57129*width, y: 0.48008*height), control2: CGPoint(x: 0.57349*width, y: 0.49112*height))
        path.addCurve(to: CGPoint(x: 0.58173*width, y: 0.50819*height), control1: CGPoint(x: 0.59178*width, y: 0.49264*height), control2: CGPoint(x: 0.59178*width, y: 0.50736*height))
        path.addCurve(to: CGPoint(x: 0.57864*width, y: 0.5237*height), control1: CGPoint(x: 0.57349*width, y: 0.50888*height), control2: CGPoint(x: 0.57129*width, y: 0.51992*height))
        path.addCurve(to: CGPoint(x: 0.57237*width, y: 0.53885*height), control1: CGPoint(x: 0.58762*width, y: 0.52832*height), control2: CGPoint(x: 0.58198*width, y: 0.54193*height))
        path.addCurve(to: CGPoint(x: 0.56358*width, y: 0.552*height), control1: CGPoint(x: 0.5645*width, y: 0.53632*height), control2: CGPoint(x: 0.55825*width, y: 0.54569*height))
        path.addCurve(to: CGPoint(x: 0.552*width, y: 0.56358*height), control1: CGPoint(x: 0.57011*width, y: 0.55969*height), control2: CGPoint(x: 0.55969*width, y: 0.57011*height))
        path.addCurve(to: CGPoint(x: 0.53885*width, y: 0.57237*height), control1: CGPoint(x: 0.54569*width, y: 0.55825*height), control2: CGPoint(x: 0.53632*width, y: 0.5645*height))
        path.addCurve(to: CGPoint(x: 0.5237*width, y: 0.57864*height), control1: CGPoint(x: 0.54193*width, y: 0.58198*height), control2: CGPoint(x: 0.52832*width, y: 0.58762*height))
        path.addCurve(to: CGPoint(x: 0.50819*width, y: 0.58173*height), control1: CGPoint(x: 0.51992*width, y: 0.57129*height), control2: CGPoint(x: 0.50888*width, y: 0.57349*height))
        path.addCurve(to: CGPoint(x: 0.49181*width, y: 0.58173*height), control1: CGPoint(x: 0.50736*width, y: 0.59178*height), control2: CGPoint(x: 0.49264*width, y: 0.59178*height))
        path.addCurve(to: CGPoint(x: 0.4763*width, y: 0.57864*height), control1: CGPoint(x: 0.49112*width, y: 0.57349*height), control2: CGPoint(x: 0.48008*width, y: 0.57129*height))
        path.addCurve(to: CGPoint(x: 0.46115*width, y: 0.57237*height), control1: CGPoint(x: 0.47168*width, y: 0.58762*height), control2: CGPoint(x: 0.45807*width, y: 0.58198*height))
        path.addCurve(to: CGPoint(x: 0.44801*width, y: 0.56358*height), control1: CGPoint(x: 0.46368*width, y: 0.5645*height), control2: CGPoint(x: 0.45431*width, y: 0.55825*height))
        path.addCurve(to: CGPoint(x: 0.43642*width, y: 0.552*height), control1: CGPoint(x: 0.4403*width, y: 0.57011*height), control2: CGPoint(x: 0.42989*width, y: 0.55969*height))
        path.addCurve(to: CGPoint(x: 0.42763*width, y: 0.53885*height), control1: CGPoint(x: 0.44176*width, y: 0.54569*height), control2: CGPoint(x: 0.4355*width, y: 0.53632*height))
        path.addCurve(to: CGPoint(x: 0.42136*width, y: 0.5237*height), control1: CGPoint(x: 0.41802*width, y: 0.54193*height), control2: CGPoint(x: 0.41239*width, y: 0.52832*height))
        path.addCurve(to: CGPoint(x: 0.41827*width, y: 0.50819*height), control1: CGPoint(x: 0.42871*width, y: 0.51992*height), control2: CGPoint(x: 0.42651*width, y: 0.50888*height))
        path.addCurve(to: CGPoint(x: 0.41827*width, y: 0.49181*height), control1: CGPoint(x: 0.40822*width, y: 0.50736*height), control2: CGPoint(x: 0.40822*width, y: 0.49264*height))
        path.addCurve(to: CGPoint(x: 0.42136*width, y: 0.4763*height), control1: CGPoint(x: 0.42651*width, y: 0.49112*height), control2: CGPoint(x: 0.42871*width, y: 0.48008*height))
        path.addCurve(to: CGPoint(x: 0.42763*width, y: 0.46115*height), control1: CGPoint(x: 0.41239*width, y: 0.47168*height), control2: CGPoint(x: 0.41802*width, y: 0.45807*height))
        path.addCurve(to: CGPoint(x: 0.43642*width, y: 0.44801*height), control1: CGPoint(x: 0.4355*width, y: 0.46368*height), control2: CGPoint(x: 0.44176*width, y: 0.45431*height))
        path.addCurve(to: CGPoint(x: 0.44801*width, y: 0.43642*height), control1: CGPoint(x: 0.42989*width, y: 0.4403*height), control2: CGPoint(x: 0.4403*width, y: 0.42989*height))
        path.addCurve(to: CGPoint(x: 0.46115*width, y: 0.42763*height), control1: CGPoint(x: 0.45431*width, y: 0.44176*height), control2: CGPoint(x: 0.46368*width, y: 0.4355*height))
        path.addCurve(to: CGPoint(x: 0.4763*width, y: 0.42136*height), control1: CGPoint(x: 0.45807*width, y: 0.41802*height), control2: CGPoint(x: 0.47168*width, y: 0.41239*height))
        path.addCurve(to: CGPoint(x: 0.49181*width, y: 0.41827*height), control1: CGPoint(x: 0.48008*width, y: 0.42871*height), control2: CGPoint(x: 0.49112*width, y: 0.42651*height))
        path.closeSubpath()
        return path
    }
}
public struct Hibiscus: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.81261*width, y: 0.59688*height))
        path.addCurve(to: CGPoint(x: 0.87913*width, y: 0.61765*height), control1: CGPoint(x: 0.83151*width, y: 0.60998*height), control2: CGPoint(x: 0.85442*width, y: 0.61765*height))
        path.addCurve(to: CGPoint(x: 0.99634*width, y: 0.5*height), control1: CGPoint(x: 0.94386*width, y: 0.61765*height), control2: CGPoint(x: 0.99634*width, y: 0.56497*height))
        path.addCurve(to: CGPoint(x: 0.87913*width, y: 0.38235*height), control1: CGPoint(x: 0.99634*width, y: 0.43503*height), control2: CGPoint(x: 0.94386*width, y: 0.38235*height))
        path.addCurve(to: CGPoint(x: 0.81261*width, y: 0.40312*height), control1: CGPoint(x: 0.85443*width, y: 0.38235*height), control2: CGPoint(x: 0.83151*width, y: 0.39002*height))
        path.addCurve(to: CGPoint(x: 0.57144*width, y: 0.48628*height), control1: CGPoint(x: 0.73392*width, y: 0.44633*height), control2: CGPoint(x: 0.57144*width, y: 0.48628*height))
        path.addLine(to: CGPoint(x: 0.57144*width, y: 0.51372*height))
        path.addCurve(to: CGPoint(x: 0.81261*width, y: 0.59688*height), control1: CGPoint(x: 0.57144*width, y: 0.51372*height), control2: CGPoint(x: 0.73391*width, y: 0.55367*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.65226*width, y: 0.79166*height))
        path.addCurve(to: CGPoint(x: 0.68467*width, y: 0.85356*height), control1: CGPoint(x: 0.6564*width, y: 0.81433*height), control2: CGPoint(x: 0.6672*width, y: 0.83602*height))
        path.addCurve(to: CGPoint(x: 0.85044*width, y: 0.85356*height), control1: CGPoint(x: 0.73044*width, y: 0.8995*height), control2: CGPoint(x: 0.80466*width, y: 0.8995*height))
        path.addCurve(to: CGPoint(x: 0.85044*width, y: 0.68718*height), control1: CGPoint(x: 0.89621*width, y: 0.80761*height), control2: CGPoint(x: 0.89621*width, y: 0.73312*height))
        path.addCurve(to: CGPoint(x: 0.78877*width, y: 0.65465*height), control1: CGPoint(x: 0.83297*width, y: 0.66964*height), control2: CGPoint(x: 0.81136*width, y: 0.65881*height))
        path.addCurve(to: CGPoint(x: 0.55965*width, y: 0.54229*height), control1: CGPoint(x: 0.70268*width, y: 0.62936*height), control2: CGPoint(x: 0.55965*width, y: 0.54229*height))
        path.addLine(to: CGPoint(x: 0.54031*width, y: 0.5617*height))
        path.addCurve(to: CGPoint(x: 0.65226*width, y: 0.79166*height), control1: CGPoint(x: 0.54031*width, y: 0.5617*height), control2: CGPoint(x: 0.62706*width, y: 0.70525*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.40165*width, y: 0.81559*height))
        path.addCurve(to: CGPoint(x: 0.38096*width, y: 0.88235*height), control1: CGPoint(x: 0.3886*width, y: 0.83456*height), control2: CGPoint(x: 0.38096*width, y: 0.85756*height))
        path.addCurve(to: CGPoint(x: 0.49818*width, y: height), control1: CGPoint(x: 0.38096*width, y: 0.94733*height), control2: CGPoint(x: 0.43344*width, y: height))
        path.addCurve(to: CGPoint(x: 0.61539*width, y: 0.88235*height), control1: CGPoint(x: 0.56291*width, y: height), control2: CGPoint(x: 0.61539*width, y: 0.94733*height))
        path.addCurve(to: CGPoint(x: 0.5947*width, y: 0.81559*height), control1: CGPoint(x: 0.61539*width, y: 0.85756*height), control2: CGPoint(x: 0.60775*width, y: 0.83456*height))
        path.addCurve(to: CGPoint(x: 0.51185*width, y: 0.57353*height), control1: CGPoint(x: 0.55165*width, y: 0.73661*height), control2: CGPoint(x: 0.51185*width, y: 0.57353*height))
        path.addLine(to: CGPoint(x: 0.4845*width, y: 0.57353*height))
        path.addCurve(to: CGPoint(x: 0.40165*width, y: 0.81559*height), control1: CGPoint(x: 0.4845*width, y: 0.57353*height), control2: CGPoint(x: 0.44471*width, y: 0.7366*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.20758*width, y: 0.65465*height))
        path.addCurve(to: CGPoint(x: 0.14591*width, y: 0.68718*height), control1: CGPoint(x: 0.18499*width, y: 0.6588*height), control2: CGPoint(x: 0.16338*width, y: 0.66964*height))
        path.addCurve(to: CGPoint(x: 0.14591*width, y: 0.85356*height), control1: CGPoint(x: 0.10014*width, y: 0.73312*height), control2: CGPoint(x: 0.10014*width, y: 0.80761*height))
        path.addCurve(to: CGPoint(x: 0.31168*width, y: 0.85356*height), control1: CGPoint(x: 0.19169*width, y: 0.8995*height), control2: CGPoint(x: 0.26591*width, y: 0.8995*height))
        path.addCurve(to: CGPoint(x: 0.34409*width, y: 0.79167*height), control1: CGPoint(x: 0.32915*width, y: 0.83602*height), control2: CGPoint(x: 0.33995*width, y: 0.81434*height))
        path.addCurve(to: CGPoint(x: 0.45604*width, y: 0.5617*height), control1: CGPoint(x: 0.36929*width, y: 0.70526*height), control2: CGPoint(x: 0.45604*width, y: 0.5617*height))
        path.addLine(to: CGPoint(x: 0.4367*width, y: 0.54229*height))
        path.addCurve(to: CGPoint(x: 0.20758*width, y: 0.65465*height), control1: CGPoint(x: 0.4367*width, y: 0.54229*height), control2: CGPoint(x: 0.29367*width, y: 0.62936*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.18374*width, y: 0.40312*height))
        path.addCurve(to: CGPoint(x: 0.11722*width, y: 0.38235*height), control1: CGPoint(x: 0.16484*width, y: 0.39002*height), control2: CGPoint(x: 0.14192*width, y: 0.38235*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.5*height), control1: CGPoint(x: 0.05248*width, y: 0.38235*height), control2: CGPoint(x: 0, y: 0.43503*height))
        path.addCurve(to: CGPoint(x: 0.11722*width, y: 0.61765*height), control1: CGPoint(x: 0, y: 0.56497*height), control2: CGPoint(x: 0.05248*width, y: 0.61765*height))
        path.addCurve(to: CGPoint(x: 0.18373*width, y: 0.59688*height), control1: CGPoint(x: 0.14192*width, y: 0.61765*height), control2: CGPoint(x: 0.16483*width, y: 0.60998*height))
        path.addCurve(to: CGPoint(x: 0.42491*width, y: 0.51372*height), control1: CGPoint(x: 0.26243*width, y: 0.55367*height), control2: CGPoint(x: 0.42491*width, y: 0.51372*height))
        path.addLine(to: CGPoint(x: 0.42491*width, y: 0.48628*height))
        path.addCurve(to: CGPoint(x: 0.18374*width, y: 0.40312*height), control1: CGPoint(x: 0.42491*width, y: 0.48628*height), control2: CGPoint(x: 0.26243*width, y: 0.44633*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.34408*width, y: 0.20834*height))
        path.addCurve(to: CGPoint(x: 0.31168*width, y: 0.14645*height), control1: CGPoint(x: 0.33995*width, y: 0.18567*height), control2: CGPoint(x: 0.32915*width, y: 0.16398*height))
        path.addCurve(to: CGPoint(x: 0.14591*width, y: 0.14645*height), control1: CGPoint(x: 0.2659*width, y: 0.1005*height), control2: CGPoint(x: 0.19169*width, y: 0.1005*height))
        path.addCurve(to: CGPoint(x: 0.14591*width, y: 0.31283*height), control1: CGPoint(x: 0.10013*width, y: 0.19239*height), control2: CGPoint(x: 0.10013*width, y: 0.26688*height))
        path.addCurve(to: CGPoint(x: 0.20757*width, y: 0.34535*height), control1: CGPoint(x: 0.16338*width, y: 0.33036*height), control2: CGPoint(x: 0.18498*width, y: 0.3412*height))
        path.addCurve(to: CGPoint(x: 0.4367*width, y: 0.45771*height), control1: CGPoint(x: 0.29366*width, y: 0.37064*height), control2: CGPoint(x: 0.4367*width, y: 0.45771*height))
        path.addLine(to: CGPoint(x: 0.45604*width, y: 0.4383*height))
        path.addCurve(to: CGPoint(x: 0.34408*width, y: 0.20834*height), control1: CGPoint(x: 0.45604*width, y: 0.4383*height), control2: CGPoint(x: 0.36929*width, y: 0.29475*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.59469*width, y: 0.18441*height))
        path.addCurve(to: CGPoint(x: 0.61538*width, y: 0.11765*height), control1: CGPoint(x: 0.60774*width, y: 0.16545*height), control2: CGPoint(x: 0.61538*width, y: 0.14244*height))
        path.addCurve(to: CGPoint(x: 0.49817*width, y: 0), control1: CGPoint(x: 0.61538*width, y: 0.05267*height), control2: CGPoint(x: 0.5629*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.38095*width, y: 0.11765*height), control1: CGPoint(x: 0.43343*width, y: 0), control2: CGPoint(x: 0.38095*width, y: 0.05267*height))
        path.addCurve(to: CGPoint(x: 0.40164*width, y: 0.18441*height), control1: CGPoint(x: 0.38095*width, y: 0.14244*height), control2: CGPoint(x: 0.38859*width, y: 0.16544*height))
        path.addCurve(to: CGPoint(x: 0.48449*width, y: 0.42647*height), control1: CGPoint(x: 0.4447*width, y: 0.26339*height), control2: CGPoint(x: 0.48449*width, y: 0.42647*height))
        path.addLine(to: CGPoint(x: 0.51184*width, y: 0.42647*height))
        path.addCurve(to: CGPoint(x: 0.59469*width, y: 0.18441*height), control1: CGPoint(x: 0.51184*width, y: 0.42647*height), control2: CGPoint(x: 0.55164*width, y: 0.2634*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.78877*width, y: 0.34535*height))
        path.addCurve(to: CGPoint(x: 0.85044*width, y: 0.31282*height), control1: CGPoint(x: 0.81136*width, y: 0.3412*height), control2: CGPoint(x: 0.83297*width, y: 0.33036*height))
        path.addCurve(to: CGPoint(x: 0.85044*width, y: 0.14645*height), control1: CGPoint(x: 0.89621*width, y: 0.26688*height), control2: CGPoint(x: 0.89621*width, y: 0.19239*height))
        path.addCurve(to: CGPoint(x: 0.68467*width, y: 0.14645*height), control1: CGPoint(x: 0.80466*width, y: 0.1005*height), control2: CGPoint(x: 0.73044*width, y: 0.1005*height))
        path.addCurve(to: CGPoint(x: 0.65226*width, y: 0.20833*height), control1: CGPoint(x: 0.6672*width, y: 0.16398*height), control2: CGPoint(x: 0.6564*width, y: 0.18566*height))
        path.addCurve(to: CGPoint(x: 0.54031*width, y: 0.4383*height), control1: CGPoint(x: 0.62706*width, y: 0.29474*height), control2: CGPoint(x: 0.54031*width, y: 0.4383*height))
        path.addLine(to: CGPoint(x: 0.55965*width, y: 0.45771*height))
        path.addCurve(to: CGPoint(x: 0.78877*width, y: 0.34535*height), control1: CGPoint(x: 0.55965*width, y: 0.45771*height), control2: CGPoint(x: 0.70268*width, y: 0.37064*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.48886*width, y: 0.40681*height))
        path.addCurve(to: CGPoint(x: 0.50748*width, y: 0.40681*height), control1: CGPoint(x: 0.48981*width, y: 0.39534*height), control2: CGPoint(x: 0.50653*width, y: 0.39534*height))
        path.addCurve(to: CGPoint(x: 0.5251*width, y: 0.41033*height), control1: CGPoint(x: 0.50826*width, y: 0.4162*height), control2: CGPoint(x: 0.5208*width, y: 0.41871*height))
        path.addCurve(to: CGPoint(x: 0.5423*width, y: 0.41748*height), control1: CGPoint(x: 0.53035*width, y: 0.4001*height), control2: CGPoint(x: 0.5458*width, y: 0.40652*height))
        path.addCurve(to: CGPoint(x: 0.55724*width, y: 0.4275*height), control1: CGPoint(x: 0.53944*width, y: 0.42646*height), control2: CGPoint(x: 0.55007*width, y: 0.43359*height))
        path.addCurve(to: CGPoint(x: 0.57041*width, y: 0.44071*height), control1: CGPoint(x: 0.56599*width, y: 0.42006*height), control2: CGPoint(x: 0.57782*width, y: 0.43193*height))
        path.addCurve(to: CGPoint(x: 0.58038*width, y: 0.45571*height), control1: CGPoint(x: 0.56434*width, y: 0.4479*height), control2: CGPoint(x: 0.57144*width, y: 0.45858*height))
        path.addCurve(to: CGPoint(x: 0.58751*width, y: 0.47297*height), control1: CGPoint(x: 0.59131*width, y: 0.45219*height), control2: CGPoint(x: 0.59771*width, y: 0.4677*height))
        path.addCurve(to: CGPoint(x: 0.59101*width, y: 0.49065*height), control1: CGPoint(x: 0.57916*width, y: 0.47729*height), control2: CGPoint(x: 0.58166*width, y: 0.48988*height))
        path.addCurve(to: CGPoint(x: 0.59101*width, y: 0.50935*height), control1: CGPoint(x: 0.60244*width, y: 0.49161*height), control2: CGPoint(x: 0.60244*width, y: 0.50839*height))
        path.addCurve(to: CGPoint(x: 0.58751*width, y: 0.52703*height), control1: CGPoint(x: 0.58166*width, y: 0.51012*height), control2: CGPoint(x: 0.57916*width, y: 0.52271*height))
        path.addCurve(to: CGPoint(x: 0.58038*width, y: 0.5443*height), control1: CGPoint(x: 0.59771*width, y: 0.5323*height), control2: CGPoint(x: 0.59131*width, y: 0.54781*height))
        path.addCurve(to: CGPoint(x: 0.57041*width, y: 0.55929*height), control1: CGPoint(x: 0.57144*width, y: 0.54142*height), control2: CGPoint(x: 0.56434*width, y: 0.5521*height))
        path.addCurve(to: CGPoint(x: 0.55724*width, y: 0.5725*height), control1: CGPoint(x: 0.57782*width, y: 0.56807*height), control2: CGPoint(x: 0.56599*width, y: 0.57994*height))
        path.addCurve(to: CGPoint(x: 0.5423*width, y: 0.58252*height), control1: CGPoint(x: 0.55007*width, y: 0.56641*height), control2: CGPoint(x: 0.53944*width, y: 0.57354*height))
        path.addCurve(to: CGPoint(x: 0.5251*width, y: 0.58967*height), control1: CGPoint(x: 0.5458*width, y: 0.59348*height), control2: CGPoint(x: 0.53035*width, y: 0.5999*height))
        path.addCurve(to: CGPoint(x: 0.50748*width, y: 0.59319*height), control1: CGPoint(x: 0.5208*width, y: 0.58129*height), control2: CGPoint(x: 0.50826*width, y: 0.5838*height))
        path.addCurve(to: CGPoint(x: 0.48886*width, y: 0.59319*height), control1: CGPoint(x: 0.50653*width, y: 0.60466*height), control2: CGPoint(x: 0.48981*width, y: 0.60466*height))
        path.addCurve(to: CGPoint(x: 0.47124*width, y: 0.58967*height), control1: CGPoint(x: 0.48808*width, y: 0.5838*height), control2: CGPoint(x: 0.47554*width, y: 0.58129*height))
        path.addCurve(to: CGPoint(x: 0.45404*width, y: 0.58252*height), control1: CGPoint(x: 0.46599*width, y: 0.5999*height), control2: CGPoint(x: 0.45054*width, y: 0.59348*height))
        path.addCurve(to: CGPoint(x: 0.4391*width, y: 0.5725*height), control1: CGPoint(x: 0.4569*width, y: 0.57354*height), control2: CGPoint(x: 0.44626*width, y: 0.56641*height))
        path.addCurve(to: CGPoint(x: 0.42593*width, y: 0.55929*height), control1: CGPoint(x: 0.43035*width, y: 0.57994*height), control2: CGPoint(x: 0.41852*width, y: 0.56807*height))
        path.addCurve(to: CGPoint(x: 0.41595*width, y: 0.5443*height), control1: CGPoint(x: 0.432*width, y: 0.5521*height), control2: CGPoint(x: 0.42489*width, y: 0.54142*height))
        path.addCurve(to: CGPoint(x: 0.40882*width, y: 0.52703*height), control1: CGPoint(x: 0.40503*width, y: 0.54781*height), control2: CGPoint(x: 0.39863*width, y: 0.5323*height))
        path.addCurve(to: CGPoint(x: 0.40532*width, y: 0.50935*height), control1: CGPoint(x: 0.41717*width, y: 0.52271*height), control2: CGPoint(x: 0.41468*width, y: 0.51012*height))
        path.addCurve(to: CGPoint(x: 0.40532*width, y: 0.49065*height), control1: CGPoint(x: 0.39389*width, y: 0.50839*height), control2: CGPoint(x: 0.39389*width, y: 0.49161*height))
        path.addCurve(to: CGPoint(x: 0.40882*width, y: 0.47297*height), control1: CGPoint(x: 0.41468*width, y: 0.48988*height), control2: CGPoint(x: 0.41717*width, y: 0.47729*height))
        path.addCurve(to: CGPoint(x: 0.41595*width, y: 0.45571*height), control1: CGPoint(x: 0.39863*width, y: 0.4677*height), control2: CGPoint(x: 0.40503*width, y: 0.45219*height))
        path.addCurve(to: CGPoint(x: 0.42593*width, y: 0.44071*height), control1: CGPoint(x: 0.42489*width, y: 0.45858*height), control2: CGPoint(x: 0.432*width, y: 0.4479*height))
        path.addCurve(to: CGPoint(x: 0.4391*width, y: 0.4275*height), control1: CGPoint(x: 0.41852*width, y: 0.43193*height), control2: CGPoint(x: 0.43035*width, y: 0.42006*height))
        path.addCurve(to: CGPoint(x: 0.45404*width, y: 0.41748*height), control1: CGPoint(x: 0.44626*width, y: 0.43359*height), control2: CGPoint(x: 0.4569*width, y: 0.42646*height))
        path.addCurve(to: CGPoint(x: 0.47124*width, y: 0.41033*height), control1: CGPoint(x: 0.45054*width, y: 0.40652*height), control2: CGPoint(x: 0.46599*width, y: 0.4001*height))
        path.addCurve(to: CGPoint(x: 0.48886*width, y: 0.40681*height), control1: CGPoint(x: 0.47554*width, y: 0.41871*height), control2: CGPoint(x: 0.48808*width, y: 0.4162*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.60696*width, y: 0.39081*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.58498*width, y: 0.36875*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.6403*width, y: 0.44091*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.61833*width, y: 0.41885*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.65201*width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.63004*width, y: 0.47794*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.6403*width, y: 0.55909*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.61833*width, y: 0.53703*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.60696*width, y: 0.60918*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.58497*width, y: 0.58713*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.55704*width, y: 0.64266*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.53507*width, y: 0.6206*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.49817*width, y: 0.65441*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.47619*width, y: 0.63235*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.4393*width, y: 0.64266*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.41732*width, y: 0.6206*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.38939*width, y: 0.60918*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.36741*width, y: 0.58713*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.35604*width, y: 0.55909*height))
        path.addLine(to: CGPoint(x: 0.49818*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.33406*width, y: 0.53703*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.34432*width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.32234*width, y: 0.47794*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.35604*width, y: 0.44091*height))
        path.addLine(to: CGPoint(x: 0.49818*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.33406*width, y: 0.41885*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.38939*width, y: 0.39082*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.36741*width, y: 0.36876*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.4393*width, y: 0.35734*height))
        path.addLine(to: CGPoint(x: 0.49818*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.41733*width, y: 0.33528*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.49818*width, y: 0.34559*height))
        path.addLine(to: CGPoint(x: 0.49818*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.4762*width, y: 0.32353*height, width: 0.04396*width, height: 0.04412*height))
        path.move(to: CGPoint(x: 0.55704*width, y: 0.35734*height))
        path.addLine(to: CGPoint(x: 0.49817*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.53506*width, y: 0.33528*height, width: 0.04396*width, height: 0.04412*height))
        return path
    }
}
public struct Orchid: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.85316*width, y: 0.66487*height))
        path.addCurve(to: CGPoint(x: 0.58479*width, y: 0.62136*height), control1: CGPoint(x: 0.79079*width, y: 0.577*height), control2: CGPoint(x: 0.67064*width, y: 0.55752*height))
        path.addCurve(to: CGPoint(x: 0.54229*width, y: 0.89607*height), control1: CGPoint(x: 0.49895*width, y: 0.68521*height), control2: CGPoint(x: 0.47992*width, y: 0.8082*height))
        path.addCurve(to: CGPoint(x: 0.75954*width, y: 0.86756*height), control1: CGPoint(x: 0.60466*width, y: 0.98395*height), control2: CGPoint(x: 0.71815*width, y: 0.95336*height))
        path.addCurve(to: CGPoint(x: 0.85316*width, y: 0.66487*height), control1: CGPoint(x: 0.85299*width, y: 0.85307*height), control2: CGPoint(x: 0.91552*width, y: 0.75275*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.48516*width, y: 0.47859*height))
        path.addCurve(to: CGPoint(x: 0.5049*width, y: 0.77763*height), control1: CGPoint(x: 0.47224*width, y: 0.4882*height), control2: CGPoint(x: 0.5049*width, y: 0.77763*height))
        path.addLine(to: CGPoint(x: 0.75396*width, y: 0.5924*height))
        path.addCurve(to: CGPoint(x: 0.48516*width, y: 0.47859*height), control1: CGPoint(x: 0.75396*width, y: 0.5924*height), control2: CGPoint(x: 0.49808*width, y: 0.46898*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.45298*width, y: 0.89443*height))
        path.addCurve(to: CGPoint(x: 0.41048*width, y: 0.61972*height), control1: CGPoint(x: 0.51535*width, y: 0.80655*height), control2: CGPoint(x: 0.49632*width, y: 0.68356*height))
        path.addCurve(to: CGPoint(x: 0.14212*width, y: 0.66322*height), control1: CGPoint(x: 0.32464*width, y: 0.55587*height), control2: CGPoint(x: 0.20449*width, y: 0.57535*height))
        path.addCurve(to: CGPoint(x: 0.23574*width, y: 0.86592*height), control1: CGPoint(x: 0.07975*width, y: 0.7511*height), control2: CGPoint(x: 0.14324*width, y: 0.85214*height))
        path.addCurve(to: CGPoint(x: 0.45298*width, y: 0.89443*height), control1: CGPoint(x: 0.27808*width, y: 0.95243*height), control2: CGPoint(x: 0.39062*width, y: 0.9823*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.51233*width, y: 0.47859*height))
        path.addCurve(to: CGPoint(x: 0.24061*width, y: 0.59022*height), control1: CGPoint(x: 0.49941*width, y: 0.46898*height), control2: CGPoint(x: 0.24061*width, y: 0.59022*height))
        path.addLine(to: CGPoint(x: 0.48966*width, y: 0.77546*height))
        path.addCurve(to: CGPoint(x: 0.51233*width, y: 0.47859*height), control1: CGPoint(x: 0.48966*width, y: 0.77546*height), control2: CGPoint(x: 0.52526*width, y: 0.48821*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.11605*width, y: 0.57578*height))
        path.addCurve(to: CGPoint(x: 0.35815*width, y: 0.44951*height), control1: CGPoint(x: 0.21697*width, y: 0.60934*height), control2: CGPoint(x: 0.32536*width, y: 0.55281*height))
        path.addCurve(to: CGPoint(x: 0.23479*width, y: 0.20168*height), control1: CGPoint(x: 0.39093*width, y: 0.3462*height), control2: CGPoint(x: 0.33571*width, y: 0.23525*height))
        path.addCurve(to: CGPoint(x: 0.07541*width, y: 0.35546*height), control1: CGPoint(x: 0.13388*width, y: 0.16812*height), control2: CGPoint(x: 0.05963*width, y: 0.26115*height))
        path.addCurve(to: CGPoint(x: 0.11605*width, y: 0.57578*height), control1: CGPoint(x: 0.00812*width, y: 0.42342*height), control2: CGPoint(x: 0.01514*width, y: 0.54221*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.52073*width, y: 0.50506*height))
        path.addCurve(to: CGPoint(x: 0.33305*width, y: 0.27501*height), control1: CGPoint(x: 0.52567*width, y: 0.48951*height), control2: CGPoint(x: 0.33305*width, y: 0.27501*height))
        path.addLine(to: CGPoint(x: 0.23792*width, y: 0.57472*height))
        path.addCurve(to: CGPoint(x: 0.52073*width, y: 0.50506*height), control1: CGPoint(x: 0.23792*width, y: 0.57472*height), control2: CGPoint(x: 0.51579*width, y: 0.52061*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.30799*width, y: 0.14929*height))
        path.addCurve(to: CGPoint(x: 0.50012*width, y: 0.34596*height), control1: CGPoint(x: 0.30799*width, y: 0.25791*height), control2: CGPoint(x: 0.39401*width, y: 0.34596*height))
        path.addCurve(to: CGPoint(x: 0.69224*width, y: 0.14929*height), control1: CGPoint(x: 0.60623*width, y: 0.34596*height), control2: CGPoint(x: 0.69224*width, y: 0.25791*height))
        path.addCurve(to: CGPoint(x: 0.50012*width, y: 0.04164*height), control1: CGPoint(x: 0.69224*width, y: 0.04067*height), control2: CGPoint(x: 0.58286*width, y: -0.00287*height))
        path.addCurve(to: CGPoint(x: 0.30799*width, y: 0.14929*height), control1: CGPoint(x: 0.41618*width, y: -0.00287*height), control2: CGPoint(x: 0.30799*width, y: 0.04067*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49875*width, y: 0.52141*height))
        path.addCurve(to: CGPoint(x: 0.65448*width, y: 0.26761*height), control1: CGPoint(x: 0.51472*width, y: 0.52141*height), control2: CGPoint(x: 0.65448*width, y: 0.26761*height))
        path.addLine(to: CGPoint(x: 0.34663*width, y: 0.26761*height))
        path.addCurve(to: CGPoint(x: 0.49875*width, y: 0.52141*height), control1: CGPoint(x: 0.34663*width, y: 0.26761*height), control2: CGPoint(x: 0.48277*width, y: 0.52141*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.76355*width, y: 0.20435*height))
        path.addCurve(to: CGPoint(x: 0.6402*width, y: 0.45217*height), control1: CGPoint(x: 0.66264*width, y: 0.23791*height), control2: CGPoint(x: 0.60741*width, y: 0.34887*height))
        path.addCurve(to: CGPoint(x: 0.88229*width, y: 0.57844*height), control1: CGPoint(x: 0.67299*width, y: 0.55547*height), control2: CGPoint(x: 0.78138*width, y: 0.61201*height))
        path.addCurve(to: CGPoint(x: 0.92294*width, y: 0.35813*height), control1: CGPoint(x: 0.9832*width, y: 0.54488*height), control2: CGPoint(x: 0.98986*width, y: 0.42494*height))
        path.addCurve(to: CGPoint(x: 0.76355*width, y: 0.20435*height), control1: CGPoint(x: 0.93835*width, y: 0.26266*height), control2: CGPoint(x: 0.86446*width, y: 0.17078*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.47677*width, y: 0.50505*height))
        path.addCurve(to: CGPoint(x: 0.76069*width, y: 0.57824*height), control1: CGPoint(x: 0.4817*width, y: 0.52061*height), control2: CGPoint(x: 0.76069*width, y: 0.57824*height))
        path.addLine(to: CGPoint(x: 0.66556*width, y: 0.27853*height))
        path.addCurve(to: CGPoint(x: 0.47677*width, y: 0.50505*height), control1: CGPoint(x: 0.66556*width, y: 0.27853*height), control2: CGPoint(x: 0.47183*width, y: 0.4895*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.47523*width, y: 0.36205*height))
        path.addCurve(to: CGPoint(x: 0.51899*width, y: 0.36205*height), control1: CGPoint(x: 0.47855*width, y: 0.33581*height), control2: CGPoint(x: 0.51567*width, y: 0.33581*height))
        path.addCurve(to: CGPoint(x: 0.55691*width, y: 0.37467*height), control1: CGPoint(x: 0.52139*width, y: 0.38094*height), control2: CGPoint(x: 0.54413*width, y: 0.38851*height))
        path.addCurve(to: CGPoint(x: 0.59232*width, y: 0.401*height), control1: CGPoint(x: 0.57468*width, y: 0.35543*height), control2: CGPoint(x: 0.60471*width, y: 0.37777*height))
        path.addCurve(to: CGPoint(x: 0.61576*width, y: 0.43402*height), control1: CGPoint(x: 0.58342*width, y: 0.41772*height), control2: CGPoint(x: 0.59747*width, y: 0.43753*height))
        path.addCurve(to: CGPoint(x: 0.62928*width, y: 0.47663*height), control1: CGPoint(x: 0.64117*width, y: 0.42915*height), control2: CGPoint(x: 0.65264*width, y: 0.46529*height))
        path.addCurve(to: CGPoint(x: 0.62928*width, y: 0.51745*height), control1: CGPoint(x: 0.61248*width, y: 0.4848*height), control2: CGPoint(x: 0.61248*width, y: 0.50928*height))
        path.addCurve(to: CGPoint(x: 0.61576*width, y: 0.56006*height), control1: CGPoint(x: 0.65264*width, y: 0.5288*height), control2: CGPoint(x: 0.64117*width, y: 0.56493*height))
        path.addCurve(to: CGPoint(x: 0.59232*width, y: 0.59308*height), control1: CGPoint(x: 0.59747*width, y: 0.55656*height), control2: CGPoint(x: 0.58342*width, y: 0.57636*height))
        path.addCurve(to: CGPoint(x: 0.55691*width, y: 0.61941*height), control1: CGPoint(x: 0.60471*width, y: 0.61631*height), control2: CGPoint(x: 0.57468*width, y: 0.63865*height))
        path.addCurve(to: CGPoint(x: 0.51899*width, y: 0.63203*height), control1: CGPoint(x: 0.54413*width, y: 0.60558*height), control2: CGPoint(x: 0.52139*width, y: 0.61314*height))
        path.addCurve(to: CGPoint(x: 0.47523*width, y: 0.63203*height), control1: CGPoint(x: 0.51567*width, y: 0.65828*height), control2: CGPoint(x: 0.47855*width, y: 0.65828*height))
        path.addCurve(to: CGPoint(x: 0.43731*width, y: 0.61941*height), control1: CGPoint(x: 0.47283*width, y: 0.61314*height), control2: CGPoint(x: 0.45009*width, y: 0.60558*height))
        path.addCurve(to: CGPoint(x: 0.4019*width, y: 0.59308*height), control1: CGPoint(x: 0.41954*width, y: 0.63865*height), control2: CGPoint(x: 0.38952*width, y: 0.61631*height))
        path.addCurve(to: CGPoint(x: 0.37846*width, y: 0.56006*height), control1: CGPoint(x: 0.4108*width, y: 0.57636*height), control2: CGPoint(x: 0.39675*width, y: 0.55656*height))
        path.addCurve(to: CGPoint(x: 0.36493*width, y: 0.51745*height), control1: CGPoint(x: 0.35305*width, y: 0.56493*height), control2: CGPoint(x: 0.34158*width, y: 0.5288*height))
        path.addCurve(to: CGPoint(x: 0.36493*width, y: 0.47663*height), control1: CGPoint(x: 0.38174*width, y: 0.50928*height), control2: CGPoint(x: 0.38174*width, y: 0.4848*height))
        path.addCurve(to: CGPoint(x: 0.37846*width, y: 0.43402*height), control1: CGPoint(x: 0.34158*width, y: 0.46529*height), control2: CGPoint(x: 0.35305*width, y: 0.42915*height))
        path.addCurve(to: CGPoint(x: 0.4019*width, y: 0.401*height), control1: CGPoint(x: 0.39675*width, y: 0.43753*height), control2: CGPoint(x: 0.4108*width, y: 0.41772*height))
        path.addCurve(to: CGPoint(x: 0.43731*width, y: 0.37467*height), control1: CGPoint(x: 0.38952*width, y: 0.37777*height), control2: CGPoint(x: 0.41954*width, y: 0.35543*height))
        path.addCurve(to: CGPoint(x: 0.47523*width, y: 0.36205*height), control1: CGPoint(x: 0.45009*width, y: 0.38851*height), control2: CGPoint(x: 0.47283*width, y: 0.38094*height))
        path.closeSubpath()
        return path
    }
}
public struct Ixora: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.76317*width, y: 0.18674*height))
        path.addLine(to: CGPoint(x: 0.17228*width, y: 0.41846*height))
        path.move(to: CGPoint(x: 0.80887*width, y: 0.3026*height))
        path.addLine(to: CGPoint(x: 0.12657*width, y: 0.3026*height))
        path.move(to: CGPoint(x: 0.76317*width, y: 0.41846*height))
        path.addLine(to: CGPoint(x: 0.17228*width, y: 0.18674*height))
        path.move(to: CGPoint(x: 0.6383*width, y: 0.50328*height))
        path.addLine(to: CGPoint(x: 0.29715*width, y: 0.10192*height))
        path.move(to: CGPoint(x: 0.46772*width, y: 0.53432*height))
        path.addLine(to: CGPoint(x: 0.46772*width, y: 0.07088*height))
        path.move(to: CGPoint(x: 0.29715*width, y: 0.50328*height))
        path.addLine(to: CGPoint(x: 0.6383*width, y: 0.10192*height))
        path.move(to: CGPoint(x: 0.17228*width, y: 0.41846*height))
        path.addLine(to: CGPoint(x: 0.76317*width, y: 0.18674*height))
        path.move(to: CGPoint(x: 0.12657*width, y: 0.3026*height))
        path.addLine(to: CGPoint(x: 0.80887*width, y: 0.3026*height))
        path.move(to: CGPoint(x: 0.17228*width, y: 0.18674*height))
        path.addLine(to: CGPoint(x: 0.76317*width, y: 0.41846*height))
        path.move(to: CGPoint(x: 0.29715*width, y: 0.10192*height))
        path.addLine(to: CGPoint(x: 0.6383*width, y: 0.50328*height))
        path.move(to: CGPoint(x: 0.46772*width, y: 0.07088*height))
        path.addLine(to: CGPoint(x: 0.46772*width, y: 0.53432*height))
        path.move(to: CGPoint(x: 0.6383*width, y: 0.10192*height))
        path.addLine(to: CGPoint(x: 0.29715*width, y: 0.50328*height))
        path.move(to: CGPoint(x: 0.63963*width, y: 0.06011*height))
        path.addCurve(to: CGPoint(x: 0.68817*width, y: 0.07915*height), control1: CGPoint(x: 0.65923*width, y: 0.04063*height), control2: CGPoint(x: 0.7032*width, y: 0.05788*height))
        path.addCurve(to: CGPoint(x: 0.69764*width, y: 0.10317*height), control1: CGPoint(x: 0.68216*width, y: 0.08765*height), control2: CGPoint(x: 0.68618*width, y: 0.09785*height))
        path.addCurve(to: CGPoint(x: 0.66962*width, y: 0.13614*height), control1: CGPoint(x: 0.72632*width, y: 0.11648*height), control2: CGPoint(x: 0.70093*width, y: 0.14635*height))
        path.addCurve(to: CGPoint(x: 0.63425*width, y: 0.14258*height), control1: CGPoint(x: 0.65711*width, y: 0.13206*height), control2: CGPoint(x: 0.64208*width, y: 0.1348*height))
        path.addCurve(to: CGPoint(x: 0.58571*width, y: 0.12354*height), control1: CGPoint(x: 0.61466*width, y: 0.16206*height), control2: CGPoint(x: 0.57068*width, y: 0.14481*height))
        path.addCurve(to: CGPoint(x: 0.57623*width, y: 0.09952*height), control1: CGPoint(x: 0.59172*width, y: 0.11504*height), control2: CGPoint(x: 0.58769*width, y: 0.10484*height))
        path.addCurve(to: CGPoint(x: 0.60426*width, y: 0.06655*height), control1: CGPoint(x: 0.54756*width, y: 0.08621*height), control2: CGPoint(x: 0.57295*width, y: 0.05634*height))
        path.addCurve(to: CGPoint(x: 0.63963*width, y: 0.06011*height), control1: CGPoint(x: 0.61677*width, y: 0.07063*height), control2: CGPoint(x: 0.63179*width, y: 0.06789*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.61548*width, y: 0.10525*height))
        path.addCurve(to: CGPoint(x: 0.63119*width, y: 0.08677*height), control1: CGPoint(x: 0.6123*width, y: 0.0972*height), control2: CGPoint(x: 0.61934*width, y: 0.08892*height))
        path.addCurve(to: CGPoint(x: 0.65841*width, y: 0.09744*height), control1: CGPoint(x: 0.64304*width, y: 0.08461*height), control2: CGPoint(x: 0.65523*width, y: 0.08939*height))
        path.addCurve(to: CGPoint(x: 0.64269*width, y: 0.11593*height), control1: CGPoint(x: 0.66158*width, y: 0.10549*height), control2: CGPoint(x: 0.65455*width, y: 0.11377*height))
        path.addCurve(to: CGPoint(x: 0.61548*width, y: 0.10525*height), control1: CGPoint(x: 0.63084*width, y: 0.11808*height), control2: CGPoint(x: 0.61866*width, y: 0.11331*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.79773*width, y: 0.15633*height))
        path.addCurve(to: CGPoint(x: 0.82576*width, y: 0.1893*height), control1: CGPoint(x: 0.82904*width, y: 0.14612*height), control2: CGPoint(x: 0.85443*width, y: 0.17599*height))
        path.addCurve(to: CGPoint(x: 0.81628*width, y: 0.21332*height), control1: CGPoint(x: 0.8143*width, y: 0.19462*height), control2: CGPoint(x: 0.81027*width, y: 0.20482*height))
        path.addCurve(to: CGPoint(x: 0.76774*width, y: 0.23236*height), control1: CGPoint(x: 0.83132*width, y: 0.23459*height), control2: CGPoint(x: 0.78734*width, y: 0.25184*height))
        path.addCurve(to: CGPoint(x: 0.73237*width, y: 0.22592*height), control1: CGPoint(x: 0.75991*width, y: 0.22458*height), control2: CGPoint(x: 0.74488*width, y: 0.22184*height))
        path.addCurve(to: CGPoint(x: 0.70435*width, y: 0.19295*height), control1: CGPoint(x: 0.70106*width, y: 0.23613*height), control2: CGPoint(x: 0.67567*width, y: 0.20626*height))
        path.addCurve(to: CGPoint(x: 0.71383*width, y: 0.16893*height), control1: CGPoint(x: 0.71581*width, y: 0.18763*height), control2: CGPoint(x: 0.71983*width, y: 0.17743*height))
        path.addCurve(to: CGPoint(x: 0.76237*width, y: 0.14989*height), control1: CGPoint(x: 0.69879*width, y: 0.14766*height), control2: CGPoint(x: 0.74277*width, y: 0.13041*height))
        path.addCurve(to: CGPoint(x: 0.79773*width, y: 0.15633*height), control1: CGPoint(x: 0.7702*width, y: 0.15767*height), control2: CGPoint(x: 0.78522*width, y: 0.16041*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.74359*width, y: 0.18722*height))
        path.addCurve(to: CGPoint(x: 0.77081*width, y: 0.17655*height), control1: CGPoint(x: 0.74677*width, y: 0.17917*height), control2: CGPoint(x: 0.75895*width, y: 0.17439*height))
        path.addCurve(to: CGPoint(x: 0.78652*width, y: 0.19503*height), control1: CGPoint(x: 0.78266*width, y: 0.17871*height), control2: CGPoint(x: 0.7897*width, y: 0.18698*height))
        path.addCurve(to: CGPoint(x: 0.75931*width, y: 0.20571*height), control1: CGPoint(x: 0.78334*width, y: 0.20309*height), control2: CGPoint(x: 0.77116*width, y: 0.20787*height))
        path.addCurve(to: CGPoint(x: 0.74359*width, y: 0.18722*height), control1: CGPoint(x: 0.74745*width, y: 0.20355*height), control2: CGPoint(x: 0.74042*width, y: 0.19527*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.86383*width, y: 0.29335*height))
        path.addCurve(to: CGPoint(x: 0.86383*width, y: 0.33142*height), control1: CGPoint(x: 0.89847*width, y: 0.29514*height), control2: CGPoint(x: 0.89847*width, y: 0.32963*height))
        path.addCurve(to: CGPoint(x: 0.83794*width, y: 0.34901*height), control1: CGPoint(x: 0.84999*width, y: 0.33214*height), control2: CGPoint(x: 0.83899*width, y: 0.33961*height))
        path.addCurve(to: CGPoint(x: 0.78189*width, y: 0.34901*height), control1: CGPoint(x: 0.83531*width, y: 0.37253*height), control2: CGPoint(x: 0.78453*width, y: 0.37253*height))
        path.addCurve(to: CGPoint(x: 0.756*width, y: 0.33142*height), control1: CGPoint(x: 0.78084*width, y: 0.33961*height), control2: CGPoint(x: 0.76984*width, y: 0.33214*height))
        path.addCurve(to: CGPoint(x: 0.756*width, y: 0.29335*height), control1: CGPoint(x: 0.72137*width, y: 0.32963*height), control2: CGPoint(x: 0.72137*width, y: 0.29514*height))
        path.addCurve(to: CGPoint(x: 0.78189*width, y: 0.27576*height), control1: CGPoint(x: 0.76984*width, y: 0.29263*height), control2: CGPoint(x: 0.78084*width, y: 0.28516*height))
        path.addCurve(to: CGPoint(x: 0.83794*width, y: 0.27576*height), control1: CGPoint(x: 0.78453*width, y: 0.25224*height), control2: CGPoint(x: 0.83531*width, y: 0.25224*height))
        path.addCurve(to: CGPoint(x: 0.86383*width, y: 0.29335*height), control1: CGPoint(x: 0.83899*width, y: 0.28516*height), control2: CGPoint(x: 0.84999*width, y: 0.29263*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.7942*width, y: 0.30171*height))
        path.addCurve(to: CGPoint(x: 0.82563*width, y: 0.30171*height), control1: CGPoint(x: 0.80288*width, y: 0.29582*height), control2: CGPoint(x: 0.81695*width, y: 0.29582*height))
        path.addCurve(to: CGPoint(x: 0.82563*width, y: 0.32306*height), control1: CGPoint(x: 0.83431*width, y: 0.30761*height), control2: CGPoint(x: 0.83431*width, y: 0.31717*height))
        path.addCurve(to: CGPoint(x: 0.7942*width, y: 0.32306*height), control1: CGPoint(x: 0.81695*width, y: 0.32896*height), control2: CGPoint(x: 0.80288*width, y: 0.32896*height))
        path.addCurve(to: CGPoint(x: 0.7942*width, y: 0.30171*height), control1: CGPoint(x: 0.78552*width, y: 0.31717*height), control2: CGPoint(x: 0.78552*width, y: 0.30761*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.82021*width, y: 0.43446*height))
        path.addCurve(to: CGPoint(x: 0.79218*width, y: 0.46743*height), control1: CGPoint(x: 0.84888*width, y: 0.44777*height), control2: CGPoint(x: 0.82349*width, y: 0.47764*height))
        path.addCurve(to: CGPoint(x: 0.75681*width, y: 0.47387*height), control1: CGPoint(x: 0.77967*width, y: 0.46335*height), control2: CGPoint(x: 0.76464*width, y: 0.46608*height))
        path.addCurve(to: CGPoint(x: 0.70827*width, y: 0.45483*height), control1: CGPoint(x: 0.73721*width, y: 0.49334*height), control2: CGPoint(x: 0.69324*width, y: 0.4761*height))
        path.addCurve(to: CGPoint(x: 0.69879*width, y: 0.43081*height), control1: CGPoint(x: 0.71428*width, y: 0.44633*height), control2: CGPoint(x: 0.71025*width, y: 0.43613*height))
        path.addCurve(to: CGPoint(x: 0.72682*width, y: 0.39784*height), control1: CGPoint(x: 0.67012*width, y: 0.4175*height), control2: CGPoint(x: 0.69551*width, y: 0.38763*height))
        path.addCurve(to: CGPoint(x: 0.76219*width, y: 0.3914*height), control1: CGPoint(x: 0.73933*width, y: 0.40192*height), control2: CGPoint(x: 0.75436*width, y: 0.39918*height))
        path.addCurve(to: CGPoint(x: 0.81073*width, y: 0.41043*height), control1: CGPoint(x: 0.78178*width, y: 0.37192*height), control2: CGPoint(x: 0.82576*width, y: 0.38917*height))
        path.addCurve(to: CGPoint(x: 0.82021*width, y: 0.43446*height), control1: CGPoint(x: 0.80472*width, y: 0.41894*height), control2: CGPoint(x: 0.80874*width, y: 0.42914*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.75374*width, y: 0.41806*height))
        path.addCurve(to: CGPoint(x: 0.78096*width, y: 0.42873*height), control1: CGPoint(x: 0.7656*width, y: 0.4159*height), control2: CGPoint(x: 0.77778*width, y: 0.42068*height))
        path.addCurve(to: CGPoint(x: 0.76525*width, y: 0.44722*height), control1: CGPoint(x: 0.78414*width, y: 0.43678*height), control2: CGPoint(x: 0.7771*width, y: 0.44506*height))
        path.addCurve(to: CGPoint(x: 0.73803*width, y: 0.43654*height), control1: CGPoint(x: 0.75339*width, y: 0.44937*height), control2: CGPoint(x: 0.74121*width, y: 0.4446*height))
        path.addCurve(to: CGPoint(x: 0.75374*width, y: 0.41806*height), control1: CGPoint(x: 0.73486*width, y: 0.42849*height), control2: CGPoint(x: 0.74189*width, y: 0.42022*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.67854*width, y: 0.54185*height))
        path.addCurve(to: CGPoint(x: 0.63001*width, y: 0.56089*height), control1: CGPoint(x: 0.69358*width, y: 0.56312*height), control2: CGPoint(x: 0.6496*width, y: 0.58036*height))
        path.addCurve(to: CGPoint(x: 0.59463*width, y: 0.55445*height), control1: CGPoint(x: 0.62217*width, y: 0.5531*height), control2: CGPoint(x: 0.60714*width, y: 0.55037*height))
        path.addCurve(to: CGPoint(x: 0.56661*width, y: 0.52148*height), control1: CGPoint(x: 0.56333*width, y: 0.56466*height), control2: CGPoint(x: 0.53794*width, y: 0.53479*height))
        path.addCurve(to: CGPoint(x: 0.57609*width, y: 0.49745*height), control1: CGPoint(x: 0.57807*width, y: 0.51616*height), control2: CGPoint(x: 0.58209*width, y: 0.50595*height))
        path.addCurve(to: CGPoint(x: 0.62463*width, y: 0.47842*height), control1: CGPoint(x: 0.56106*width, y: 0.47618*height), control2: CGPoint(x: 0.60503*width, y: 0.45894*height))
        path.addCurve(to: CGPoint(x: 0.65999*width, y: 0.48485*height), control1: CGPoint(x: 0.63246*width, y: 0.4862*height), control2: CGPoint(x: 0.64748*width, y: 0.48894*height))
        path.addCurve(to: CGPoint(x: 0.68802*width, y: 0.51783*height), control1: CGPoint(x: 0.69131*width, y: 0.47464*height), control2: CGPoint(x: 0.71669*width, y: 0.50451*height))
        path.addCurve(to: CGPoint(x: 0.67854*width, y: 0.54185*height), control1: CGPoint(x: 0.67656*width, y: 0.52315*height), control2: CGPoint(x: 0.67254*width, y: 0.53335*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.63306*width, y: 0.50507*height))
        path.addCurve(to: CGPoint(x: 0.64878*width, y: 0.52356*height), control1: CGPoint(x: 0.64492*width, y: 0.50723*height), control2: CGPoint(x: 0.65196*width, y: 0.51551*height))
        path.addCurve(to: CGPoint(x: 0.62156*width, y: 0.53423*height), control1: CGPoint(x: 0.6456*width, y: 0.53161*height), control2: CGPoint(x: 0.63342*width, y: 0.53639*height))
        path.addCurve(to: CGPoint(x: 0.60584*width, y: 0.51575*height), control1: CGPoint(x: 0.60971*width, y: 0.53208*height), control2: CGPoint(x: 0.60267*width, y: 0.5238*height))
        path.addCurve(to: CGPoint(x: 0.63306*width, y: 0.50507*height), control1: CGPoint(x: 0.60902*width, y: 0.50769*height), control2: CGPoint(x: 0.62121*width, y: 0.50292*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.47682*width, y: 0.58674*height))
        path.addCurve(to: CGPoint(x: 0.42077*width, y: 0.58674*height), control1: CGPoint(x: 0.47418*width, y: 0.61027*height), control2: CGPoint(x: 0.42341*width, y: 0.61027*height))
        path.addCurve(to: CGPoint(x: 0.39488*width, y: 0.56915*height), control1: CGPoint(x: 0.41972*width, y: 0.57734*height), control2: CGPoint(x: 0.40872*width, y: 0.56987*height))
        path.addCurve(to: CGPoint(x: 0.39488*width, y: 0.53109*height), control1: CGPoint(x: 0.36025*width, y: 0.56737*height), control2: CGPoint(x: 0.36025*width, y: 0.53288*height))
        path.addCurve(to: CGPoint(x: 0.42077*width, y: 0.5135*height), control1: CGPoint(x: 0.40872*width, y: 0.53037*height), control2: CGPoint(x: 0.41972*width, y: 0.5229*height))
        path.addCurve(to: CGPoint(x: 0.47682*width, y: 0.5135*height), control1: CGPoint(x: 0.42341*width, y: 0.48997*height), control2: CGPoint(x: 0.47418*width, y: 0.48997*height))
        path.addCurve(to: CGPoint(x: 0.50271*width, y: 0.53109*height), control1: CGPoint(x: 0.47787*width, y: 0.5229*height), control2: CGPoint(x: 0.48887*width, y: 0.53037*height))
        path.addCurve(to: CGPoint(x: 0.50271*width, y: 0.56915*height), control1: CGPoint(x: 0.53734*width, y: 0.53288*height), control2: CGPoint(x: 0.53734*width, y: 0.56737*height))
        path.addCurve(to: CGPoint(x: 0.47682*width, y: 0.58674*height), control1: CGPoint(x: 0.48887*width, y: 0.56987*height), control2: CGPoint(x: 0.47787*width, y: 0.57734*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4645*width, y: 0.53945*height))
        path.addCurve(to: CGPoint(x: 0.4645*width, y: 0.56079*height), control1: CGPoint(x: 0.47318*width, y: 0.54534*height), control2: CGPoint(x: 0.47318*width, y: 0.5549*height))
        path.addCurve(to: CGPoint(x: 0.43308*width, y: 0.56079*height), control1: CGPoint(x: 0.45583*width, y: 0.56669*height), control2: CGPoint(x: 0.44176*width, y: 0.56669*height))
        path.addCurve(to: CGPoint(x: 0.43308*width, y: 0.53945*height), control1: CGPoint(x: 0.4244*width, y: 0.5549*height), control2: CGPoint(x: 0.4244*width, y: 0.54534*height))
        path.addCurve(to: CGPoint(x: 0.4645*width, y: 0.53945*height), control1: CGPoint(x: 0.44176*width, y: 0.53355*height), control2: CGPoint(x: 0.45583*width, y: 0.53355*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.26907*width, y: 0.55711*height))
        path.addCurve(to: CGPoint(x: 0.22053*width, y: 0.53808*height), control1: CGPoint(x: 0.24947*width, y: 0.57659*height), control2: CGPoint(x: 0.2055*width, y: 0.55934*height))
        path.addCurve(to: CGPoint(x: 0.21105*width, y: 0.51405*height), control1: CGPoint(x: 0.22654*width, y: 0.52958*height), control2: CGPoint(x: 0.22251*width, y: 0.51937*height))
        path.addCurve(to: CGPoint(x: 0.23908*width, y: 0.48108*height), control1: CGPoint(x: 0.18238*width, y: 0.50074*height), control2: CGPoint(x: 0.20777*width, y: 0.47087*height))
        path.addCurve(to: CGPoint(x: 0.27445*width, y: 0.47465*height), control1: CGPoint(x: 0.25159*width, y: 0.48516*height), control2: CGPoint(x: 0.26662*width, y: 0.48243*height))
        path.addCurve(to: CGPoint(x: 0.32299*width, y: 0.49368*height), control1: CGPoint(x: 0.29405*width, y: 0.45517*height), control2: CGPoint(x: 0.33802*width, y: 0.47242*height))
        path.addCurve(to: CGPoint(x: 0.33247*width, y: 0.51771*height), control1: CGPoint(x: 0.31698*width, y: 0.50218*height), control2: CGPoint(x: 0.32101*width, y: 0.51238*height))
        path.addCurve(to: CGPoint(x: 0.30444*width, y: 0.55068*height), control1: CGPoint(x: 0.36114*width, y: 0.53102*height), control2: CGPoint(x: 0.33575*width, y: 0.56089*height))
        path.addCurve(to: CGPoint(x: 0.26907*width, y: 0.55711*height), control1: CGPoint(x: 0.29193*width, y: 0.54659*height), control2: CGPoint(x: 0.2769*width, y: 0.54933*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.29322*width, y: 0.51197*height))
        path.addCurve(to: CGPoint(x: 0.27751*width, y: 0.53046*height), control1: CGPoint(x: 0.2964*width, y: 0.52002*height), control2: CGPoint(x: 0.28936*width, y: 0.5283*height))
        path.addCurve(to: CGPoint(x: 0.25029*width, y: 0.51978*height), control1: CGPoint(x: 0.26565*width, y: 0.53262*height), control2: CGPoint(x: 0.25347*width, y: 0.52783*height))
        path.addCurve(to: CGPoint(x: 0.266*width, y: 0.5013*height), control1: CGPoint(x: 0.24711*width, y: 0.51173*height), control2: CGPoint(x: 0.25415*width, y: 0.50345*height))
        path.addCurve(to: CGPoint(x: 0.29322*width, y: 0.51197*height), control1: CGPoint(x: 0.27786*width, y: 0.49914*height), control2: CGPoint(x: 0.29004*width, y: 0.50392*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.11096*width, y: 0.46089*height))
        path.addCurve(to: CGPoint(x: 0.08294*width, y: 0.42792*height), control1: CGPoint(x: 0.07966*width, y: 0.47111*height), control2: CGPoint(x: 0.05427*width, y: 0.44124*height))
        path.addCurve(to: CGPoint(x: 0.09242*width, y: 0.4039*height), control1: CGPoint(x: 0.0944*width, y: 0.4226*height), control2: CGPoint(x: 0.09843*width, y: 0.4124*height))
        path.addCurve(to: CGPoint(x: 0.14096*width, y: 0.38486*height), control1: CGPoint(x: 0.07738*width, y: 0.38263*height), control2: CGPoint(x: 0.12136*width, y: 0.36539*height))
        path.addCurve(to: CGPoint(x: 0.17633*width, y: 0.3913*height), control1: CGPoint(x: 0.14879*width, y: 0.39265*height), control2: CGPoint(x: 0.16381*width, y: 0.39538*height))
        path.addCurve(to: CGPoint(x: 0.20435*width, y: 0.42427*height), control1: CGPoint(x: 0.20764*width, y: 0.38109*height), control2: CGPoint(x: 0.23303*width, y: 0.41096*height))
        path.addCurve(to: CGPoint(x: 0.19487*width, y: 0.4483*height), control1: CGPoint(x: 0.19289*width, y: 0.42959*height), control2: CGPoint(x: 0.18887*width, y: 0.4398*height))
        path.addCurve(to: CGPoint(x: 0.14633*width, y: 0.46733*height), control1: CGPoint(x: 0.20991*width, y: 0.46956*height), control2: CGPoint(x: 0.16593*width, y: 0.48681*height))
        path.addCurve(to: CGPoint(x: 0.11096*width, y: 0.46089*height), control1: CGPoint(x: 0.1385*width, y: 0.45955*height), control2: CGPoint(x: 0.12348*width, y: 0.45682*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.16511*width, y: 0.43*height))
        path.addCurve(to: CGPoint(x: 0.13789*width, y: 0.44068*height), control1: CGPoint(x: 0.16193*width, y: 0.43806*height), control2: CGPoint(x: 0.14975*width, y: 0.44283*height))
        path.addCurve(to: CGPoint(x: 0.12218*width, y: 0.42219*height), control1: CGPoint(x: 0.12604*width, y: 0.43852*height), control2: CGPoint(x: 0.119*width, y: 0.43024*height))
        path.addCurve(to: CGPoint(x: 0.1494*width, y: 0.41152*height), control1: CGPoint(x: 0.12535*width, y: 0.41414*height), control2: CGPoint(x: 0.13754*width, y: 0.40936*height))
        path.addCurve(to: CGPoint(x: 0.16511*width, y: 0.43*height), control1: CGPoint(x: 0.16125*width, y: 0.41368*height), control2: CGPoint(x: 0.16828*width, y: 0.42195*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.04487*width, y: 0.32387*height))
        path.addCurve(to: CGPoint(x: 0.04487*width, y: 0.2858*height), control1: CGPoint(x: 0.01024*width, y: 0.32208*height), control2: CGPoint(x: 0.01024*width, y: 0.28759*height))
        path.addCurve(to: CGPoint(x: 0.07076*width, y: 0.26822*height), control1: CGPoint(x: 0.05871*width, y: 0.28509*height), control2: CGPoint(x: 0.06971*width, y: 0.27762*height))
        path.addCurve(to: CGPoint(x: 0.12681*width, y: 0.26822*height), control1: CGPoint(x: 0.07339*width, y: 0.24469*height), control2: CGPoint(x: 0.12417*width, y: 0.24469*height))
        path.addCurve(to: CGPoint(x: 0.1527*width, y: 0.2858*height), control1: CGPoint(x: 0.12786*width, y: 0.27762*height), control2: CGPoint(x: 0.13886*width, y: 0.28509*height))
        path.addCurve(to: CGPoint(x: 0.1527*width, y: 0.32387*height), control1: CGPoint(x: 0.18733*width, y: 0.28759*height), control2: CGPoint(x: 0.18733*width, y: 0.32208*height))
        path.addCurve(to: CGPoint(x: 0.12681*width, y: 0.34146*height), control1: CGPoint(x: 0.13886*width, y: 0.32459*height), control2: CGPoint(x: 0.12786*width, y: 0.33206*height))
        path.addCurve(to: CGPoint(x: 0.07076*width, y: 0.34146*height), control1: CGPoint(x: 0.12417*width, y: 0.36498*height), control2: CGPoint(x: 0.07339*width, y: 0.36498*height))
        path.addCurve(to: CGPoint(x: 0.04487*width, y: 0.32387*height), control1: CGPoint(x: 0.06971*width, y: 0.33206*height), control2: CGPoint(x: 0.05871*width, y: 0.32459*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.1145*width, y: 0.31551*height))
        path.addCurve(to: CGPoint(x: 0.08307*width, y: 0.31551*height), control1: CGPoint(x: 0.10582*width, y: 0.3214*height), control2: CGPoint(x: 0.09175*width, y: 0.3214*height))
        path.addCurve(to: CGPoint(x: 0.08307*width, y: 0.29416*height), control1: CGPoint(x: 0.07439*width, y: 0.30961*height), control2: CGPoint(x: 0.07439*width, y: 0.30006*height))
        path.addCurve(to: CGPoint(x: 0.1145*width, y: 0.29416*height), control1: CGPoint(x: 0.09175*width, y: 0.28827*height), control2: CGPoint(x: 0.10582*width, y: 0.28827*height))
        path.addCurve(to: CGPoint(x: 0.1145*width, y: 0.31551*height), control1: CGPoint(x: 0.12318*width, y: 0.30006*height), control2: CGPoint(x: 0.12318*width, y: 0.30961*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.08849*width, y: 0.18276*height))
        path.addCurve(to: CGPoint(x: 0.11652*width, y: 0.14979*height), control1: CGPoint(x: 0.05982*width, y: 0.16945*height), control2: CGPoint(x: 0.08521*width, y: 0.13958*height))
        path.addCurve(to: CGPoint(x: 0.15189*width, y: 0.14336*height), control1: CGPoint(x: 0.12903*width, y: 0.15387*height), control2: CGPoint(x: 0.14406*width, y: 0.15114*height))
        path.addCurve(to: CGPoint(x: 0.20043*width, y: 0.16239*height), control1: CGPoint(x: 0.17149*width, y: 0.12388*height), control2: CGPoint(x: 0.21546*width, y: 0.14112*height))
        path.addCurve(to: CGPoint(x: 0.20991*width, y: 0.18642*height), control1: CGPoint(x: 0.19442*width, y: 0.17089*height), control2: CGPoint(x: 0.19845*width, y: 0.1811*height))
        path.addCurve(to: CGPoint(x: 0.18188*width, y: 0.21939*height), control1: CGPoint(x: 0.23858*width, y: 0.19973*height), control2: CGPoint(x: 0.21319*width, y: 0.2296*height))
        path.addCurve(to: CGPoint(x: 0.14651*width, y: 0.22582*height), control1: CGPoint(x: 0.16937*width, y: 0.21531*height), control2: CGPoint(x: 0.15434*width, y: 0.21804*height))
        path.addCurve(to: CGPoint(x: 0.09797*width, y: 0.20679*height), control1: CGPoint(x: 0.12691*width, y: 0.2453*height), control2: CGPoint(x: 0.08294*width, y: 0.22805*height))
        path.addCurve(to: CGPoint(x: 0.08849*width, y: 0.18276*height), control1: CGPoint(x: 0.10398*width, y: 0.19829*height), control2: CGPoint(x: 0.09995*width, y: 0.18808*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.15495*width, y: 0.19917*height))
        path.addCurve(to: CGPoint(x: 0.12774*width, y: 0.18849*height), control1: CGPoint(x: 0.1431*width, y: 0.20132*height), control2: CGPoint(x: 0.13091*width, y: 0.19655*height))
        path.addCurve(to: CGPoint(x: 0.14345*width, y: 0.17001*height), control1: CGPoint(x: 0.12456*width, y: 0.18044*height), control2: CGPoint(x: 0.1316*width, y: 0.17216*height))
        path.addCurve(to: CGPoint(x: 0.17067*width, y: 0.18068*height), control1: CGPoint(x: 0.15531*width, y: 0.16785*height), control2: CGPoint(x: 0.16749*width, y: 0.17263*height))
        path.addCurve(to: CGPoint(x: 0.15495*width, y: 0.19917*height), control1: CGPoint(x: 0.17384*width, y: 0.18873*height), control2: CGPoint(x: 0.16681*width, y: 0.19701*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.23015*width, y: 0.07537*height))
        path.addCurve(to: CGPoint(x: 0.2787*width, y: 0.05634*height), control1: CGPoint(x: 0.21512*width, y: 0.05411*height), control2: CGPoint(x: 0.2591*width, y: 0.03686*height))
        path.addCurve(to: CGPoint(x: 0.31406*width, y: 0.06277*height), control1: CGPoint(x: 0.28653*width, y: 0.06412*height), control2: CGPoint(x: 0.30155*width, y: 0.06686*height))
        path.addCurve(to: CGPoint(x: 0.34209*width, y: 0.09575*height), control1: CGPoint(x: 0.34537*width, y: 0.05256*height), control2: CGPoint(x: 0.37076*width, y: 0.08243*height))
        path.addCurve(to: CGPoint(x: 0.33261*width, y: 0.11977*height), control1: CGPoint(x: 0.33063*width, y: 0.10107*height), control2: CGPoint(x: 0.3266*width, y: 0.11127*height))
        path.addCurve(to: CGPoint(x: 0.28407*width, y: 0.13881*height), control1: CGPoint(x: 0.34765*width, y: 0.14104*height), control2: CGPoint(x: 0.30367*width, y: 0.15828*height))
        path.addCurve(to: CGPoint(x: 0.2487*width, y: 0.13237*height), control1: CGPoint(x: 0.27624*width, y: 0.13102*height), control2: CGPoint(x: 0.26122*width, y: 0.12829*height))
        path.addCurve(to: CGPoint(x: 0.22068*width, y: 0.0994*height), control1: CGPoint(x: 0.21739*width, y: 0.14258*height), control2: CGPoint(x: 0.192*width, y: 0.11271*height))
        path.addCurve(to: CGPoint(x: 0.23015*width, y: 0.07537*height), control1: CGPoint(x: 0.23214*width, y: 0.09408*height), control2: CGPoint(x: 0.23616*width, y: 0.08387*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.27564*width, y: 0.11215*height))
        path.addCurve(to: CGPoint(x: 0.25992*width, y: 0.09366*height), control1: CGPoint(x: 0.26378*width, y: 0.10999*height), control2: CGPoint(x: 0.25675*width, y: 0.10172*height))
        path.addCurve(to: CGPoint(x: 0.28714*width, y: 0.08299*height), control1: CGPoint(x: 0.2631*width, y: 0.08561*height), control2: CGPoint(x: 0.27529*width, y: 0.08083*height))
        path.addCurve(to: CGPoint(x: 0.30285*width, y: 0.10148*height), control1: CGPoint(x: 0.29899*width, y: 0.08515*height), control2: CGPoint(x: 0.30603*width, y: 0.09342*height))
        path.addCurve(to: CGPoint(x: 0.27564*width, y: 0.11215*height), control1: CGPoint(x: 0.29968*width, y: 0.10953*height), control2: CGPoint(x: 0.28749*width, y: 0.11431*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.43188*width, y: 0.03048*height))
        path.addCurve(to: CGPoint(x: 0.48793*width, y: 0.03048*height), control1: CGPoint(x: 0.43451*width, y: 0.00696*height), control2: CGPoint(x: 0.48529*width, y: 0.00696*height))
        path.addCurve(to: CGPoint(x: 0.51382*width, y: 0.04807*height), control1: CGPoint(x: 0.48898*width, y: 0.03988*height), control2: CGPoint(x: 0.49998*width, y: 0.04735*height))
        path.addCurve(to: CGPoint(x: 0.51382*width, y: 0.08614*height), control1: CGPoint(x: 0.54845*width, y: 0.04986*height), control2: CGPoint(x: 0.54845*width, y: 0.08435*height))
        path.addCurve(to: CGPoint(x: 0.48793*width, y: 0.10373*height), control1: CGPoint(x: 0.49998*width, y: 0.08685*height), control2: CGPoint(x: 0.48898*width, y: 0.09432*height))
        path.addCurve(to: CGPoint(x: 0.43188*width, y: 0.10373*height), control1: CGPoint(x: 0.48529*width, y: 0.12725*height), control2: CGPoint(x: 0.43451*width, y: 0.12725*height))
        path.addCurve(to: CGPoint(x: 0.40599*width, y: 0.08614*height), control1: CGPoint(x: 0.43083*width, y: 0.09432*height), control2: CGPoint(x: 0.41983*width, y: 0.08685*height))
        path.addCurve(to: CGPoint(x: 0.40599*width, y: 0.04807*height), control1: CGPoint(x: 0.37136*width, y: 0.08435*height), control2: CGPoint(x: 0.37136*width, y: 0.04986*height))
        path.addCurve(to: CGPoint(x: 0.43188*width, y: 0.03048*height), control1: CGPoint(x: 0.41983*width, y: 0.04735*height), control2: CGPoint(x: 0.43083*width, y: 0.03988*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4442*width, y: 0.07778*height))
        path.addCurve(to: CGPoint(x: 0.4442*width, y: 0.05643*height), control1: CGPoint(x: 0.43552*width, y: 0.07188*height), control2: CGPoint(x: 0.43552*width, y: 0.06232*height))
        path.addCurve(to: CGPoint(x: 0.47562*width, y: 0.05643*height), control1: CGPoint(x: 0.45287*width, y: 0.05053*height), control2: CGPoint(x: 0.46694*width, y: 0.05053*height))
        path.addCurve(to: CGPoint(x: 0.47562*width, y: 0.07778*height), control1: CGPoint(x: 0.4843*width, y: 0.06232*height), control2: CGPoint(x: 0.4843*width, y: 0.07188*height))
        path.addCurve(to: CGPoint(x: 0.4442*width, y: 0.07778*height), control1: CGPoint(x: 0.46694*width, y: 0.08367*height), control2: CGPoint(x: 0.45287*width, y: 0.08367*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.35919*width, y: 0.14106*height))
        path.addCurve(to: CGPoint(x: 0.41333*width, y: 0.1312*height), control1: CGPoint(x: 0.35277*width, y: 0.11787*height), control2: CGPoint(x: 0.40182*width, y: 0.10894*height))
        path.addCurve(to: CGPoint(x: 0.44504*width, y: 0.14364*height), control1: CGPoint(x: 0.41793*width, y: 0.1401*height), control2: CGPoint(x: 0.4314*width, y: 0.14538*height))
        path.addCurve(to: CGPoint(x: 0.45954*width, y: 0.18041*height), control1: CGPoint(x: 0.47917*width, y: 0.13928*height), control2: CGPoint(x: 0.49231*width, y: 0.1726*height))
        path.addCurve(to: CGPoint(x: 0.44124*width, y: 0.20195*height), control1: CGPoint(x: 0.44645*width, y: 0.18354*height), control2: CGPoint(x: 0.43867*width, y: 0.19269*height))
        path.addCurve(to: CGPoint(x: 0.3871*width, y: 0.21181*height), control1: CGPoint(x: 0.44765*width, y: 0.22514*height), control2: CGPoint(x: 0.3986*width, y: 0.23406*height))
        path.addCurve(to: CGPoint(x: 0.35538*width, y: 0.19937*height), control1: CGPoint(x: 0.3825*width, y: 0.20291*height), control2: CGPoint(x: 0.36903*width, y: 0.19763*height))
        path.addCurve(to: CGPoint(x: 0.34088*width, y: 0.1626*height), control1: CGPoint(x: 0.32125*width, y: 0.20373*height), control2: CGPoint(x: 0.30811*width, y: 0.17041*height))
        path.addCurve(to: CGPoint(x: 0.35919*width, y: 0.14106*height), control1: CGPoint(x: 0.35397*width, y: 0.15947*height), control2: CGPoint(x: 0.36175*width, y: 0.15032*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.3891*width, y: 0.18458*height))
        path.addCurve(to: CGPoint(x: 0.38097*width, y: 0.16396*height), control1: CGPoint(x: 0.37848*width, y: 0.18041*height), control2: CGPoint(x: 0.37483*width, y: 0.17118*height))
        path.addCurve(to: CGPoint(x: 0.41133*width, y: 0.15843*height), control1: CGPoint(x: 0.38711*width, y: 0.15674*height), control2: CGPoint(x: 0.4007*width, y: 0.15426*height))
        path.addCurve(to: CGPoint(x: 0.41946*width, y: 0.17905*height), control1: CGPoint(x: 0.42196*width, y: 0.1626*height), control2: CGPoint(x: 0.4256*width, y: 0.17183*height))
        path.addCurve(to: CGPoint(x: 0.3891*width, y: 0.18458*height), control1: CGPoint(x: 0.41332*width, y: 0.18627*height), control2: CGPoint(x: 0.39973*width, y: 0.18874*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.25363*width, y: 0.21275*height))
        path.addCurve(to: CGPoint(x: 0.30777*width, y: 0.2029*height), control1: CGPoint(x: 0.24721*width, y: 0.18957*height), control2: CGPoint(x: 0.29626*width, y: 0.18064*height))
        path.addCurve(to: CGPoint(x: 0.33948*width, y: 0.21534*height), control1: CGPoint(x: 0.31237*width, y: 0.2118*height), control2: CGPoint(x: 0.32584*width, y: 0.21708*height))
        path.addCurve(to: CGPoint(x: 0.35399*width, y: 0.25211*height), control1: CGPoint(x: 0.37361*width, y: 0.21098*height), control2: CGPoint(x: 0.38676*width, y: 0.24429*height))
        path.addCurve(to: CGPoint(x: 0.33568*width, y: 0.27365*height), control1: CGPoint(x: 0.34089*width, y: 0.25523*height), control2: CGPoint(x: 0.33311*width, y: 0.26438*height))
        path.addCurve(to: CGPoint(x: 0.28154*width, y: 0.2835*height), control1: CGPoint(x: 0.3421*width, y: 0.29684*height), control2: CGPoint(x: 0.29305*width, y: 0.30576*height))
        path.addCurve(to: CGPoint(x: 0.24983*width, y: 0.27107*height), control1: CGPoint(x: 0.27694*width, y: 0.27461*height), control2: CGPoint(x: 0.26347*width, y: 0.26933*height))
        path.addCurve(to: CGPoint(x: 0.23532*width, y: 0.23429*height), control1: CGPoint(x: 0.2157*width, y: 0.27543*height), control2: CGPoint(x: 0.20255*width, y: 0.24211*height))
        path.addCurve(to: CGPoint(x: 0.25363*width, y: 0.21275*height), control1: CGPoint(x: 0.24842*width, y: 0.23117*height), control2: CGPoint(x: 0.2562*width, y: 0.22202*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.28355*width, y: 0.25627*height))
        path.addCurve(to: CGPoint(x: 0.27542*width, y: 0.23565*height), control1: CGPoint(x: 0.27292*width, y: 0.25211*height), control2: CGPoint(x: 0.26928*width, y: 0.24287*height))
        path.addCurve(to: CGPoint(x: 0.30577*width, y: 0.23013*height), control1: CGPoint(x: 0.28155*width, y: 0.22844*height), control2: CGPoint(x: 0.29514*width, y: 0.22596*height))
        path.addCurve(to: CGPoint(x: 0.3139*width, y: 0.25075*height), control1: CGPoint(x: 0.3164*width, y: 0.2343*height), control2: CGPoint(x: 0.32004*width, y: 0.24353*height))
        path.addCurve(to: CGPoint(x: 0.28355*width, y: 0.25627*height), control1: CGPoint(x: 0.30777*width, y: 0.25797*height), control2: CGPoint(x: 0.29418*width, y: 0.26044*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.21474*width, y: 0.31087*height))
        path.addCurve(to: CGPoint(x: 0.26888*width, y: 0.30101*height), control1: CGPoint(x: 0.20832*width, y: 0.28768*height), control2: CGPoint(x: 0.25737*width, y: 0.27876*height))
        path.addCurve(to: CGPoint(x: 0.30059*width, y: 0.31345*height), control1: CGPoint(x: 0.27348*width, y: 0.30991*height), control2: CGPoint(x: 0.28695*width, y: 0.31519*height))
        path.addCurve(to: CGPoint(x: 0.3151*width, y: 0.35022*height), control1: CGPoint(x: 0.33473*width, y: 0.30909*height), control2: CGPoint(x: 0.34787*width, y: 0.34241*height))
        path.addCurve(to: CGPoint(x: 0.29679*width, y: 0.37176*height), control1: CGPoint(x: 0.302*width, y: 0.35335*height), control2: CGPoint(x: 0.29423*width, y: 0.3625*height))
        path.addCurve(to: CGPoint(x: 0.24265*width, y: 0.38162*height), control1: CGPoint(x: 0.30321*width, y: 0.39495*height), control2: CGPoint(x: 0.25416*width, y: 0.40388*height))
        path.addCurve(to: CGPoint(x: 0.21094*width, y: 0.36918*height), control1: CGPoint(x: 0.23805*width, y: 0.37272*height), control2: CGPoint(x: 0.22458*width, y: 0.36744*height))
        path.addCurve(to: CGPoint(x: 0.19643*width, y: 0.33241*height), control1: CGPoint(x: 0.17681*width, y: 0.37354*height), control2: CGPoint(x: 0.16366*width, y: 0.34022*height))
        path.addCurve(to: CGPoint(x: 0.21474*width, y: 0.31087*height), control1: CGPoint(x: 0.20953*width, y: 0.32928*height), control2: CGPoint(x: 0.21731*width, y: 0.32013*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.24466*width, y: 0.35439*height))
        path.addCurve(to: CGPoint(x: 0.23653*width, y: 0.33377*height), control1: CGPoint(x: 0.23403*width, y: 0.35022*height), control2: CGPoint(x: 0.23039*width, y: 0.34099*height))
        path.addCurve(to: CGPoint(x: 0.26688*width, y: 0.32824*height), control1: CGPoint(x: 0.24266*width, y: 0.32655*height), control2: CGPoint(x: 0.25625*width, y: 0.32407*height))
        path.addCurve(to: CGPoint(x: 0.27502*width, y: 0.34886*height), control1: CGPoint(x: 0.27751*width, y: 0.33241*height), control2: CGPoint(x: 0.28115*width, y: 0.34164*height))
        path.addCurve(to: CGPoint(x: 0.24466*width, y: 0.35439*height), control1: CGPoint(x: 0.26888*width, y: 0.35608*height), control2: CGPoint(x: 0.25529*width, y: 0.35856*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.32585*width, y: 0.38634*height))
        path.addCurve(to: CGPoint(x: 0.37999*width, y: 0.37649*height), control1: CGPoint(x: 0.31944*width, y: 0.36315*height), control2: CGPoint(x: 0.36848*width, y: 0.35423*height))
        path.addCurve(to: CGPoint(x: 0.4117*width, y: 0.38892*height), control1: CGPoint(x: 0.38459*width, y: 0.38538*height), control2: CGPoint(x: 0.39806*width, y: 0.39066*height))
        path.addCurve(to: CGPoint(x: 0.42621*width, y: 0.42569*height), control1: CGPoint(x: 0.44584*width, y: 0.38456*height), control2: CGPoint(x: 0.45898*width, y: 0.41788*height))
        path.addCurve(to: CGPoint(x: 0.4079*width, y: 0.44723*height), control1: CGPoint(x: 0.41311*width, y: 0.42882*height), control2: CGPoint(x: 0.40534*width, y: 0.43797*height))
        path.addCurve(to: CGPoint(x: 0.35376*width, y: 0.45709*height), control1: CGPoint(x: 0.41432*width, y: 0.47042*height), control2: CGPoint(x: 0.36527*width, y: 0.47935*height))
        path.addCurve(to: CGPoint(x: 0.32205*width, y: 0.44465*height), control1: CGPoint(x: 0.34916*width, y: 0.44819*height), control2: CGPoint(x: 0.33569*width, y: 0.44291*height))
        path.addCurve(to: CGPoint(x: 0.30754*width, y: 0.40788*height), control1: CGPoint(x: 0.28792*width, y: 0.44901*height), control2: CGPoint(x: 0.27478*width, y: 0.41569*height))
        path.addCurve(to: CGPoint(x: 0.32585*width, y: 0.38634*height), control1: CGPoint(x: 0.32064*width, y: 0.40475*height), control2: CGPoint(x: 0.32842*width, y: 0.3956*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.35577*width, y: 0.42986*height))
        path.addCurve(to: CGPoint(x: 0.34764*width, y: 0.40924*height), control1: CGPoint(x: 0.34514*width, y: 0.42569*height), control2: CGPoint(x: 0.3415*width, y: 0.41646*height))
        path.addCurve(to: CGPoint(x: 0.37799*width, y: 0.40371*height), control1: CGPoint(x: 0.35377*width, y: 0.40202*height), control2: CGPoint(x: 0.36736*width, y: 0.39955*height))
        path.addCurve(to: CGPoint(x: 0.38613*width, y: 0.42433*height), control1: CGPoint(x: 0.38862*width, y: 0.40788*height), control2: CGPoint(x: 0.39226*width, y: 0.41711*height))
        path.addCurve(to: CGPoint(x: 0.35577*width, y: 0.42986*height), control1: CGPoint(x: 0.37999*width, y: 0.43155*height), control2: CGPoint(x: 0.3664*width, y: 0.43403*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4703*width, y: 0.41653*height))
        path.addCurve(to: CGPoint(x: 0.52444*width, y: 0.40668*height), control1: CGPoint(x: 0.46388*width, y: 0.39334*height), control2: CGPoint(x: 0.51293*width, y: 0.38442*height))
        path.addCurve(to: CGPoint(x: 0.55615*width, y: 0.41911*height), control1: CGPoint(x: 0.52904*width, y: 0.41557*height), control2: CGPoint(x: 0.54251*width, y: 0.42085*height))
        path.addCurve(to: CGPoint(x: 0.57066*width, y: 0.45588*height), control1: CGPoint(x: 0.59028*width, y: 0.41475*height), control2: CGPoint(x: 0.60342*width, y: 0.44807*height))
        path.addCurve(to: CGPoint(x: 0.55235*width, y: 0.47742*height), control1: CGPoint(x: 0.55756*width, y: 0.45901*height), control2: CGPoint(x: 0.54978*width, y: 0.46816*height))
        path.addCurve(to: CGPoint(x: 0.49821*width, y: 0.48728*height), control1: CGPoint(x: 0.55877*width, y: 0.50061*height), control2: CGPoint(x: 0.50972*width, y: 0.50954*height))
        path.addCurve(to: CGPoint(x: 0.4665*width, y: 0.47484*height), control1: CGPoint(x: 0.49361*width, y: 0.47838*height), control2: CGPoint(x: 0.48014*width, y: 0.4731*height))
        path.addCurve(to: CGPoint(x: 0.45199*width, y: 0.43807*height), control1: CGPoint(x: 0.43236*width, y: 0.4792*height), control2: CGPoint(x: 0.41922*width, y: 0.44588*height))
        path.addCurve(to: CGPoint(x: 0.4703*width, y: 0.41653*height), control1: CGPoint(x: 0.46508*width, y: 0.43494*height), control2: CGPoint(x: 0.47286*width, y: 0.42579*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50022*width, y: 0.46005*height))
        path.addCurve(to: CGPoint(x: 0.49208*width, y: 0.43943*height), control1: CGPoint(x: 0.48959*width, y: 0.45588*height), control2: CGPoint(x: 0.48595*width, y: 0.44665*height))
        path.addCurve(to: CGPoint(x: 0.52244*width, y: 0.4339*height), control1: CGPoint(x: 0.49822*width, y: 0.43221*height), control2: CGPoint(x: 0.51181*width, y: 0.42974*height))
        path.addCurve(to: CGPoint(x: 0.53057*width, y: 0.45452*height), control1: CGPoint(x: 0.53307*width, y: 0.43807*height), control2: CGPoint(x: 0.53671*width, y: 0.4473*height))
        path.addCurve(to: CGPoint(x: 0.50022*width, y: 0.46005*height), control1: CGPoint(x: 0.52444*width, y: 0.46174*height), control2: CGPoint(x: 0.51084*width, y: 0.46422*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.58697*width, y: 0.34483*height))
        path.addCurve(to: CGPoint(x: 0.64111*width, y: 0.33498*height), control1: CGPoint(x: 0.58054*width, y: 0.32164*height), control2: CGPoint(x: 0.62959*width, y: 0.31272*height))
        path.addCurve(to: CGPoint(x: 0.67282*width, y: 0.34741*height), control1: CGPoint(x: 0.64571*width, y: 0.34387*height), control2: CGPoint(x: 0.65917*width, y: 0.34915*height))
        path.addCurve(to: CGPoint(x: 0.68732*width, y: 0.38418*height), control1: CGPoint(x: 0.70695*width, y: 0.34305*height), control2: CGPoint(x: 0.72009*width, y: 0.37637*height))
        path.addCurve(to: CGPoint(x: 0.66901*width, y: 0.40572*height), control1: CGPoint(x: 0.67423*width, y: 0.38731*height), control2: CGPoint(x: 0.66645*width, y: 0.39646*height))
        path.addCurve(to: CGPoint(x: 0.61487*width, y: 0.41558*height), control1: CGPoint(x: 0.67543*width, y: 0.42891*height), control2: CGPoint(x: 0.62638*width, y: 0.43784*height))
        path.addCurve(to: CGPoint(x: 0.58316*width, y: 0.40314*height), control1: CGPoint(x: 0.61027*width, y: 0.40668*height), control2: CGPoint(x: 0.59681*width, y: 0.4014*height))
        path.addCurve(to: CGPoint(x: 0.56866*width, y: 0.36637*height), control1: CGPoint(x: 0.54903*width, y: 0.4075*height), control2: CGPoint(x: 0.53589*width, y: 0.37419*height))
        path.addCurve(to: CGPoint(x: 0.58697*width, y: 0.34483*height), control1: CGPoint(x: 0.58175*width, y: 0.36325*height), control2: CGPoint(x: 0.58953*width, y: 0.3541*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.61688*width, y: 0.38835*height))
        path.addCurve(to: CGPoint(x: 0.60875*width, y: 0.36773*height), control1: CGPoint(x: 0.60626*width, y: 0.38418*height), control2: CGPoint(x: 0.60261*width, y: 0.37495*height))
        path.addCurve(to: CGPoint(x: 0.63911*width, y: 0.3622*height), control1: CGPoint(x: 0.61488*width, y: 0.36051*height), control2: CGPoint(x: 0.62848*width, y: 0.35804*height))
        path.addCurve(to: CGPoint(x: 0.64724*width, y: 0.38282*height), control1: CGPoint(x: 0.64973*width, y: 0.36637*height), control2: CGPoint(x: 0.65338*width, y: 0.3756*height))
        path.addCurve(to: CGPoint(x: 0.61688*width, y: 0.38835*height), control1: CGPoint(x: 0.6411*width, y: 0.39005*height), control2: CGPoint(x: 0.62751*width, y: 0.39252*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.6203*width, y: 0.24672*height))
        path.addCurve(to: CGPoint(x: 0.67444*width, y: 0.23686*height), control1: CGPoint(x: 0.61388*width, y: 0.22353*height), control2: CGPoint(x: 0.66293*width, y: 0.2146*height))
        path.addCurve(to: CGPoint(x: 0.70615*width, y: 0.2493*height), control1: CGPoint(x: 0.67904*width, y: 0.24576*height), control2: CGPoint(x: 0.69251*width, y: 0.25104*height))
        path.addCurve(to: CGPoint(x: 0.72066*width, y: 0.28607*height), control1: CGPoint(x: 0.74028*width, y: 0.24494*height), control2: CGPoint(x: 0.75342*width, y: 0.27826*height))
        path.addCurve(to: CGPoint(x: 0.70234*width, y: 0.30761*height), control1: CGPoint(x: 0.70756*width, y: 0.2892*height), control2: CGPoint(x: 0.69978*width, y: 0.29835*height))
        path.addCurve(to: CGPoint(x: 0.64821*width, y: 0.31747*height), control1: CGPoint(x: 0.70877*width, y: 0.3308*height), control2: CGPoint(x: 0.65972*width, y: 0.33972*height))
        path.addCurve(to: CGPoint(x: 0.61649*width, y: 0.30503*height), control1: CGPoint(x: 0.64361*width, y: 0.30857*height), control2: CGPoint(x: 0.63014*width, y: 0.30329*height))
        path.addCurve(to: CGPoint(x: 0.60199*width, y: 0.26826*height), control1: CGPoint(x: 0.58236*width, y: 0.30939*height), control2: CGPoint(x: 0.56922*width, y: 0.27607*height))
        path.addCurve(to: CGPoint(x: 0.6203*width, y: 0.24672*height), control1: CGPoint(x: 0.61508*width, y: 0.26513*height), control2: CGPoint(x: 0.62286*width, y: 0.25598*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.65022*width, y: 0.29024*height))
        path.addCurve(to: CGPoint(x: 0.64208*width, y: 0.26962*height), control1: CGPoint(x: 0.63959*width, y: 0.28607*height), control2: CGPoint(x: 0.63594*width, y: 0.27684*height))
        path.addCurve(to: CGPoint(x: 0.67244*width, y: 0.26409*height), control1: CGPoint(x: 0.64822*width, y: 0.2624*height), control2: CGPoint(x: 0.66181*width, y: 0.25992*height))
        path.addCurve(to: CGPoint(x: 0.68057*width, y: 0.28471*height), control1: CGPoint(x: 0.68307*width, y: 0.26826*height), control2: CGPoint(x: 0.68671*width, y: 0.27749*height))
        path.addCurve(to: CGPoint(x: 0.65022*width, y: 0.29024*height), control1: CGPoint(x: 0.67443*width, y: 0.29193*height), control2: CGPoint(x: 0.66084*width, y: 0.2944*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.51474*width, y: 0.15992*height))
        path.addCurve(to: CGPoint(x: 0.56888*width, y: 0.15007*height), control1: CGPoint(x: 0.50832*width, y: 0.13674*height), control2: CGPoint(x: 0.55737*width, y: 0.12781*height))
        path.addCurve(to: CGPoint(x: 0.60059*width, y: 0.16251*height), control1: CGPoint(x: 0.57348*width, y: 0.15897*height), control2: CGPoint(x: 0.58695*width, y: 0.16425*height))
        path.addCurve(to: CGPoint(x: 0.6151*width, y: 0.19928*height), control1: CGPoint(x: 0.63473*width, y: 0.15815*height), control2: CGPoint(x: 0.64787*width, y: 0.19146*height))
        path.addCurve(to: CGPoint(x: 0.59679*width, y: 0.22082*height), control1: CGPoint(x: 0.60201*width, y: 0.2024*height), control2: CGPoint(x: 0.59423*width, y: 0.21155*height))
        path.addCurve(to: CGPoint(x: 0.54265*width, y: 0.23067*height), control1: CGPoint(x: 0.60321*width, y: 0.24401*height), control2: CGPoint(x: 0.55416*width, y: 0.25293*height))
        path.addCurve(to: CGPoint(x: 0.51094*width, y: 0.21824*height), control1: CGPoint(x: 0.53805*width, y: 0.22178*height), control2: CGPoint(x: 0.52458*width, y: 0.2165*height))
        path.addCurve(to: CGPoint(x: 0.49643*width, y: 0.18146*height), control1: CGPoint(x: 0.47681*width, y: 0.2226*height), control2: CGPoint(x: 0.46366*width, y: 0.18928*height))
        path.addCurve(to: CGPoint(x: 0.51474*width, y: 0.15992*height), control1: CGPoint(x: 0.50953*width, y: 0.17834*height), control2: CGPoint(x: 0.51731*width, y: 0.16919*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.54466*width, y: 0.20344*height))
        path.addCurve(to: CGPoint(x: 0.53653*width, y: 0.18282*height), control1: CGPoint(x: 0.53403*width, y: 0.19928*height), control2: CGPoint(x: 0.53039*width, y: 0.19004*height))
        path.addCurve(to: CGPoint(x: 0.56688*width, y: 0.1773*height), control1: CGPoint(x: 0.54266*width, y: 0.1756*height), control2: CGPoint(x: 0.55626*width, y: 0.17313*height))
        path.addCurve(to: CGPoint(x: 0.57502*width, y: 0.19792*height), control1: CGPoint(x: 0.57751*width, y: 0.18147*height), control2: CGPoint(x: 0.58116*width, y: 0.1907*height))
        path.addCurve(to: CGPoint(x: 0.54466*width, y: 0.20344*height), control1: CGPoint(x: 0.56888*width, y: 0.20514*height), control2: CGPoint(x: 0.55529*width, y: 0.20761*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.43744*width, y: 0.26444*height))
        path.addCurve(to: CGPoint(x: 0.49348*width, y: 0.26444*height), control1: CGPoint(x: 0.44007*width, y: 0.24092*height), control2: CGPoint(x: 0.49085*width, y: 0.24092*height))
        path.addCurve(to: CGPoint(x: 0.51938*width, y: 0.28203*height), control1: CGPoint(x: 0.49454*width, y: 0.27384*height), control2: CGPoint(x: 0.50554*width, y: 0.28131*height))
        path.addCurve(to: CGPoint(x: 0.51938*width, y: 0.3201*height), control1: CGPoint(x: 0.55401*width, y: 0.28382*height), control2: CGPoint(x: 0.55401*width, y: 0.31831*height))
        path.addCurve(to: CGPoint(x: 0.49348*width, y: 0.33769*height), control1: CGPoint(x: 0.50554*width, y: 0.32082*height), control2: CGPoint(x: 0.49454*width, y: 0.32829*height))
        path.addCurve(to: CGPoint(x: 0.43744*width, y: 0.33769*height), control1: CGPoint(x: 0.49085*width, y: 0.36121*height), control2: CGPoint(x: 0.44007*width, y: 0.36121*height))
        path.addCurve(to: CGPoint(x: 0.41154*width, y: 0.3201*height), control1: CGPoint(x: 0.43638*width, y: 0.32829*height), control2: CGPoint(x: 0.42538*width, y: 0.32082*height))
        path.addCurve(to: CGPoint(x: 0.41154*width, y: 0.28203*height), control1: CGPoint(x: 0.37691*width, y: 0.31831*height), control2: CGPoint(x: 0.37691*width, y: 0.28382*height))
        path.addCurve(to: CGPoint(x: 0.43744*width, y: 0.26444*height), control1: CGPoint(x: 0.42538*width, y: 0.28131*height), control2: CGPoint(x: 0.43638*width, y: 0.27384*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.44975*width, y: 0.31174*height))
        path.addCurve(to: CGPoint(x: 0.44975*width, y: 0.29039*height), control1: CGPoint(x: 0.44107*width, y: 0.30584*height), control2: CGPoint(x: 0.44107*width, y: 0.29629*height))
        path.addCurve(to: CGPoint(x: 0.48118*width, y: 0.29039*height), control1: CGPoint(x: 0.45843*width, y: 0.2845*height), control2: CGPoint(x: 0.4725*width, y: 0.2845*height))
        path.addCurve(to: CGPoint(x: 0.48118*width, y: 0.31174*height), control1: CGPoint(x: 0.48986*width, y: 0.29629*height), control2: CGPoint(x: 0.48986*width, y: 0.30584*height))
        path.addCurve(to: CGPoint(x: 0.44975*width, y: 0.31174*height), control1: CGPoint(x: 0.4725*width, y: 0.31763*height), control2: CGPoint(x: 0.45843*width, y: 0.31763*height))
        path.closeSubpath()
        return path
    }
}

// MARK:- CorePetals

public struct SunflowerCore: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.4773*width, y: 0.27368*height))
        path.addCurve(to: CGPoint(x: 0.5227*width, y: 0.27368*height), control1: CGPoint(x: 0.47961*width, y: 0.24583*height), control2: CGPoint(x: 0.52039*width, y: 0.24583*height))
        path.addCurve(to: CGPoint(x: 0.56564*width, y: 0.28223*height), control1: CGPoint(x: 0.52459*width, y: 0.29649*height), control2: CGPoint(x: 0.55516*width, y: 0.30257*height))
        path.addCurve(to: CGPoint(x: 0.60758*width, y: 0.2996*height), control1: CGPoint(x: 0.57843*width, y: 0.25737*height), control2: CGPoint(x: 0.6161*width, y: 0.27298*height))
        path.addCurve(to: CGPoint(x: 0.64398*width, y: 0.32392*height), control1: CGPoint(x: 0.60059*width, y: 0.32139*height), control2: CGPoint(x: 0.62652*width, y: 0.33871*height))
        path.addCurve(to: CGPoint(x: 0.67608*width, y: 0.35602*height), control1: CGPoint(x: 0.66531*width, y: 0.30586*height), control2: CGPoint(x: 0.69414*width, y: 0.33469*height))
        path.addCurve(to: CGPoint(x: 0.7004*width, y: 0.39242*height), control1: CGPoint(x: 0.66129*width, y: 0.37348*height), control2: CGPoint(x: 0.67861*width, y: 0.39941*height))
        path.addCurve(to: CGPoint(x: 0.71777*width, y: 0.43436*height), control1: CGPoint(x: 0.72702*width, y: 0.3839*height), control2: CGPoint(x: 0.74263*width, y: 0.42157*height))
        path.addCurve(to: CGPoint(x: 0.72632*width, y: 0.4773*height), control1: CGPoint(x: 0.69743*width, y: 0.44484*height), control2: CGPoint(x: 0.70351*width, y: 0.47541*height))
        path.addCurve(to: CGPoint(x: 0.72632*width, y: 0.5227*height), control1: CGPoint(x: 0.75417*width, y: 0.47961*height), control2: CGPoint(x: 0.75417*width, y: 0.52039*height))
        path.addCurve(to: CGPoint(x: 0.71777*width, y: 0.56564*height), control1: CGPoint(x: 0.70351*width, y: 0.52459*height), control2: CGPoint(x: 0.69743*width, y: 0.55516*height))
        path.addCurve(to: CGPoint(x: 0.7004*width, y: 0.60758*height), control1: CGPoint(x: 0.74263*width, y: 0.57843*height), control2: CGPoint(x: 0.72702*width, y: 0.6161*height))
        path.addCurve(to: CGPoint(x: 0.67608*width, y: 0.64398*height), control1: CGPoint(x: 0.67861*width, y: 0.60059*height), control2: CGPoint(x: 0.66129*width, y: 0.62652*height))
        path.addCurve(to: CGPoint(x: 0.64398*width, y: 0.67608*height), control1: CGPoint(x: 0.69414*width, y: 0.66531*height), control2: CGPoint(x: 0.66531*width, y: 0.69414*height))
        path.addCurve(to: CGPoint(x: 0.60758*width, y: 0.7004*height), control1: CGPoint(x: 0.62652*width, y: 0.66129*height), control2: CGPoint(x: 0.60059*width, y: 0.67861*height))
        path.addCurve(to: CGPoint(x: 0.56564*width, y: 0.71777*height), control1: CGPoint(x: 0.6161*width, y: 0.72702*height), control2: CGPoint(x: 0.57843*width, y: 0.74263*height))
        path.addCurve(to: CGPoint(x: 0.5227*width, y: 0.72632*height), control1: CGPoint(x: 0.55516*width, y: 0.69743*height), control2: CGPoint(x: 0.52459*width, y: 0.70351*height))
        path.addCurve(to: CGPoint(x: 0.4773*width, y: 0.72632*height), control1: CGPoint(x: 0.52039*width, y: 0.75417*height), control2: CGPoint(x: 0.47961*width, y: 0.75417*height))
        path.addCurve(to: CGPoint(x: 0.43436*width, y: 0.71777*height), control1: CGPoint(x: 0.47541*width, y: 0.70351*height), control2: CGPoint(x: 0.44484*width, y: 0.69743*height))
        path.addCurve(to: CGPoint(x: 0.39242*width, y: 0.7004*height), control1: CGPoint(x: 0.42157*width, y: 0.74263*height), control2: CGPoint(x: 0.3839*width, y: 0.72702*height))
        path.addCurve(to: CGPoint(x: 0.35602*width, y: 0.67608*height), control1: CGPoint(x: 0.39941*width, y: 0.67861*height), control2: CGPoint(x: 0.37348*width, y: 0.66129*height))
        path.addCurve(to: CGPoint(x: 0.32392*width, y: 0.64398*height), control1: CGPoint(x: 0.33469*width, y: 0.69414*height), control2: CGPoint(x: 0.30586*width, y: 0.66531*height))
        path.addCurve(to: CGPoint(x: 0.2996*width, y: 0.60758*height), control1: CGPoint(x: 0.33871*width, y: 0.62652*height), control2: CGPoint(x: 0.32139*width, y: 0.60059*height))
        path.addCurve(to: CGPoint(x: 0.28223*width, y: 0.56564*height), control1: CGPoint(x: 0.27298*width, y: 0.6161*height), control2: CGPoint(x: 0.25737*width, y: 0.57843*height))
        path.addCurve(to: CGPoint(x: 0.27368*width, y: 0.5227*height), control1: CGPoint(x: 0.30257*width, y: 0.55516*height), control2: CGPoint(x: 0.29649*width, y: 0.52459*height))
        path.addCurve(to: CGPoint(x: 0.27368*width, y: 0.4773*height), control1: CGPoint(x: 0.24583*width, y: 0.52039*height), control2: CGPoint(x: 0.24583*width, y: 0.47961*height))
        path.addCurve(to: CGPoint(x: 0.28223*width, y: 0.43436*height), control1: CGPoint(x: 0.29649*width, y: 0.47541*height), control2: CGPoint(x: 0.30257*width, y: 0.44484*height))
        path.addCurve(to: CGPoint(x: 0.2996*width, y: 0.39242*height), control1: CGPoint(x: 0.25737*width, y: 0.42157*height), control2: CGPoint(x: 0.27298*width, y: 0.3839*height))
        path.addCurve(to: CGPoint(x: 0.32392*width, y: 0.35602*height), control1: CGPoint(x: 0.32139*width, y: 0.39941*height), control2: CGPoint(x: 0.33871*width, y: 0.37348*height))
        path.addCurve(to: CGPoint(x: 0.35602*width, y: 0.32392*height), control1: CGPoint(x: 0.30586*width, y: 0.33469*height), control2: CGPoint(x: 0.33469*width, y: 0.30586*height))
        path.addCurve(to: CGPoint(x: 0.39242*width, y: 0.2996*height), control1: CGPoint(x: 0.37348*width, y: 0.33871*height), control2: CGPoint(x: 0.39941*width, y: 0.32139*height))
        path.addCurve(to: CGPoint(x: 0.43436*width, y: 0.28223*height), control1: CGPoint(x: 0.3839*width, y: 0.27298*height), control2: CGPoint(x: 0.42157*width, y: 0.25737*height))
        path.addCurve(to: CGPoint(x: 0.4773*width, y: 0.27368*height), control1: CGPoint(x: 0.44484*width, y: 0.30257*height), control2: CGPoint(x: 0.47541*width, y: 0.29649*height))
        path.closeSubpath()
        return path
    }
}
public struct HibiscusCore: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.4773*width, y: 0.27368*height))
        path.addCurve(to: CGPoint(x: 0.5227*width, y: 0.27368*height), control1: CGPoint(x: 0.47961*width, y: 0.24583*height), control2: CGPoint(x: 0.52039*width, y: 0.24583*height))
        path.addCurve(to: CGPoint(x: 0.56564*width, y: 0.28223*height), control1: CGPoint(x: 0.52459*width, y: 0.29649*height), control2: CGPoint(x: 0.55516*width, y: 0.30257*height))
        path.addCurve(to: CGPoint(x: 0.60758*width, y: 0.2996*height), control1: CGPoint(x: 0.57843*width, y: 0.25737*height), control2: CGPoint(x: 0.6161*width, y: 0.27298*height))
        path.addCurve(to: CGPoint(x: 0.64398*width, y: 0.32392*height), control1: CGPoint(x: 0.6006*width, y: 0.32139*height), control2: CGPoint(x: 0.62652*width, y: 0.33871*height))
        path.addCurve(to: CGPoint(x: 0.67608*width, y: 0.35602*height), control1: CGPoint(x: 0.66531*width, y: 0.30586*height), control2: CGPoint(x: 0.69414*width, y: 0.33469*height))
        path.addCurve(to: CGPoint(x: 0.7004*width, y: 0.39242*height), control1: CGPoint(x: 0.66129*width, y: 0.37348*height), control2: CGPoint(x: 0.67861*width, y: 0.3994*height))
        path.addCurve(to: CGPoint(x: 0.71777*width, y: 0.43436*height), control1: CGPoint(x: 0.72702*width, y: 0.3839*height), control2: CGPoint(x: 0.74263*width, y: 0.42157*height))
        path.addCurve(to: CGPoint(x: 0.72632*width, y: 0.4773*height), control1: CGPoint(x: 0.69743*width, y: 0.44484*height), control2: CGPoint(x: 0.70351*width, y: 0.47541*height))
        path.addCurve(to: CGPoint(x: 0.72632*width, y: 0.5227*height), control1: CGPoint(x: 0.75417*width, y: 0.47961*height), control2: CGPoint(x: 0.75417*width, y: 0.52039*height))
        path.addCurve(to: CGPoint(x: 0.71777*width, y: 0.56564*height), control1: CGPoint(x: 0.70351*width, y: 0.52459*height), control2: CGPoint(x: 0.69743*width, y: 0.55516*height))
        path.addCurve(to: CGPoint(x: 0.7004*width, y: 0.60758*height), control1: CGPoint(x: 0.74263*width, y: 0.57843*height), control2: CGPoint(x: 0.72702*width, y: 0.6161*height))
        path.addCurve(to: CGPoint(x: 0.67608*width, y: 0.64398*height), control1: CGPoint(x: 0.67861*width, y: 0.6006*height), control2: CGPoint(x: 0.66129*width, y: 0.62652*height))
        path.addCurve(to: CGPoint(x: 0.64398*width, y: 0.67608*height), control1: CGPoint(x: 0.69414*width, y: 0.66531*height), control2: CGPoint(x: 0.66531*width, y: 0.69414*height))
        path.addCurve(to: CGPoint(x: 0.60758*width, y: 0.7004*height), control1: CGPoint(x: 0.62652*width, y: 0.66129*height), control2: CGPoint(x: 0.6006*width, y: 0.67861*height))
        path.addCurve(to: CGPoint(x: 0.56564*width, y: 0.71777*height), control1: CGPoint(x: 0.6161*width, y: 0.72702*height), control2: CGPoint(x: 0.57843*width, y: 0.74263*height))
        path.addCurve(to: CGPoint(x: 0.5227*width, y: 0.72632*height), control1: CGPoint(x: 0.55516*width, y: 0.69743*height), control2: CGPoint(x: 0.52459*width, y: 0.70351*height))
        path.addCurve(to: CGPoint(x: 0.4773*width, y: 0.72632*height), control1: CGPoint(x: 0.52039*width, y: 0.75417*height), control2: CGPoint(x: 0.47961*width, y: 0.75417*height))
        path.addCurve(to: CGPoint(x: 0.43436*width, y: 0.71777*height), control1: CGPoint(x: 0.47541*width, y: 0.70351*height), control2: CGPoint(x: 0.44484*width, y: 0.69743*height))
        path.addCurve(to: CGPoint(x: 0.39242*width, y: 0.7004*height), control1: CGPoint(x: 0.42157*width, y: 0.74263*height), control2: CGPoint(x: 0.3839*width, y: 0.72702*height))
        path.addCurve(to: CGPoint(x: 0.35602*width, y: 0.67608*height), control1: CGPoint(x: 0.3994*width, y: 0.67861*height), control2: CGPoint(x: 0.37348*width, y: 0.66129*height))
        path.addCurve(to: CGPoint(x: 0.32392*width, y: 0.64398*height), control1: CGPoint(x: 0.33469*width, y: 0.69414*height), control2: CGPoint(x: 0.30586*width, y: 0.66531*height))
        path.addCurve(to: CGPoint(x: 0.2996*width, y: 0.60758*height), control1: CGPoint(x: 0.33871*width, y: 0.62652*height), control2: CGPoint(x: 0.32139*width, y: 0.6006*height))
        path.addCurve(to: CGPoint(x: 0.28223*width, y: 0.56564*height), control1: CGPoint(x: 0.27298*width, y: 0.6161*height), control2: CGPoint(x: 0.25737*width, y: 0.57843*height))
        path.addCurve(to: CGPoint(x: 0.27368*width, y: 0.5227*height), control1: CGPoint(x: 0.30257*width, y: 0.55516*height), control2: CGPoint(x: 0.29649*width, y: 0.52459*height))
        path.addCurve(to: CGPoint(x: 0.27368*width, y: 0.4773*height), control1: CGPoint(x: 0.24583*width, y: 0.52039*height), control2: CGPoint(x: 0.24583*width, y: 0.47961*height))
        path.addCurve(to: CGPoint(x: 0.28223*width, y: 0.43436*height), control1: CGPoint(x: 0.29649*width, y: 0.47541*height), control2: CGPoint(x: 0.30257*width, y: 0.44484*height))
        path.addCurve(to: CGPoint(x: 0.2996*width, y: 0.39242*height), control1: CGPoint(x: 0.25737*width, y: 0.42157*height), control2: CGPoint(x: 0.27298*width, y: 0.3839*height))
        path.addCurve(to: CGPoint(x: 0.32392*width, y: 0.35602*height), control1: CGPoint(x: 0.32139*width, y: 0.3994*height), control2: CGPoint(x: 0.33871*width, y: 0.37348*height))
        path.addCurve(to: CGPoint(x: 0.35602*width, y: 0.32392*height), control1: CGPoint(x: 0.30586*width, y: 0.33469*height), control2: CGPoint(x: 0.33469*width, y: 0.30586*height))
        path.addCurve(to: CGPoint(x: 0.39242*width, y: 0.2996*height), control1: CGPoint(x: 0.37348*width, y: 0.33871*height), control2: CGPoint(x: 0.3994*width, y: 0.32139*height))
        path.addCurve(to: CGPoint(x: 0.43436*width, y: 0.28223*height), control1: CGPoint(x: 0.3839*width, y: 0.27298*height), control2: CGPoint(x: 0.42157*width, y: 0.25737*height))
        path.addCurve(to: CGPoint(x: 0.4773*width, y: 0.27368*height), control1: CGPoint(x: 0.44484*width, y: 0.30257*height), control2: CGPoint(x: 0.47541*width, y: 0.29649*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.76517*width, y: 0.23483*height))
        path.addLine(to: CGPoint(x: 0.50001*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.7116*width, y: 0.18126*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.84645*width, y: 0.35649*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.79289*width, y: 0.30292*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.875*width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.82143*width, y: 0.44643*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.84645*width, y: 0.64351*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.79289*width, y: 0.58993*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.76517*width, y: 0.76517*height))
        path.addLine(to: CGPoint(x: 0.50001*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.71159*width, y: 0.71159*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.6435*width, y: 0.84646*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.58994*width, y: 0.79288*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.5*width, y: 0.875*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.44643*width, y: 0.82143*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.3565*width, y: 0.84645*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.30293*width, y: 0.79288*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.23485*width, y: 0.76517*height))
        path.addLine(to: CGPoint(x: 0.50001*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.18127*width, y: 0.71159*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.15356*width, y: 0.64351*height))
        path.addLine(to: CGPoint(x: 0.50002*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.09998*width, y: 0.58993*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.125*width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.07143*width, y: 0.44643*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.15356*width, y: 0.35649*height))
        path.addLine(to: CGPoint(x: 0.50002*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.09999*width, y: 0.30292*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.23485*width, y: 0.23483*height))
        path.addLine(to: CGPoint(x: 0.50001*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.18128*width, y: 0.18126*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.35652*width, y: 0.15355*height))
        path.addLine(to: CGPoint(x: 0.50002*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.30294*width, y: 0.09997*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.50002*width, y: 0.125*height))
        path.addLine(to: CGPoint(x: 0.50002*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.44645*width, y: 0.07143*height, width: 0.10714*width, height: 0.10714*height))
        path.move(to: CGPoint(x: 0.6435*width, y: 0.15354*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.5*height))
        path.addEllipse(in: CGRect(x: 0.58992*width, y: 0.09997*height, width: 0.10714*width, height: 0.10714*height))
        return path
    }
}
public struct OrchidCore: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.4636*width, y: 0.28064*height))
        path.addCurve(to: CGPoint(x: 0.5364*width, y: 0.28064*height), control1: CGPoint(x: 0.46913*width, y: 0.238*height), control2: CGPoint(x: 0.53087*width, y: 0.238*height))
        path.addCurve(to: CGPoint(x: 0.59948*width, y: 0.30114*height), control1: CGPoint(x: 0.54038*width, y: 0.31133*height), control2: CGPoint(x: 0.57822*width, y: 0.32363*height))
        path.addCurve(to: CGPoint(x: 0.65839*width, y: 0.34393*height), control1: CGPoint(x: 0.62903*width, y: 0.26989*height), control2: CGPoint(x: 0.67898*width, y: 0.30618*height))
        path.addCurve(to: CGPoint(x: 0.69737*width, y: 0.39759*height), control1: CGPoint(x: 0.64357*width, y: 0.3711*height), control2: CGPoint(x: 0.66695*width, y: 0.40329*height))
        path.addCurve(to: CGPoint(x: 0.71987*width, y: 0.46684*height), control1: CGPoint(x: 0.73964*width, y: 0.38968*height), control2: CGPoint(x: 0.75872*width, y: 0.4484*height))
        path.addCurve(to: CGPoint(x: 0.71987*width, y: 0.53316*height), control1: CGPoint(x: 0.69191*width, y: 0.48011*height), control2: CGPoint(x: 0.69191*width, y: 0.51989*height))
        path.addCurve(to: CGPoint(x: 0.69737*width, y: 0.60241*height), control1: CGPoint(x: 0.75872*width, y: 0.5516*height), control2: CGPoint(x: 0.73964*width, y: 0.61033*height))
        path.addCurve(to: CGPoint(x: 0.65839*width, y: 0.65607*height), control1: CGPoint(x: 0.66695*width, y: 0.59671*height), control2: CGPoint(x: 0.64357*width, y: 0.6289*height))
        path.addCurve(to: CGPoint(x: 0.59948*width, y: 0.69886*height), control1: CGPoint(x: 0.67898*width, y: 0.69382*height), control2: CGPoint(x: 0.62903*width, y: 0.73011*height))
        path.addCurve(to: CGPoint(x: 0.5364*width, y: 0.71936*height), control1: CGPoint(x: 0.57822*width, y: 0.67637*height), control2: CGPoint(x: 0.54038*width, y: 0.68867*height))
        path.addCurve(to: CGPoint(x: 0.4636*width, y: 0.71936*height), control1: CGPoint(x: 0.53087*width, y: 0.762*height), control2: CGPoint(x: 0.46913*width, y: 0.762*height))
        path.addCurve(to: CGPoint(x: 0.40052*width, y: 0.69886*height), control1: CGPoint(x: 0.45962*width, y: 0.68867*height), control2: CGPoint(x: 0.42178*width, y: 0.67637*height))
        path.addCurve(to: CGPoint(x: 0.34161*width, y: 0.65607*height), control1: CGPoint(x: 0.37097*width, y: 0.73011*height), control2: CGPoint(x: 0.32102*width, y: 0.69382*height))
        path.addCurve(to: CGPoint(x: 0.30263*width, y: 0.60241*height), control1: CGPoint(x: 0.35643*width, y: 0.6289*height), control2: CGPoint(x: 0.33305*width, y: 0.59671*height))
        path.addCurve(to: CGPoint(x: 0.28013*width, y: 0.53316*height), control1: CGPoint(x: 0.26036*width, y: 0.61033*height), control2: CGPoint(x: 0.24128*width, y: 0.5516*height))
        path.addCurve(to: CGPoint(x: 0.28013*width, y: 0.46684*height), control1: CGPoint(x: 0.30809*width, y: 0.51989*height), control2: CGPoint(x: 0.30809*width, y: 0.48011*height))
        path.addCurve(to: CGPoint(x: 0.30263*width, y: 0.39759*height), control1: CGPoint(x: 0.24128*width, y: 0.4484*height), control2: CGPoint(x: 0.26036*width, y: 0.38968*height))
        path.addCurve(to: CGPoint(x: 0.34161*width, y: 0.34393*height), control1: CGPoint(x: 0.33305*width, y: 0.40329*height), control2: CGPoint(x: 0.35643*width, y: 0.3711*height))
        path.addCurve(to: CGPoint(x: 0.40052*width, y: 0.30114*height), control1: CGPoint(x: 0.32102*width, y: 0.30618*height), control2: CGPoint(x: 0.37097*width, y: 0.26989*height))
        path.addCurve(to: CGPoint(x: 0.4636*width, y: 0.28064*height), control1: CGPoint(x: 0.42178*width, y: 0.32363*height), control2: CGPoint(x: 0.45962*width, y: 0.31133*height))
        path.closeSubpath()
        return path
    }
}

// MARK:- Leafs

public struct Leaf1: Shape {
    public func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            path.addEllipse(in: CGRect(x: 0.45615*width, y: 0.45615*height, width: 0.27322*width, height: 0.27322*height))
            path.move(to: CGPoint(x: 0.73379*width, y: 0.73379*height))
            path.addLine(to: CGPoint(x: 0.57326*width, y: 0.72849*height))
            path.addLine(to: CGPoint(x: 0.72805*width, y: 0.57371*height))
            path.addLine(to: CGPoint(x: 0.73379*width, y: 0.73379*height))
            path.closeSubpath()
            path.addEllipse(in: CGRect(x: 0.25637*width, y: 0.25637*height, width: 0.27322*width, height: 0.27322*height))
            path.move(to: CGPoint(x: 0.53401*width, y: 0.534*height))
            path.addLine(to: CGPoint(x: 0.37349*width, y: 0.52871*height))
            path.addLine(to: CGPoint(x: 0.52827*width, y: 0.37392*height))
            path.addLine(to: CGPoint(x: 0.53401*width, y: 0.534*height))
            path.closeSubpath()
            path.addEllipse(in: CGRect(x: 0.05659*width, y: 0.05659*height, width: 0.27322*width, height: 0.27322*height))
            path.move(to: CGPoint(x: 0.33422*width, y: 0.33422*height))
            path.addLine(to: CGPoint(x: 0.1737*width, y: 0.32893*height))
            path.addLine(to: CGPoint(x: 0.32849*width, y: 0.17414*height))
            path.addLine(to: CGPoint(x: 0.33422*width, y: 0.33422*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.16743*width, y: 0.16624*height))
            path.addLine(to: CGPoint(x: 0.90106*width, y: 0.89987*height))
            return path
        }
    }

public struct Leaf2: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0), control1: CGPoint(x: 0, y: 0.22386*height), control2: CGPoint(x: 0.22386*width, y: 0))
        path.addLine(to: CGPoint(x: width, y: 0))
        path.addLine(to: CGPoint(x: width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: height), control1: CGPoint(x: width, y: 0.77614*height), control2: CGPoint(x: 0.77614*width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: 0, y: 0.5*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.01786*width, y: 0.98214*height))
        path.addCurve(to: CGPoint(x: 0.98214*width, y: 0.01786*height), control1: CGPoint(x: 0.33929*width, y: 0.80223*height), control2: CGPoint(x: 0.98214*width, y: 0.37178*height))
        return path
    }
}
