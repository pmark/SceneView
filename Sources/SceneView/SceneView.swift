import SwiftUI
import SceneKit

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
}

#if canImport(UIKit)
public struct SceneView: UIViewControllerRepresentable {
    
    let scene: SCNScene
    
    public init(scene: SCNScene) {
        self.scene = scene
    }
    
    public func makeUIViewController(context: UIViewControllerRepresentableContext<SceneView>) -> SceneViewController {
        return SceneViewController(scene: scene)
    }
    
    public func updateUIViewController(_ uiViewController: SceneViewController, context: UIViewControllerRepresentableContext<SceneView>) {
        
    }
}
#endif

#if canImport(AppKit)
public struct SceneView: NSViewControllerRepresentable {
    
    let scene: SCNScene
    
    public init(scene: SCNScene) {
        self.scene = scene
    }
    
    public func makeNSViewController(context: NSViewControllerRepresentableContext<SceneView>) -> SceneViewController {
        return SceneViewController(scene: scene)
    }
    
    public func updateNSViewController(_ nsViewController: SceneViewController, context: NSViewControllerRepresentableContext<SceneView>) {
        
    }
}
#endif
