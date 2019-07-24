//
//  CanvasView.swift
//  Penstroke
//
//  Created by Charlie Woloszynski on 6/28/19.
//  Copyright © 2019 Handheld Media, LLC. All rights reserved.
//

import SwiftUI
import PencilKit

import os.log

fileprivate var log = OSLog(subsystem: "us.handheldmedia.Penstroke", category: "DrawingView")


struct DrawingView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> CanvasView {
        log.debug("Creating new DrawingView")
        let view = CanvasView(frame: .zero)
        return view
    }
    
    func updateUIView(_ view: CanvasView, context: Context) {
        log.debug("updatingView for CanvasView (no action right now)")
    }
}

struct PenstrokeCanvasView_Preview: PreviewProvider {
    static var previews: some View {
        DrawingView()
    }
}
