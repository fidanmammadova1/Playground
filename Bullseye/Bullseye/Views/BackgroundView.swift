import SwiftUI

struct BackgroundView: View {
  @Binding var game: Game
  
  var body: some View {
    VStack {
      TopView(game: $game)
      Spacer()
      BottomView(game: $game)
    }
    .padding()
    .background(
      RingsView()
    )
  }
}

struct TopView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack {
      Button {
        game.restart()
      } label: {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      }
      Spacer()
      RoundedImageViewFilled(systemName: "list.dash")
    }
  }
}

struct NumberView: View {
  var title: String
  var text: String
  
  var body: some View {
    VStack(spacing: 5) {
      LabelText(text: title)
      RoundedRecTextView(text: text)
      
    }
  }
}

struct BottomView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack {
      NumberView(title: "Score", text: String(game.score))
      Spacer()
      NumberView(title: "Round", text: String(game.round))
    }
  }
}

struct RingsView: View {
  @Environment(\.colorScheme) var colorScheme
  var body: some View {
    ZStack {
      Color("BackgroundColor")
        .ignoresSafeArea()
      ForEach(1..<6) { ring in
        let size = CGFloat(ring * 100)
        let opacity = colorScheme == ColorScheme.dark ? 0.1 : 0.3
        Circle()
          .stroke(lineWidth: 20)
          .fill(
            RadialGradient(gradient: Gradient(colors: [Color("RingsColor").opacity(opacity * 0.8), Color("RingsColor").opacity(0)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 100, endRadius: 300)
          )
          
          .frame(width: size, height: size)
//           .stroke(Color("RingColor") , lineWidth: 20)

      }
    }
  }
}
  
  #Preview {
    BackgroundView(game: .constant(Game()))
  }
