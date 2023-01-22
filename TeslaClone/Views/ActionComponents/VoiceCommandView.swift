import SwiftUI

struct VoiceCommandView: View {
    @Binding var open: Bool
    let text: String
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Image("Wave")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack(alignment: .bottom, spacing: 20) {
                HStack {
                    Image(systemName: "mic.fill")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                    Text(text)
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 15)
                Spacer()
                Button(action: {
                    withAnimation {
                        open = false
                    }
                }) {
                    Image(systemName: "xmark")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                        .frame(width: 64, height: 64)
                        .background(Color.theme.background)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
            }
            .padding()
            .background(Color.theme.green)
            .foregroundColor(Color.theme.background)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct VoiceCommandView_Previews: PreviewProvider {
    static var previews: some View {
        VoiceCommandView(open: .constant(true), text: "Go to times Square")
    }
}
