//
//  SCNViewController.swift
//
//  Created by Jacob Martin on 6/4/19.
//  Copyright © 2019 Jacob Martin. All rights reserved.
//
#if canImport(UIKit)
import UIKit
import SceneKit
import class AVFoundation.AVAudioEngine

open class SCNViewController : UIViewController {
    internal let _initViewFrame:CGRect
    internal let _initViewOptions:[String:Any]?
    
    /// Unfortunately, SCNView's API hasn't yet been fully updated for Swift, so if you use `viewOptions`s they need to be specified similar to the following:
    ///        viewOptions: [
    ///            SCNView.Option.preferredRenderingAPI.rawValue: NSNumber(value: SCNRenderingAPI.metal.rawValue),
    ///            SCNView.Option.preferredDevice.rawValue: MTLCreateSystemDefaultDevice()!,
    ///            SCNView.Option.preferLowPowerDevice.rawValue: NSNumber(value: true)
    ///        ]
    public required init(nibName:String?, bundle nibBundle:Bundle?=nil, viewFrame:CGRect?, viewOptions:[String:Any]?=[:])
    {
        if nibName == nil {
            _initViewFrame = viewFrame ?? CGRect.null
            _initViewOptions = viewOptions
        } else {
            _initViewFrame = CGRect.null
            _initViewOptions = nil
        }
        
        super.init(nibName: nibName, bundle: nibBundle)
    }
    
    public required init?(coder aDecoder:NSCoder) {
        _initViewFrame = CGRect.null
        _initViewOptions = nil
        
        super.init(coder: aDecoder)
    }
    
    public override var shouldAutorotate:Bool { return true }
    
    public override var prefersStatusBarHidden:Bool { return true }
    
    public override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        switch UIDevice.current.userInterfaceIdiom {
        case .phone:
            return .allButUpsideDown
        default:
            return .all
        }
    }
    
    /// Release any cached data, images, etc that aren't in use.
    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        //TODO: Add memory handler
    }
}
#endif
