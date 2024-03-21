import SwiftUI

struct PointsView: View {
  @Binding var alertIsVisible: Bool
  @Binding var sliderValue: Double
  @Binding var game: Game
  
  var body: some View {
    let roundedValue = Int(sliderValue.rounded())
    let points = game.points(sliderValue: roundedValue)
    VStack(spacing: 10) {
      InstructionText(text: "The slider's value is")
      BigNumberText(text: String(roundedValue))
      BodyText(text: "You scored \(points) Points\n 🤩🤩🤩 ")
      Button {
        withAnimation {
          alertIsVisible = false          
        }
        game.startNewRound(points: points)
      } label: {
        ButtonText(text: "Start a new round")
      }
    }
    .padding()
    .frame(maxWidth: 300)
    .background(Color("BackgroundColor"))
    .cornerRadius(Constants.General.roundRecCornerRadius)
    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
    
  }
}

struct PointsView_Previews: PreviewProvider {
  static private var alertisVisible = Binding.constant(false)
  static private var slidervalue = Binding.constant(50.0)
  static private var game = Binding.constant(Game())
  
  static var previews: some View {
    PointsView(alertIsVisible: alertisVisible, sliderValue: slidervalue, game: game)
    PointsView(alertIsVisible: alertisVisible, sliderValue: slidervalue, game: game)
      .preferredColorScheme(.dark)
      .previewInterfaceOrientation(.landscapeRight)
  }
}
