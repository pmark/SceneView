# SceneView

A SwiftUI widget that allows the presentation of a SCNScene.

![Demo](https://user-images.githubusercontent.com/5327798/59971984-2dd16580-9554-11e9-9c3b-f88a42e875b0.gif)

#### Usage
```swift
import SwiftUI
import SceneKit
import SceneView

let scene: SCNScene = { SCNScene(named: "DemoScene.scn")! }()

#if canImport(UIKit)
let safeAreaExists = true
#else
let safeAreaExists = false
#endif

struct ContentView : View {
    var body: some View {
        VStack {
            if safeAreaExists {
                SceneView(scene: scene).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            } else {
                SceneView(scene: scene)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
```
