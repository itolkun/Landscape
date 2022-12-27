//
//  ContentView.swift
//  Landscape
//
//  Created by Айтолкун Анарбекова on 27/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Sunset()
                .frame(width: 400, height: 400)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
