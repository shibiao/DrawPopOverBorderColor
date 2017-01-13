//
//  ViewController.swift
//  DrawPopOverBorderColor
//
//  Created by Mac on 2017/1/12.
//  Copyright © 2017年 shibiao. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var button: NSButton!
    var popover = NSPopover()
    var vc: NSViewController! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popover.behavior = .semitransient
        popover.contentSize = NSMakeSize(500, 500)
        vc = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "vc") as! NSViewController
       
        popover.contentViewController = vc
        
        
        
    }

    @IBAction func push(_ sender: NSButton) {
        popover.show(relativeTo: button.bounds, of: button, preferredEdge: .minY)
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

