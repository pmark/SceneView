import SwiftUI
import SceneKit

#if canImport(UIKit)

class SceneViewController: SCNViewController {
    
    private var _scene: SCNScene?
    override var scene: SCNScene? { _scene }
    
    init(scene: SCNScene) {
        super.init(nibName: nil)
        _scene = scene
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public required init(nibName: String?, bundle nibBundle: Bundle? = nil, viewFrame: CGRect?, viewOptions: [String : Any]? = [:]) {
        fatalError("init(nibName:bundle:viewFrame:viewOptions:) has not been implemented")
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
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SceneViewController>) -> SceneViewController {
        SceneViewController(scene: scene)
    }
    
    func updateUIViewController(_ uiViewController: SceneViewController, context: UIViewControllerRepresentableContext<SceneViewController>) {
        
    }
}

#endif
