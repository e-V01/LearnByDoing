//
//  CardView.swift
//  LearnByDoing
//
//  Created by Y K on 27.02.2024.
//

import SwiftUI

struct CardView: View {
    var card: Card
    @State private var fadeIn: Bool = false // mutable, when app launched
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    
//    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
                
            }
            .offset(y: moveDownward ? -225 : -300)
            
            Button {
                playSound(sound: "sound-chime", type: "mp3")
            } label: {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.white)
                        .tint(Color.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .tint(Color.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(RoundedRectangle(cornerRadius: 100))
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: moveUpward ? 215 : 303)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors),
                                   startPoint: .top,
                                   endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(radius: 8)
        .onAppear {
            withAnimation(.linear(duration: 2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 1)) {
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
        }
    }
}

#Preview {
    CardView(card: cardData[0])
        .previewLayout(.sizeThatFits)
}
