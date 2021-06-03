
import SwiftUI
import AVKit
import PlaygroundSupport

// MARK:- Data

public let flightsData: [DescribleFlight] = [DescribleFlight(t: "I travel short distances", p: 2),DescribleFlight(t: "I travel often to a nearby state or country", p: 6),DescribleFlight(t: "I travel far, such as to another continent.", p: 20)]


// MARK:- Models


public struct DescribleFlight {
    var title: String
    var points: Int
    
    public init(t: String,p: Int) {
        self.title = t
        self.points = p
    }
}



public struct Question {
    
    let text: String!
    let supportingContext: String!
    let choices: [String]!
    let points: [Int]!
    
    
    
    public init(q: String,sc: String, c: [String],p: [Int]) {
        self.text = q
        self.supportingContext = sc
        self.choices = c
        self.points = p
    }
    
}


public struct AddOn {
    
    let text: String
    let point: Int
    
    public init(t: String,p: Int) {
        self.text = t
        self.point = p
    }
    
}


// MARK:- Default Questions


/// This struct defines Constants - K
public struct K {
    
    public init() {
        
    }
    
    static let questions: [Question] = [
        // 1
        Question(q: "What kind of house do you live in?",
                 sc: "A smaller home makes a smaller impact on the environment. Take the size of your home into account as you calculate your impact.",
                 c: ["large house","medium-sized house","small house","I live in an apartment"],
                 p: [10,7,4,2]),
        // 2
        Question(q: "How many people live in your house?",
                 sc: "If you live alone, then your carbon footprint will likely be higher than someone who lives in a house or apartment with other people. This is because you would be sharing the electricity, water, and fuel costs to keep your dwelling up and running.",
                 c: ["1","2","3","4","5","6","more than 6"],
                 p: [14,12,10,8,6,4,2]),
        // 3
        Question(q: "Your diet is an important part of your carbon footprint?",
                 sc: "The types of food that you eat can also have an effect on your carbon footprint. You will have a higher carbon footprint if you eat meat from domesticated animals regularly, and you will have a lower carbon footprint if you eat no meat or animal products at all.",
                 c: ["Meat in every meal","Meat in some meals","No beef","Meat very rarely","Vegetarian","Vegan"],
                 p: [10,8,8,6,4,2]),
        // 4
        Question(q: "Examine your water consumption?",
                 sc: "Your water consumption from appliances is also important to consider as you calculate your carbon footprint. Consider how many times per week you run your dishwasher and/or washing machine.",
                 c: ["runs morethan 9 times/week","runs 4-9 times/week","runs 1-3 times/week"],
                 p: [3,2,1]),
        // 5
        Question(q: "Determine how many household purchases you make each year?",
                 sc: "The amount of new items that you buy for your household can also affect your carbon footprint. If you buy lots of new things, then your score will be higher than someone who does not buy anything or who only buys secondhand items.",
                 c: ["more than 7 items","5 - 7 items","3 - 5 items","less than 3 items","no items purchased"],
                 p: [10,8,6,4,2]),
        // 6
        Question(q: "Consider how much waste you produce?",
                 sc: "The more trash cans you fill each week, the larger your carbon footprint will be. Count up how many times you fill your garbage cans each week and then assign points based on these numbers.",
                 c: ["4 garbage cans/week","3 garbage cans/week","2 garbage cans/week","1 garbage cans/week","half of a garbage can or less/week"],
                 p: [50,40,30,20,5]),
        // 7
        /// TODO: calculate differently and change context
        Question(q: "Identify the amount of waste that you recycle?",
                 sc: "If you do not recycle, then add 24 points to your score. However, if you do recycle, then start with 24 points and subtract 4 points for each type of item that you recycle. You can subtract four points for each of the following recycling categories:",
                 c: ["Glass","Plastic","Paper","Aluminum","Steel","Food waste (composting)"],
                 p: [0,0,0,0,0,0]),
        // 8
        Question(q: "Travel often represents a significant part of people’s footprint.?",
                 sc: "You will also need to consider your travel, including how far you travel in a personal vehicle, how far you travel with public transportation, and how far you travel by plane for vacations.",
                 c: ["Personal Vechile","Public Transportation","Flights"],
                 p: [0,0,0]),
    ]
    
    static let foodAddOns: [AddOn] = [
        AddOn(t: "most of the food you eat is prepackaged convenience food, such as frozen pizza, cereal, and potato chips.", p: 12),
        AddOn(t: "you have a good balance of fresh and convenience food", p: 6),
        AddOn(t: " you only eat fresh, locally grown, or hunted food", p: 12)]
    
    
}


// MARK:- Calculator View

public struct CalculatorView: View {
    
    
    
    @State var questionNo: Int = 0
    @State var value: Float = 0.0
    @State var points: Int = 0
    @State var player: AVAudioPlayer!
    @State var pubRange: Int = 0
    @State var pvtRange: Int = 0
    @State var options: [Int] = []
    @State var flightOptions: [Int] = []
    

    
    public init() {
    }
    
    public var body: some View {
        
        if(questionNo < K.questions.count)  {
            ZStack {
                IsometricView()
                VStack(spacing: 20) {
                
                TopView(value: $value)
                VStack {
                    Text(K.questions[questionNo].text)
                        .font(.system(size: 20, design: .monospaced))
                        .foregroundColor(.black)
                        .padding(8)
                        .padding(.horizontal,8)
                    
                    
                    Text(K.questions[questionNo].supportingContext)
                        .font(.system(size: 14, design: .monospaced))
                        .foregroundColor(.black).padding(8)
                        .padding(.horizontal,8)
                }
                                        Spacer()
                if(questionNo == 6) {
                    VStack(spacing: 10) {
                        ForEach(0..<K.questions[questionNo].choices.count,id: \.self) { index in
                            CheckBoxView(title: K.questions[questionNo].choices[index], action: {
                                self.player.play()
                                points += 24
                                
                                if(options.isEmpty) {
                                    if(options.contains(index+1)) {
                                        if let index = options.firstIndex(of: index+1) {
                                            self.options.remove(at: index+1)
                                        }
                                    } else {
                                        self.options.append(contentsOf: [index+1])
                                    }
                                }
                                
                                
                            })
                        }
                        Text("Leave empty if you haven't recycling")
                            .font(.system(size: 14, design: .monospaced))
                        HStack {
                            Spacer()
                            Text("Done")
                                .padding(12)
                                .frame(width: 120, alignment: .center)
                                .foregroundColor(.black)
                                .background(RoundedRectangle(cornerRadius: 8.0)
                                                .foregroundColor(.white)
                                                .shadow(color: Color(#colorLiteral(red: 0.8156862745, green: 0.8039215686, blue: 0.8823529412, alpha: 1)).opacity(1), radius: 40, x: 0.0, y: 20.0)
                                                .frame(width: UIScreen.main.bounds.size.width*0.1)
                                )
                                .onTapGesture {
                                    if(questionNo < K.questions.count) {
                                        points -= (options.count-1)*4
                                        
                                        self.questionNo+=1
                                        
                                    } else {
                                        self.questionNo = 0
                                    }
                                    
                                    let va = getProgress(of: questionNo+1)
                                    self.value = va
                                }
                        }.padding()
                    }
                    
                } else if(questionNo == 7) {
                    VStack {
                        HStack {
                            Text("Public")
                                .font(.system(size: 16, design: .monospaced))
                                .bold()
                            Spacer()
                            CustomStepper(range: $pubRange)
                        }.padding(4)
                        HStack {
                            Text("Private")
                                .font(.system(size: 16, design: .monospaced))
                                .bold()
                            Spacer()
                            CustomStepper(range: $pvtRange)
                        }.padding(4)
                        
                            Text("Flights")
                                .font(.system(size: 16, design: .monospaced))
                                .bold()
                                .padding(4)
                        VStack(spacing: 10) {
                            ForEach(0..<flightsData.count,id: \.self) { index in
                                CheckBoxView(title: flightsData[index].title, action: {
                                    self.player.play()
                                    points += flightsData[index].points
                                    
                                    
                                    if(flightOptions.count != 0) {
                                    if(flightOptions.contains(index+1)) {
                                        if let index = flightOptions.firstIndex(of: index+1) {
                                            self.flightOptions.remove(at: index+1)
                                        }
                                    } else {
                                        self.flightOptions.append(contentsOf: [index+1])
                                    }
                                    }
    
                                })
                            }
                            
                            Text("Consider all values are counted in miles")
                                .font(.system(size: 14, design: .monospaced))
                            
                            HStack {
                                Spacer()
                                Text("Done")
                                    .padding(12)
                                    .frame(width: 120, alignment: .center)
                                    .foregroundColor(.black)
                                    .background(RoundedRectangle(cornerRadius: 8.0)
                                                    .foregroundColor(.white)
                                                    .shadow(color: Color(#colorLiteral(red: 0.8156862745, green: 0.8039215686, blue: 0.8823529412, alpha: 1)).opacity(1), radius: 40, x: 0.0, y: 20.0)
                                                    .frame(width: UIScreen.main.bounds.size.width*0.1)
                                    )
                                    .onTapGesture {
                                        if(questionNo < K.questions.count) {
                                            
                                            
                                            self.questionNo+=1
                                            
                                        } else {
                                            self.questionNo = 0
                                        }
                                        
                                        let va = getProgress(of: questionNo+1)
                                        self.value = va
                                    }
                            }.padding()
                            
                        }
                    }.padding(.horizontal)
                } else {
                    VStack(spacing: 10) {
                        ForEach(0..<K.questions[questionNo].choices.count,id: \.self) { index in
                            AnswerButton(title: K.questions[questionNo].choices[index], action: {
                                self.player.play()
                                points += K.questions[questionNo].points[index]
                                
                                
                                let va = getProgress(of: questionNo+1)
                                self.value = va
                                if(questionNo < K.questions.count) {
                                    self.questionNo+=1
                                    
                                } else {
                                    self.questionNo = 0
                                }
                            })
                        }
                    }
                }
                
                Spacer()
            }
            .frame(width: 600, height: 800, alignment: .center)
            .onAppear() {
                let url  = Bundle.main.path(forResource: "answer", ofType: ".wav")
                self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
                
            }
            }
            
        } else {
            ZStack {
                FinalResultView(progress: points)
            }
            
        }
    }
    public func getProgress(of questionNo: Int) -> Float {
        let value = Float(questionNo)/Float(K.questions.count)
        return Float(value)
        
    }
    
    public func getPubPoints(of range: Int) -> Int{
        switch range {
        case 0 - 100:
            return 0
        case 100 - 1000:
            return 2
        case 1000 - 10000:
            return 4
        case 10000 - 15000:
            return 6
        case 15000 - 20000:
            return 8
        default:
            return 10
        }
    }
    
    public func getPriPoints(of range: Int) -> Int{
        switch range {
        case 0 - 100:
            return 0
        case 100 - 1000:
            return 4
        case 1000 - 10000:
            return 6
        case 10000 - 15000:
            return 10
        default:
            return 12
        }
    }
}


// MARK:- Answer Button

public struct AnswerButton: View {
    var title: String!
    @State var tapped: Bool = false
    var action: () -> Void
    
    
    public init(title: String, action: @escaping ()-> Void) {
        self.title = title
        self.action = action
    }
    
    
    public var body: some View {
        ZStack {
            Text(title)
                .font(.system(size: 16, design: .monospaced))
                .scaleEffect(tapped ? 1.11 : 1.0)
                .foregroundColor(Color.black)
                .padding()
                .background(RoundedRectangle(cornerRadius: 8.0)
                                .foregroundColor(.white)
                                .shadow(color: Color(#colorLiteral(red: 0.8156862745, green: 0.8039215686, blue: 0.8823529412, alpha: 1)).opacity(1), radius: 40, x: 0.0, y: 20.0)
                                .frame(width: UIScreen.main.bounds.size.width*0.5)
                )
        }.onTapGesture {
            withAnimation(Animation.easeInOut(duration: 0.5)) {
                self.action()
            }
            
            
            
        }.onAppear(perform: {
            self.tapped = true
        })
        .onDisappear(perform: {
            self.tapped = false
        })
    }
}

// MARK:- Check Box


public struct CheckBoxView: View {
    
    var title: String
    var action: () -> Void
    
    @State private var checked: Bool = false
    
    public init(title: String, action: @escaping ()-> Void) {
        self.title = title
        self.action = action
    }
    
    
    public var body: some View {
        VStack{
            HStack {
                Image(systemName: checked ? "checkmark.square.fill" : "square")
                    .font(.title2)
                    .foregroundColor(checked ? Color.green : Color.black)
                    .padding(.horizontal,8)
                    .onTapGesture {
                        withAnimation(Animation.easeInOut(duration: 0.5)) {
                            self.checked.toggle()
                            self.action()
                        }
                        
                        
                    }
                Text(title)
                    .font(.system(size: 12, weight: .regular, design: .monospaced))
                
                Spacer()
            }.frame(width: 500)
            .padding()
            
        }.background(RoundedRectangle(cornerRadius: 8.0)
                        .foregroundColor(.white)
                        .shadow(color: Color(#colorLiteral(red: 0.8156862745, green: 0.8039215686, blue: 0.8823529412, alpha: 1)).opacity(1), radius: 40, x: 0.0, y: 20.0)
                        .frame(width: UIScreen.main.bounds.size.width*0.7)
        )
        
    }
}

// MARK:- Check Stepper

public struct CustomStepper: View {
    
    @Binding var range: Int
    
    public init(range: Binding<Int>) {
        self._range = range
    }
    
    public var body: some View {
        HStack {
            VStack(alignment:.leading, spacing: 0){
               
                HStack {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 24))
                        .foregroundColor(Color.white.opacity(0.8))
                        .padding(4)
                        .onTapGesture {
                            withAnimation {
                                self.range += 1000
                            }
                        }
                    Text(String(range))
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .frame(width: 80,height: 30, alignment: .center)
                    Image(systemName: "minus.circle.fill")
                        .font(.system(size: 24))
                        .foregroundColor(Color.white.opacity(0.8))
                        .padding(4)
                        .onTapGesture {
                            withAnimation {
                                if(range < 0) {
                                    self.range -= 1000
                                }
                            }
                        }
                }.padding(4).background(RoundedRectangle(cornerRadius: 30.0).foregroundColor(Color.gray))
            }
        }
    }
}



// MARK:- Progress Bar

public struct ProgressBar: View {
    @Binding var value: Float
    @Binding var color: Color
    
    public init(value: Binding<Float>, color: Binding<Color>) {
        self._value = value
        self._color = color
    }
    
    
    public var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(color)
                
                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(color)
                    .animation(Animation.linear)
            }.cornerRadius(8.0)
        }
    }
}

public struct FinalView: View {
    @Binding var progressValue: Float
    @Binding var color: Color
    
    public init(progressValue: Binding<Float>, color: Binding<Color>) {
        self._progressValue = progressValue
        self._color = color
    }
    
    public var body: some View {
        VStack {
            ProgressBar(value: $progressValue, color: $color).frame(height: 20)
                .onTapGesture {
                    self.startProgressBar()
                }
                .onLongPressGesture {
                    self.resetProgressBar()
                }
            Spacer()
        }
    }
    
    func startProgressBar() {
        for _ in 0...16 {
            self.progressValue += 0.015
        }
    }
    
    func resetProgressBar() {
        self.progressValue = 0.0
    }
}

public struct MoreBar: View {
    
    public init() {
        
    }
    
    
    public var body: some View {
        VStack {
            VStack(alignment:.leading) {
                HStack {
                    ForEach(0..<5) {_ in
                        //                        FinalView(progressValue: )
                    }
                }.frame(height: 10, alignment: .center)
                HStack {
                    Text(" Question 2 of 5")
                }.padding(.vertical,8)
                .padding(.horizontal,4)
            }.padding()
        }
        
    }
}


// MARK:- Top View


public struct TopView: View {
    @State var pcolor: Color = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
    @Binding var value: Float
    
    public init(value: Binding<Float>) {
        self._value = value
    }
    
    public var body: some View {
        VStack{
            ColorPicker("Select progress color", selection: $pcolor).padding()
            
            
            FinalView(progressValue: $value,color: $pcolor).padding()
                .frame(height: 50, alignment: .center)
            
        }
    }
}


// MARK:- Final Result View


public struct FinalResultView: View {
    
    @State private var stroke = 2
    @State var bcolor: Color = Color(#colorLiteral(red: 0.9333333333, green: 0.968627451, blue: 0.9960784314, alpha: 1))
    @State var p1color: Color = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
    @State var p2color: Color = Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    @State var isCardDark: Bool = false
    var progress: Int
    
    public init(progress: Int) {
        self.progress = progress
    }
    
    
    
    public var body: some View {
        ZStack {
            bcolor.ignoresSafeArea()
    
            VStack {
                VStack(spacing: 0) {
                    Text("Your Carbon Footprint")
                    .font(.title)
                    .bold()
                        .padding(.leading)
                        .padding(.top)
                    Picker("Colors", selection: $stroke) {
                        Text("Background").tag(1)
                        Text("Progress Start").tag(2)
                        Text("Progress End").tag(3)
                    }.pickerStyle(SegmentedPickerStyle())
                    .padding()
                    Text("Change colors schemes with respect to segemented picker")
                        .font(.caption)
                        .padding(0)
                }
                
                VStack {
                    ColorPicker("Select progress color", selection: get(value: stroke))
                   Toggle("Invert Font Color", isOn: $isCardDark)
                    
                }.padding()
                .background(VisualEffectBlur(blurStyle: isCardDark ? .systemThinMaterialDark : .systemThinMaterialLight))
                .overlay(RoundedRectangle(cornerRadius: 8,style: .continuous).stroke(Color.white).blendMode(.overlay))
                .mask(RoundedRectangle(cornerRadius: 8,style: .continuous))
                .padding()
                
                ZStack {
                    RingView(thiswidth: 275, thisheight: 275, color1: p1color, color2: p2color,startPos: 0.99 -  CGFloat(progress)/180)
                    Footprint()
                        .fill(Color(#colorLiteral(red: 0.3882352941, green: 0.8, blue: 0.5098039216, alpha: 1)))
                        .frame(width: 120, height: 120*1.2, alignment: .center)
                    
                }
            

                Text("\(progress)")
                    .font(.system(size: 40.0, weight: .heavy, design: .monospaced))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,maxHeight: .infinity , alignment: .center)
                    .padding(.top,30)

                
                Text("Understand Your Foot Print")
                    .font(.title3)
                    .bold()
                    .padding(.top,30)
                
                VStack(alignment: .leading,spacing: 10) {
                    HStack(alignment: .center) {
                        Text("🌟")
                            .font(.title)
                        Text("The lower the score the better. If your score is less than 60 points, then you are making a small impact on your planet. ")
                    }
                    
                    
                        
                }
                .font(.footnote)
                .padding(24)
                
               
                Spacer()
                

                
            }.foregroundColor(isCardDark ? Color.white : Color.black)
            
            
            
            
        }
    }
    
    public func get(value: Int) -> Binding<Color> {
        switch value {
        case 2:
            return $p1color
        case 3:
            return $p2color
        default:
            return $bcolor
        }
    }

    
    
    
}

public struct RingView: View {
    let thiswidth: CGFloat
    let thisheight: CGFloat
    let color1: Color
    let color2: Color
    let startPos: CGFloat
    
    @State var show = false
    
    public var body: some View {
        ZStack {
            Circle()
                .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 25))
                .frame(width: self.thiswidth, height: self.thisheight, alignment: .center)
                    Circle()
                        
                        .trim(from: show ? startPos : 0.99 , to: 1)
                        .stroke(LinearGradient(gradient: Gradient(colors: [color1,color2]), startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 25, lineCap: .round, lineJoin: .round))
                        .rotationEffect(.degrees(90))
                        .frame(width: self.thiswidth, height: self.thisheight, alignment: .center)
                        .rotation3DEffect(Angle(degrees: 180), axis: (x: 0, y: -1, z: 0))
                 
                        .animation(.spring())
                        .onAppear {
                            self.show.toggle()
                        }
            
        }
    }
}


public struct Footprint: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.12612*width, y: 0.00086*height))
        path.addCurve(to: CGPoint(x: 0.05849*width, y: 0.02227*height), control1: CGPoint(x: 0.10218*width, y: 0.00328*height), control2: CGPoint(x: 0.07726*width, y: 0.01117*height))
        path.addCurve(to: CGPoint(x: 0.02602*width, y: 0.04883*height), control1: CGPoint(x: 0.04777*width, y: 0.02859*height), control2: CGPoint(x: 0.03277*width, y: 0.04086*height))
        path.addCurve(to: CGPoint(x: 0.02056*width, y: 0.18047*height), control1: CGPoint(x: -0.00636*width, y: 0.08695*height), control2: CGPoint(x: -0.00844*width, y: 0.13805*height))
        path.addCurve(to: CGPoint(x: 0.13704*width, y: 0.25008*height), control1: CGPoint(x: 0.04518*width, y: 0.21648*height), control2: CGPoint(x: 0.08729*width, y: 0.24172*height))
        path.addCurve(to: CGPoint(x: 0.19563*width, y: 0.25055*height), control1: CGPoint(x: 0.15114*width, y: 0.2525*height), control2: CGPoint(x: 0.18262*width, y: 0.25273*height))
        path.addCurve(to: CGPoint(x: 0.30377*width, y: 0.17516*height), control1: CGPoint(x: 0.24737*width, y: 0.24188*height), control2: CGPoint(x: 0.28729*width, y: 0.21406*height))
        path.addCurve(to: CGPoint(x: 0.31122*width, y: 0.13594*height), control1: CGPoint(x: 0.30983*width, y: 0.16094*height), control2: CGPoint(x: 0.31122*width, y: 0.15367*height))
        path.addCurve(to: CGPoint(x: 0.30516*width, y: 0.09883*height), control1: CGPoint(x: 0.31122*width, y: 0.11883*height), control2: CGPoint(x: 0.31033*width, y: 0.11305*height))
        path.addCurve(to: CGPoint(x: 0.16485*width, y: 0.00117*height), control1: CGPoint(x: 0.2864*width, y: 0.04734*height), control2: CGPoint(x: 0.23069*width, y: 0.00852*height))
        path.addCurve(to: CGPoint(x: 0.12612*width, y: 0.00086*height), control1: CGPoint(x: 0.15362*width, y: -0.00008*height), control2: CGPoint(x: 0.13654*width, y: -0.00023*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.61847*width, y: 0.01641*height))
        path.addCurve(to: CGPoint(x: 0.55839*width, y: 0.07531*height), control1: CGPoint(x: 0.58481*width, y: 0.02398*height), control2: CGPoint(x: 0.56485*width, y: 0.04359*height))
        path.addCurve(to: CGPoint(x: 0.55948*width, y: 0.11164*height), control1: CGPoint(x: 0.5565*width, y: 0.08484*height), control2: CGPoint(x: 0.5571*width, y: 0.10391*height))
        path.addCurve(to: CGPoint(x: 0.58113*width, y: 0.14195*height), control1: CGPoint(x: 0.56346*width, y: 0.12391*height), control2: CGPoint(x: 0.57041*width, y: 0.13367*height))
        path.addCurve(to: CGPoint(x: 0.59921*width, y: 0.15273*height), control1: CGPoint(x: 0.58918*width, y: 0.1482*height), control2: CGPoint(x: 0.59156*width, y: 0.14953*height))
        path.addCurve(to: CGPoint(x: 0.66683*width, y: 0.14664*height), control1: CGPoint(x: 0.61946*width, y: 0.16102*height), control2: CGPoint(x: 0.64389*width, y: 0.15883*height))
        path.addCurve(to: CGPoint(x: 0.6995*width, y: 0.10586*height), control1: CGPoint(x: 0.68213*width, y: 0.13844*height), control2: CGPoint(x: 0.69384*width, y: 0.12383*height))
        path.addCurve(to: CGPoint(x: 0.69603*width, y: 0.04984*height), control1: CGPoint(x: 0.70526*width, y: 0.08742*height), control2: CGPoint(x: 0.70387*width, y: 0.06461*height))
        path.addCurve(to: CGPoint(x: 0.65978*width, y: 0.0193*height), control1: CGPoint(x: 0.68937*width, y: 0.03734*height), control2: CGPoint(x: 0.67527*width, y: 0.02547*height))
        path.addCurve(to: CGPoint(x: 0.61847*width, y: 0.01641*height), control1: CGPoint(x: 0.64816*width, y: 0.01469*height), control2: CGPoint(x: 0.63148*width, y: 0.01352*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.43148*width, y: 0.01648*height))
        path.addCurve(to: CGPoint(x: 0.36425*width, y: 0.06273*height), control1: CGPoint(x: 0.39911*width, y: 0.01969*height), control2: CGPoint(x: 0.3721*width, y: 0.03828*height))
        path.addCurve(to: CGPoint(x: 0.36276*width, y: 0.08125*height), control1: CGPoint(x: 0.36256*width, y: 0.06828*height), control2: CGPoint(x: 0.36236*width, y: 0.0707*height))
        path.addCurve(to: CGPoint(x: 0.37547*width, y: 0.1207*height), control1: CGPoint(x: 0.36356*width, y: 0.09711*height), control2: CGPoint(x: 0.36643*width, y: 0.10617*height))
        path.addCurve(to: CGPoint(x: 0.42105*width, y: 0.15555*height), control1: CGPoint(x: 0.3864*width, y: 0.1382*height), control2: CGPoint(x: 0.40238*width, y: 0.15039*height))
        path.addCurve(to: CGPoint(x: 0.44191*width, y: 0.15734*height), control1: CGPoint(x: 0.42661*width, y: 0.15711*height), control2: CGPoint(x: 0.42949*width, y: 0.15734*height))
        path.addCurve(to: CGPoint(x: 0.46524*width, y: 0.15516*height), control1: CGPoint(x: 0.45482*width, y: 0.15734*height), control2: CGPoint(x: 0.4573*width, y: 0.15711*height))
        path.addCurve(to: CGPoint(x: 0.51341*width, y: 0.12406*height), control1: CGPoint(x: 0.48669*width, y: 0.15*height), control2: CGPoint(x: 0.50338*width, y: 0.13922*height))
        path.addCurve(to: CGPoint(x: 0.52165*width, y: 0.09609*height), control1: CGPoint(x: 0.51946*width, y: 0.11492*height), control2: CGPoint(x: 0.52155*width, y: 0.10773*height))
        path.addCurve(to: CGPoint(x: 0.48808*width, y: 0.03078*height), control1: CGPoint(x: 0.52175*width, y: 0.07141*height), control2: CGPoint(x: 0.50924*width, y: 0.04711*height))
        path.addCurve(to: CGPoint(x: 0.45879*width, y: 0.01727*height), control1: CGPoint(x: 0.47944*width, y: 0.02406*height), control2: CGPoint(x: 0.46792*width, y: 0.01883*height))
        path.addCurve(to: CGPoint(x: 0.43148*width, y: 0.01648*height), control1: CGPoint(x: 0.45154*width, y: 0.01609*height), control2: CGPoint(x: 0.43893*width, y: 0.0157*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.78898*width, y: 0.07383*height))
        path.addCurve(to: CGPoint(x: 0.72294*width, y: 0.14414*height), control1: CGPoint(x: 0.75462*width, y: 0.07945*height), control2: CGPoint(x: 0.72294*width, y: 0.11313*height))
        path.addCurve(to: CGPoint(x: 0.72949*width, y: 0.16625*height), control1: CGPoint(x: 0.72294*width, y: 0.1532*height), control2: CGPoint(x: 0.72443*width, y: 0.15828*height))
        path.addCurve(to: CGPoint(x: 0.75045*width, y: 0.18531*height), control1: CGPoint(x: 0.73337*width, y: 0.17242*height), control2: CGPoint(x: 0.7431*width, y: 0.18133*height))
        path.addCurve(to: CGPoint(x: 0.83069*width, y: 0.18703*height), control1: CGPoint(x: 0.77478*width, y: 0.19844*height), control2: CGPoint(x: 0.80745*width, y: 0.19922*height))
        path.addCurve(to: CGPoint(x: 0.86435*width, y: 0.15562*height), control1: CGPoint(x: 0.8427*width, y: 0.18078*height), control2: CGPoint(x: 0.8566*width, y: 0.16781*height))
        path.addCurve(to: CGPoint(x: 0.87398*width, y: 0.11789*height), control1: CGPoint(x: 0.8719*width, y: 0.14383*height), control2: CGPoint(x: 0.87597*width, y: 0.12797*height))
        path.addCurve(to: CGPoint(x: 0.85482*width, y: 0.08891*height), control1: CGPoint(x: 0.8716*width, y: 0.10602*height), control2: CGPoint(x: 0.86624*width, y: 0.09789*height))
        path.addCurve(to: CGPoint(x: 0.83793*width, y: 0.07938*height), control1: CGPoint(x: 0.84876*width, y: 0.08414*height), control2: CGPoint(x: 0.84528*width, y: 0.08219*height))
        path.addCurve(to: CGPoint(x: 0.82274*width, y: 0.07461*height), control1: CGPoint(x: 0.83287*width, y: 0.07742*height), control2: CGPoint(x: 0.82602*width, y: 0.07523*height))
        path.addCurve(to: CGPoint(x: 0.78898*width, y: 0.07383*height), control1: CGPoint(x: 0.8141*width, y: 0.07281*height), control2: CGPoint(x: 0.79742*width, y: 0.07242*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.93078*width, y: 0.16875*height))
        path.addCurve(to: CGPoint(x: 0.8718*width, y: 0.21914*height), control1: CGPoint(x: 0.90228*width, y: 0.17461*height), control2: CGPoint(x: 0.87845*width, y: 0.195*height))
        path.addCurve(to: CGPoint(x: 0.87229*width, y: 0.24453*height), control1: CGPoint(x: 0.87001*width, y: 0.22578*height), control2: CGPoint(x: 0.87021*width, y: 0.23836*height))
        path.addCurve(to: CGPoint(x: 0.8864*width, y: 0.26445*height), control1: CGPoint(x: 0.87478*width, y: 0.2518*height), control2: CGPoint(x: 0.88024*width, y: 0.25953*height))
        path.addCurve(to: CGPoint(x: 0.99196*width, y: 0.23891*height), control1: CGPoint(x: 0.91629*width, y: 0.28828*height), control2: CGPoint(x: 0.97041*width, y: 0.27523*height))
        path.addCurve(to: CGPoint(x: 0.9994*width, y: 0.21211*height), control1: CGPoint(x: 0.99811*width, y: 0.22867*height), control2: CGPoint(x: 0.9994*width, y: 0.22383*height))
        path.addCurve(to: CGPoint(x: 0.99682*width, y: 0.19633*height), control1: CGPoint(x: 0.9993*width, y: 0.20328*height), control2: CGPoint(x: 0.99901*width, y: 0.20125*height))
        path.addCurve(to: CGPoint(x: 0.98312*width, y: 0.17883*height), control1: CGPoint(x: 0.99335*width, y: 0.18859*height), control2: CGPoint(x: 0.98977*width, y: 0.18398*height))
        path.addCurve(to: CGPoint(x: 0.93078*width, y: 0.16875*height), control1: CGPoint(x: 0.97021*width, y: 0.16859*height), control2: CGPoint(x: 0.95015*width, y: 0.16477*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.52483*width, y: 0.17781*height))
        path.addCurve(to: CGPoint(x: 0.37567*width, y: 0.20711*height), control1: CGPoint(x: 0.46544*width, y: 0.18133*height), control2: CGPoint(x: 0.41917*width, y: 0.19047*height))
        path.addCurve(to: CGPoint(x: 0.2717*width, y: 0.29219*height), control1: CGPoint(x: 0.33178*width, y: 0.22398*height), control2: CGPoint(x: 0.29662*width, y: 0.25273*height))
        path.addCurve(to: CGPoint(x: 0.24737*width, y: 0.43672*height), control1: CGPoint(x: 0.24201*width, y: 0.3393*height), control2: CGPoint(x: 0.23327*width, y: 0.39141*height))
        path.addCurve(to: CGPoint(x: 0.32095*width, y: 0.51273*height), control1: CGPoint(x: 0.25829*width, y: 0.47148*height), control2: CGPoint(x: 0.28451*width, y: 0.49859*height))
        path.addCurve(to: CGPoint(x: 0.37587*width, y: 0.52461*height), control1: CGPoint(x: 0.33734*width, y: 0.51914*height), control2: CGPoint(x: 0.35223*width, y: 0.52234*height))
        path.addCurve(to: CGPoint(x: 0.5139*width, y: 0.56211*height), control1: CGPoint(x: 0.43108*width, y: 0.52984*height), control2: CGPoint(x: 0.47845*width, y: 0.54273*height))
        path.addCurve(to: CGPoint(x: 0.57378*width, y: 0.62266*height), control1: CGPoint(x: 0.5431*width, y: 0.57813*height), control2: CGPoint(x: 0.56395*width, y: 0.59922*height))
        path.addCurve(to: CGPoint(x: 0.57746*width, y: 0.69078*height), control1: CGPoint(x: 0.58232*width, y: 0.64297*height), control2: CGPoint(x: 0.58391*width, y: 0.67141*height))
        path.addCurve(to: CGPoint(x: 0.50437*width, y: 0.80508*height), control1: CGPoint(x: 0.56971*width, y: 0.71453*height), control2: CGPoint(x: 0.557*width, y: 0.7343*height))
        path.addCurve(to: CGPoint(x: 0.45819*width, y: 0.88039*height), control1: CGPoint(x: 0.48312*width, y: 0.83375*height), control2: CGPoint(x: 0.46594*width, y: 0.86164*height))
        path.addCurve(to: CGPoint(x: 0.45869*width, y: 0.94258*height), control1: CGPoint(x: 0.44945*width, y: 0.90156*height), control2: CGPoint(x: 0.44955*width, y: 0.92461*height))
        path.addCurve(to: CGPoint(x: 0.56226*width, y: 0.9982*height), control1: CGPoint(x: 0.47398*width, y: 0.97242*height), control2: CGPoint(x: 0.50983*width, y: 0.99172*height))
        path.addCurve(to: CGPoint(x: 0.63357*width, y: 0.9982*height), control1: CGPoint(x: 0.57766*width, y: 1.00008*height), control2: CGPoint(x: 0.61599*width, y: 1.00008*height))
        path.addCurve(to: CGPoint(x: 0.70159*width, y: 0.98672*height), control1: CGPoint(x: 0.66117*width, y: 0.99516*height), control2: CGPoint(x: 0.6862*width, y: 0.99094*height))
        path.addCurve(to: CGPoint(x: 0.88431*width, y: 0.80555*height), control1: CGPoint(x: 0.77339*width, y: 0.9668*height), control2: CGPoint(x: 0.83595*width, y: 0.90469*height))
        path.addCurve(to: CGPoint(x: 0.94975*width, y: 0.58125*height), control1: CGPoint(x: 0.91589*width, y: 0.74078*height), control2: CGPoint(x: 0.94002*width, y: 0.65812*height))
        path.addCurve(to: CGPoint(x: 0.95382*width, y: 0.51328*height), control1: CGPoint(x: 0.95323*width, y: 0.55414*height), control2: CGPoint(x: 0.95382*width, y: 0.54469*height))
        path.addCurve(to: CGPoint(x: 0.94826*width, y: 0.44727*height), control1: CGPoint(x: 0.95382*width, y: 0.47852*height), control2: CGPoint(x: 0.95333*width, y: 0.47289*height))
        path.addCurve(to: CGPoint(x: 0.88729*width, y: 0.30234*height), control1: CGPoint(x: 0.93525*width, y: 0.38141*height), control2: CGPoint(x: 0.91658*width, y: 0.33719*height))
        path.addCurve(to: CGPoint(x: 0.85303*width, y: 0.26953*height), control1: CGPoint(x: 0.87597*width, y: 0.28898*height), control2: CGPoint(x: 0.86773*width, y: 0.28102*height))
        path.addCurve(to: CGPoint(x: 0.72939*width, y: 0.2068*height), control1: CGPoint(x: 0.82205*width, y: 0.24508*height), control2: CGPoint(x: 0.78391*width, y: 0.22578*height))
        path.addCurve(to: CGPoint(x: 0.6007*width, y: 0.1793*height), control1: CGPoint(x: 0.68421*width, y: 0.19109*height), control2: CGPoint(x: 0.64826*width, y: 0.18344*height))
        path.addCurve(to: CGPoint(x: 0.52483*width, y: 0.17781*height), control1: CGPoint(x: 0.58719*width, y: 0.17813*height), control2: CGPoint(x: 0.53654*width, y: 0.17711*height))
        path.closeSubpath()
        return path
    }
}

