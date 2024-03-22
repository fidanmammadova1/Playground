import SwiftUI

struct RoundedImageViewStroked: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedViewLengt, height: Constants.General.roundedViewLengt)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
      )
  }
}

struct RoundedImageViewFilled: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: Constants.General.roundedViewLengt, height: Constants.General.roundedViewLengt)
      .background(
        Circle()
          .fill(Color("ButtonFilledBackgroundColor"))
      )
  }
}

struct RoundRecTextView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .kerning(-0.2)
      .bold()
      .font(.title3)
      .frame(width: Constants.General.roundRecViewWidth, height: Constants.General.roundRecViewHeight)
      .foregroundColor(Color("TextColor"))
      .overlay(
        RoundedRectangle(cornerRadius: Constants.General.roundRecCornerRadius)
          .stroke(lineWidth: Constants.General.strokeWidth)
          .foregroundColor(Color("ButtonStrokeColor"))
      )
  }
}

struct RoundedTextView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .font(.title3)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedViewLengt, height: Constants.General.roundedViewLengt)
      .overlay(
        Circle()
          .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
      )
  }
}

struct PreviewView: View {
  var body: some View {
    VStack(spacing: 10) {
      RoundedImageViewFilled(systemName: "arrow.counterclockwise")
      RoundedImageViewStroked(systemName: "list.dash")
      RoundRecTextView(text: "100")
      RoundedTextView(text: "1")
    }
  }
}

struct RoundedViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
  }
}
