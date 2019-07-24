//
//  CanvasView.swift
//  Penstroke
//
//  Created by Charlie Woloszynski on 7/22/19.
//  Copyright © 2019 Handheld Media, LLC. All rights reserved.
//

import PencilKit
import os.log

fileprivate var log = OSLog(subsystem: "us.handheldmedia.Penstroke", category: "CanvasView")

class CanvasView: PKCanvasView {
    
    
    override init(frame: CGRect) {
        log.debug("Initializaing a CanvasView")
        super.init(frame: frame)
        self.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        self.delegate = nil
    }
}

extension CanvasView: PKCanvasViewDelegate {
    
    func canvasViewDidBeginUsingTool(_ canvasView: PKCanvasView) {
        log.debug("canvasView did begin using tool")
    }
    
    func canvasViewDidEndUsingTool(_ canvasView: PKCanvasView) {
        log.debug("canvasView did end using tool")
    }
    
    func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
        log.debug("canvasView drawing did change")
    }
    
    func canvasViewDidFinishRendering(_ canvasView: PKCanvasView) {
        log.debug("canvasView did finish rendering")
    }
}
