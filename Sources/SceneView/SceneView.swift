import SwiftUI
import SceneKit

#if canImport(UIKit)

public class SceneViewController: SCNViewController {
    
    private var _scene: SCNScene?
    override public var scene: SCNScene? { _scene }
    
    init(scene: SCNScene) {
        super.init(nibName: nil, bundle: nil, viewFrame: nil, viewOptions: nil)
        _scene = scene
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public required init(nibName: String?, bundle nibBundle: Bundle? = nil, viewFrame: CGRect?, viewOptions: [String : Any]? = [:]) {
        fatalError("init(nibName:bundle:viewFrame:viewOptions:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        scnView.scene = scene
    }
    
    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}

public struct SceneView: UIViewControllerRepresentable {
    
    let scene: SCNScene
    
    public func makeUIViewController(context: UIViewControllerRepresentableContext<SceneView>) -> SceneViewController {
        return SceneViewController(scene: scene)
    }
    
    public func updateUIViewController(_ uiViewController: SceneViewController, context: UIViewControllerRepresentableContext<SceneView>) {
        
    }
}

#endif
