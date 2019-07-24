//
//  ContentView.swift
//  CanvasTest
//
//  Created by Charlie Woloszynski on 7/23/19.
//  Copyright © 2019 Handheld Media, LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DrawingView()
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
