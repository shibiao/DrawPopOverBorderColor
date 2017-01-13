//
//  SBView.swift
//  DrawPopOverBorderColor
//
//  Created by Mac on 2017/1/12.
//  Copyright © 2017年 shibiao. All rights reserved.
//

import Cocoa

class SBView: NSView {
    var backgroundView: PopoverBackgroundView?
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
//        self.wantsLayer = true
//        self.layer?.backgroundColor = NSColor.red.cgColor
        
        
        // Drawing code here.
    }
    override func viewDidMoveToWindow() {
        if let frameView = self.window?.contentView?.superview {
            if backgroundView == nil {
                backgroundView = PopoverBackgroundView(frame: frameView.bounds)
                backgroundView!.autoresizingMask = [.viewWidthSizable,.viewHeightSizable]
                frameView.addSubview(backgroundView!, positioned: .below, relativeTo: frameView)
            }
        }
    }
}
class PopoverBackgroundView: NSView {
    override func draw(_ dirtyRect: NSRect) {
        NSColor.red.set()
        NSRectFill(self.bounds)
    }
}
