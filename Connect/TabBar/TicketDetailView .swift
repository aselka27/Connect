//
//  TicketDetailView .swift
//  Connect
//
//  Created by саргашкаева on 6.05.2023.
//

import SwiftUI

import SwiftUI

struct CardStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
    }
}


struct TicketDetailView: View {
    var body: some View {
        VStack(spacing: 0) {
            topView
                .background(.white)
                .clipShape(TicketShape())
                .modifier(CardStyleModifier())
            DashedSeperator()
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 1,dash: [4,8], dashPhase: 4))
                .frame(height: 0.4)
                .padding(.horizontal)
            bottomView
                .clipShape(TicketShape().rotation(Angle(degrees: 180)))
                .modifier(CardStyleModifier())
        }
        .padding()
       
        
    }
}


extension TicketDetailView {
    private var topView: some View {
        VStack {
            Text("Taylor Swift: Eras Tour")
                .font(.headline.bold())
                .padding(.top, 40)
            Image(uiImage: R.image.coldPlay()!)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
            venueInfo
        }
    }
}


extension TicketDetailView {
    private var venueInfo: some View {
        HStack(spacing: 10) {
            VStack(spacing: 4) {
                Text("Date")
                    .fontWeight(.bold)
                Text("06/07/23")
            }
            VStack(spacing: 4) {
                Text("Venue")
                    .fontWeight(.bold)
                Text("Soldier's Field")
            }
            VStack(spacing: 4) {
                Text("Time")
                    .fontWeight(.bold)
                Text("7pm")
            }
        }
        .padding(.vertical)
        .padding(.horizontal)
        
    }
    
    private var bottomView: some View {
            BarcodeView()
    }
}

struct TicketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailView()
    }
}


struct TicketShape: Shape {
    func path(in rect: CGRect) -> Path {
        let arcRadius: CGFloat = 20
        let smallArcRadius:CGFloat = 10
        
        var path = Path()
        path.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y + arcRadius))
        path.addArc(center: CGPoint.zero, radius: arcRadius, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 0) , clockwise: true)
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.origin.y) , radius: arcRadius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 0) , clockwise: true)
        
        path.addLine(to:  CGPoint(x: rect.size.width - arcRadius, y: rect.origin.y))
        path.addArc(center: CGPoint(x: rect.size.width , y: rect.origin.y), radius: arcRadius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 90) , clockwise: true)

        path.addLine(to:  CGPoint(x: rect.size.width, y: rect.size.height - smallArcRadius))
        path.addArc(center: CGPoint(x: rect.size.width , y: rect.size.height), radius: smallArcRadius, startAngle: Angle(degrees: 270), endAngle: Angle(degrees: 180) , clockwise: true)

        path.addLine(to:  CGPoint(x: rect.origin.x + smallArcRadius, y: rect.size.height))
        path.addArc(center: CGPoint(x: rect.origin.x , y: rect.size.height), radius: smallArcRadius, startAngle: Angle(degrees: 360), endAngle: Angle(degrees: 270) , clockwise: true)
             
        path.closeSubpath()
        return path
    }
}

struct InwardArc: Shape {
    var startAngle: Angle
    var endAngle: Angle

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2 * -1 // negative radius for inward arc

        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)

        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()

        return path
    }
}

struct DashedSeperator: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.origin.y ))
        path.closeSubpath()
        return path
    }
}
