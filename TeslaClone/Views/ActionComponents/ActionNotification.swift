import SwiftUI

struct ActionNotification: View {
    @Binding var open: Bool
    let icon: String
    let text: String

    var body: some View {
        VStack {
            Spacer()
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: icon)
                Text(text)
                    .fontWeight(.medium)
                Spacer()
                Button(action: {
                    withAnimation {
                        open = false
                    }
                }) {
                    Text("Cancel")
                        .font(.subheadline)
                        .opacity(0.5)
                }
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.theme.background)
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .padding()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ActionNotification_Previews: PreviewProvider {
    static var previews: some View {
        ActionNotification(open: .constant(true), icon: "fanblades.fill", text: "Turning on the fan...")
    }
}
