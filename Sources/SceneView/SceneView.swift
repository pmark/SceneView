import SwiftUI
import SceneKit

#if canImport(UIKit)

class SceneViewController: SCNViewController {
    
    private var _scene: SCNScene?
    override var scene: SCNScene? { _scene }
    
    init(scene: SCNScene) {
        super.init()
        _scene = scene
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scnView.scene = scene
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}

public struct SceneView: UIViewControllerRepresentable {
    
    let scene: SCNScene
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ModelViewController>) -> SceneViewController {
        SceneViewController(scene: scene)
    }
    
    func updateUIViewController(_ uiViewController: SceneViewController, context: UIViewControllerRepresentableContext<ModelViewController>) {
        
    }
}

#endif
