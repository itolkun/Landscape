//
//  Sunset.swift
//  Landscape
//
//  Created by Айтолкун Анарбекова on 27/12/22.
//

import SwiftUI

struct Sunset: View {
    @State private var animate = false
    
        var body: some View {
            GeometryReader { geometry in
                
                let width = geometry.size.width
                let height = geometry.size.height
                let size = min(width, height)
                let middle = size / 2
                let halfMiddle = middle / 2
                let nearLine = size * 0.1
                
                
                Path(CGRect(x: 0, y: 0, width: size, height: middle))
                    .fill(
                        RadialGradient(
                            colors: [Color(red: 1, green: 97/255, blue: 95/255), Color(red: 1, green: 137/255, blue: 45/255)],
                            center: .center,
                            startRadius: size * 0.05,
                            endRadius: size * 0.6
                        ))
                
                
                Path(CGRect(x: 0, y: middle, width: size, height: halfMiddle ))
                    .fill(RadialGradient(
                        colors: [.white, Color(red: 64/255, green: 144/255, blue: 248/255)],
                        center: .center,
                        startRadius: size * 0.03,
                        endRadius: size * 0.5
                    ))
                Path(CGRect(x: 0, y: middle + halfMiddle, width: size, height: halfMiddle ))
                    .fill(
                        RadialGradient(
                            colors: [.white, Color(red: 180/255, green: 208/255, blue: 108/255)],
                            center: .top,
                            startRadius: size * 0.05,
                            endRadius: size * 0.6
                        ))
                
                
                
    //            Path { path in
    //                path.move(to: CGPoint(x: nearLine, y: middle))
    //                path.addLine(to: CGPoint(x: halfMiddle, y: halfMiddle))
    //                path.addLine(to: CGPoint(x: middle, y: middle))
    //                path.addLine(to: CGPoint(x: middle + halfMiddle, y: halfMiddle))
    //                path.addLine(to: CGPoint(x: size, y: middle))
    //                path.addLine(to: CGPoint(x: middle + halfMiddle, y: middle))
    //                path.addLine(to: CGPoint(x: size, y: middle))
    //
    //
    //            }
                
                
                
                
                
                
    //            Path {
    //                p in
    //                p.addEllipse(in:  CGRect(x: nearLine, y: middle, width: nearLine * 8, height: nearLine * 2.5))
    //            }.fill(
    //                RadialGradient(
    //                    colors: [.white, Color(red: 96/255, green: 194/255, blue: 237/255)],
    //                    center: .center,
    //                    startRadius: size * 0.05,
    //                    endRadius: size * 0.3
    //                ))
                
                
                Path { path in
                    path.addEllipse(in: CGRect(x: middle * 0.87, y: nearLine, width: nearLine * 1.3, height: nearLine * 1.3))
                }
                
                .fill(
                    RadialGradient(
                        colors: [.white, .yellow],
                        center: .center,
                        startRadius: size * 0.05,
                        endRadius: size * 0.6
                    )
                )
                .offset(y: animate ? nearLine * 2.7  : 0)
                .animation(.interpolatingSpring(
                    mass: 1,
                    stiffness: 20,
                    damping: 10,
                    initialVelocity: 0
                ).speed(0.08), value: animate)
                
            
                .onTapGesture {
                    animate.toggle()
                }
                
                
                
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: middle))
                    path.addLine(to: CGPoint(x: halfMiddle, y: halfMiddle))
                    path.addLine(to: CGPoint(x: middle, y: middle))
                    path.addLine(to: CGPoint(x: middle + halfMiddle, y: halfMiddle))
                    path.addLine(to: CGPoint(x: size, y: middle))
                    path.addLine(to: CGPoint(x: middle + halfMiddle, y: middle))
                    path.addLine(to: CGPoint(x: size, y: middle))
             
                }.fill(
                    RadialGradient(
                        colors: [.white, .brown],
                        center: .top,
                        startRadius: size * 0.05,
                        endRadius: size * 0.6
                    ))
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: halfMiddle + nearLine * 0.3))
                    path.addLine(to: CGPoint(x: nearLine, y: middle - nearLine))
                    path.addLine(to: CGPoint(x: 0, y: middle))
                }.fill(
                    RadialGradient(
                        colors: [.white, .brown],
                        center: .top,
                        startRadius: size * 0.05,
                        endRadius: size * 0.6
                    ))
                
                Path { path in
                    path.move(to: CGPoint(x: size, y: halfMiddle + nearLine * 0.3))
                    path.addLine(to: CGPoint(x: size - nearLine, y: middle - nearLine))
                    path.addLine(to: CGPoint(x: size, y: middle))
                }.fill(
                    RadialGradient(
                        colors: [.white, .brown],
                        center: .top,
                        startRadius: size * 0.05,
                        endRadius: size * 0.6
                    ))
            }
            }
            
        }

struct Sunset_Previews: PreviewProvider {
    static var previews: some View {
        Sunset()
    }
}
