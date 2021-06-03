import Foundation

//
//  Game.swift
//  Earth
//
//  Created by RANGA REDDY NUKALA on 17/04/21.
//

import SwiftUI
import AVKit
import PlaygroundSupport


public final class GameController: ObservableObject {
    @Published var earth = GameObject.earth()
    @Published private(set) var clouds = [GameObject]()
    @Published private(set) var trees = [GameObject]()
    @Published private(set) var trashes = [GameObject]()
    @Published private(set) var recycles = [GameObject]()
    @Published private(set) var score = 0
    @Published private(set) var lifes = 3
    @Published private(set) var totalRecycles = 0
    @Published private(set) var totalCarbons = 0
    @Published public var status = false
    @Published private(set) var player: AVAudioPlayer!
    var movement: Movement?
    private var lastCloudSpawnDate = Date()
    private var lastTreeSpawnDate = Date()
    private var lastCarbonSpawnDate = Date()
    private var lastRecycleSpawnDate = Date()
    private var displayLink: CADisplayLink?
    
    public init() {

    }
           

    public func activate() {
        diactivate()
        guard displayLink == nil else { return }
        
        let link = CADisplayLink(target: self, selector: #selector(update))
        link.preferredFramesPerSecond = 60
        link.add(to: .main, forMode: .common)
        displayLink = link
        
        reset()
    }
    
    public func reset() {
        self.score = 0
        self.lifes = 3
        self.totalRecycles = 0
        self.totalCarbons = 0
    }
    
    public func loadAudioFile(name: String) {
        let url  = Bundle.main.path(forResource: name, ofType: ".wav")
        self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
        self.player.play()
    }
    
    public func diactivate() {
            displayLink?.invalidate()
            displayLink = nil
    }

    @objc public func update() {
        switch movement?.direction {
        case nil:
            break
        case .leading:
            earth.offset.x -= earth.speed
        case .trailing:
            earth.offset.x += earth.speed
        }

        earth.offset.x = max(0.1, min(earth.offset.x, 0.9))

        let currentDate = Date()

        if currentDate.timeIntervalSince(lastCloudSpawnDate) > 1.5 {
            clouds.append(.cloud())
            lastCloudSpawnDate = currentDate
        }

        if currentDate.timeIntervalSince(lastTreeSpawnDate) > 3 {
            trees.append(.tree())
            lastTreeSpawnDate = currentDate
        }
        
        if currentDate.timeIntervalSince(lastCarbonSpawnDate) > 2 {
            trashes.append(.carbon())
            lastCarbonSpawnDate = currentDate
        }
        
        if currentDate.timeIntervalSince(lastRecycleSpawnDate) > 10 {
            recycles.append(.recycle())
            lastRecycleSpawnDate = currentDate
        }

        moveGameObjects(\.clouds)
        moveGameObjects(\.trees)
        moveGameObjects(\.trashes)
        moveGameObjects(\.recycles)

        let collisionThreshold: CGFloat = 0.06

        trees = trees.filter { tree in
            let contact = (
                x: abs(earth.offset.x - tree.offset.x) < collisionThreshold,
                y: abs(earth.offset.y - tree.offset.y) < collisionThreshold
            )

            guard contact.x, contact.y else {
                return true
            }
            
            loadAudioFile(name: "tree")
            score += 100
            return false
        }
        
        trashes = trashes.filter { trash in
            let contact = (
                x: abs(earth.offset.x - trash.offset.x) < collisionThreshold,
                y: abs(earth.offset.y - trash.offset.y) < collisionThreshold
            )

            guard contact.x, contact.y else {
                return true
            }
            
            loadAudioFile(name: "carbon")
            totalCarbons += 1
            if(lifes > 1) {
                lifes -= 1
            } else {
                self.status = true
            }
            
            return false
        }
        
        recycles = recycles.filter { recycle in
            let contact = (
                x: abs(earth.offset.x - recycle.offset.x) < collisionThreshold,
                y: abs(earth.offset.y - recycle.offset.y) < collisionThreshold
            )

            guard contact.x, contact.y else {
                return true
            }
            
            loadAudioFile(name: "recycle")
            totalRecycles += 1
            if(lifes < 3) {
                lifes += 1
            }
            
            return false
        }
    }

    public func moveGameObjects(
        _ keyPath: ReferenceWritableKeyPath<GameController, [GameObject]>
    ) {
        self[keyPath: keyPath] = self[keyPath: keyPath].compactMap {
            var object = $0
            object.offset.y += object.speed
            return object.offset.y < 1.1 ? object : nil
        }
    }
}

public struct Movement {
    enum Direction {
        case leading, trailing
    }


    var direction: Direction? = nil
    var location: CGPoint
}

public struct Game: View {
    @ObservedObject var controller: GameController
    @State var enableRecycle: Bool
    
    public init(enableRecycle: State<Bool>) {
        self.controller = GameController()
        self._enableRecycle = enableRecycle
    }

    public var body: some View {
            
        
        if(controller.status) {
            ScoreCard(gameStatus: $controller.status, points: controller.score, carbons: controller.totalCarbons, recycles: controller.totalRecycles).onAppear(perform: {
                controller.diactivate()
            })
        } else {
            ZStack {
                GeometryReader { proxy in
                        ForEach(controller.clouds) { cloud in
                            cloud.renderedInContainer(ofSize: proxy.size)
                        }
                        ForEach(controller.trees) { tree in
                            tree.renderedInContainer(ofSize: proxy.size)
                        }
                        ForEach(controller.trashes) { trash in
                             trash.renderedInContainer(ofSize: proxy.size)
                        }
                        if(enableRecycle) {
                            ForEach(controller.recycles) { recycle in
                                 recycle.renderedInContainer(ofSize: proxy.size)
                            }
                        }
                        ZStack(alignment: .top) {
                            HStack {
                                Text("Score: \(controller.score)")
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(4)
                                    .background(RoundedRectangle(cornerRadius: 8.0).foregroundColor(.orange))
                                Spacer()
                                Text("Lifes: \(controller.lifes)")
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(4)
                                    .background(RoundedRectangle(cornerRadius: 8.0).foregroundColor(.orange))
                            }
                            .padding(.top)
                            .padding(.horizontal)
                        }
                        controller.earth
                            .renderedInContainer(ofSize: proxy.size)
                    }
                .background(Color(#colorLiteral(red: 0, green: 0.7215686275, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all))
                    .onAppear(perform:controller.activate)
                .gesture(gesture)
                
            }
        }
        }
        

    public var gesture: some Gesture {
        DragGesture(minimumDistance: 0)
            .onChanged { state in
                guard var movement = controller.movement else {
                    controller.movement = Movement(location: state.location)
                    return
                }

                let delta = state.location.x - movement.location.x
                let threshold: CGFloat = 5

                if delta > threshold {
                    movement.direction = .trailing
                } else if delta < -threshold {
                    movement.direction = .leading
                }

                movement.location = state.location
                controller.movement = movement
            }
            .onEnded { _ in
                controller.movement = nil
            }
    }
}

public struct GameObject: View, Identifiable {
    public let id = UUID()
    var spriteName: String
    var color: Color
    var speed: CGFloat
    var scale: CGFloat
    var rotation = Angle(degrees: 0)
    var offset = Self.randomStartOffset()

    public var body: some View {
        if spriteName == "icloud.fill" {
            Image(systemName: spriteName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(color)
                .rotationEffect(rotation)
        } else {
            Image(uiImage: UIImage(named: spriteName)!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(color)
                .rotationEffect(rotation)
        }
        
    }

    public func renderedInContainer(ofSize size: CGSize) -> some View {
        position(
            x: offset.x * size.width,
            y: offset.y * size.height
        )
        .frame(width: size.width * scale)
    }
}

public extension GameObject {
    static func earth() -> Self {
        GameObject(
            spriteName: "earth.png",
            color: .black,
            speed: 0.01,
            scale: 0.15,
            rotation: Angle(degrees: -90),
            offset: (0.5, 0.9)
        )
    }

    static func cloud() -> Self {
        GameObject(
            spriteName: "icloud.fill",
            color: .white,
            speed: 0.002,
            scale: 0.3
        )
    }

    static func tree() -> Self {
        GameObject(
            spriteName: "tree.png",
            color: .yellow,
            speed: 0.005,
            scale: 0.15
        )
    }
    
    static func carbon() -> Self {
        GameObject(
            spriteName: "carbon.png",
            color: .red,
            speed: 0.01,
            scale: 0.1
        )
    }
    
    static func recycle() -> Self {
        GameObject(
            spriteName: "recycle.png",
            color: .red,
            speed: 0.02,
            scale: 0.12
        )
    }


    static func randomStartOffset() -> (x: CGFloat, y: CGFloat) {
        (.random(in: 0..<1), -0.1)
    }
}

// MARK:- Score Card

public struct ScoreCard: View {
    
    var points: Int
    var carbons: Int
    var recycles: Int
    @Binding public var gameStatus: Bool

    
    
    
    public init(gameStatus: Binding<Bool>,points: Int, carbons: Int,recycles: Int) {
        self._gameStatus = gameStatus
        self.points = points
        self.carbons = carbons
        self.recycles = recycles
    }
    
    func getScore() -> String {
        let cal =  points + (carbons * 7) + (recycles * 22)
        return String(cal * 13)
    }
    
    
    
    public var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0, green: 0.7215686275, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack(spacing: 4.0) {
                Text("Game Over")
                    .font(.system(size: 34.0, weight: .bold, design: .monospaced))
                    .foregroundColor(.pink)
                ZStack {
                    Divider()
                    Divider()
                    Divider()
                }.padding(8)
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(uiImage: UIImage(named: "earth.png")!)
                                .resizable()
                                .frame(width: 60, height: 60, alignment: .center)
                                .padding(8)
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Total Points")
                                    .font(.system(size: 20.0, weight: .bold, design: .monospaced))
                                    .foregroundColor(.black)
                                Text(getScore())
                                    .font(.system(size: 36.0, weight: .bold, design: .monospaced))
                                    .foregroundColor(.green)
                            }
                        }
                        VStack(alignment: .leading,spacing:0) {
                            ObjectsView(image: "tree.png", hit: points/100, subtitile: "Trees Planted")
                            ObjectsView(image: "carbon.png", hit: carbons, subtitile: "Carbon Hits")
                            ObjectsView(image: "recycle.png", hit: recycles, subtitile: "Recycle Lifes")
                        }.foregroundColor(.black)
                        .padding()
                    }
                    
                    Spacer()
                }
                
                
                Text("Play Again")
                    .font(.system(size: 20.0, weight: .bold, design: .monospaced))
                    .foregroundColor(.white)
                    .padding()
                    .frame( maxWidth: .infinity, alignment: .center)
                    .background(RoundedRectangle(cornerRadius: 8.0).foregroundColor(.green)
                                    .onTapGesture {
                                        self.gameStatus.toggle()
                                    }
                                    .shadow(color: Color.black.opacity(0.22), radius: 10, x: 0.0, y: 10.0)
                                    .shadow(color: Color.white.opacity(0.17), radius: 5.0, x: -5.0, y: 5.0)
                    )
                    .padding()
                
                
            }
            .padding()
            .frame( maxWidth: .infinity, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 8.0).foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.22), radius: 10, x: 0.0, y: 10.0)
                            .shadow(color: Color.white.opacity(0.17), radius: 5.0, x: -5.0, y: 5.0)
            )
            .padding()
            
        }.frame(width: 600, height: 900, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
    
}



public struct ObjectsView: View {
    
    let image: String
    let hit: Int
    let subtitile: String
    
    public var body: some View {
        HStack(alignment: .center){
            Image(uiImage: UIImage(named: image)!)
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
                .padding(8)
            Text(String(hit))
                .font(.system(size: 24.0, weight: .bold, design: .monospaced))
                .padding(.trailing,0)
            Text(subtitile)
                .font(.system(size: 20.0, weight: .regular, design: .rounded))
        }
    }
}
