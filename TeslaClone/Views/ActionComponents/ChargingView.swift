import SwiftUI

struct ChargingView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 5) {
                    Label("237 miles", systemImage: "bolt.fill")
                        .font(.system(size: 24, weight: .semibold, design: .rounded))
                        .foregroundColor(Color.theme.green)
                    Text("3h 55m remian - 32/3A - 30 mi/hour")
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
                VStack(alignment: .leading, spacing: 5) {
                    Text("Charge Limit: 315 miles")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .opacity(0.5)
                    ZStack(alignment: .leading) {
                        Color.white.opacity(0.25)
                            .frame(height: 6)
                            .clipShape(Capsule())
                        Color.theme.green
                            .frame(height: 6)
                            .frame(maxWidth: 200)
                            .clipShape(Capsule())
                        Color.white
                            .frame(width: 16, height: 16)
                            .clipShape(Circle())
                            .offset(x: 190)
                    }
                }
                
                CustomDivider()
                
                Button(action: {}) {
                    Text("Stop charging")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .padding(.horizontal, 14)
                        .padding(.vertical, 8)
                        .background(Color.theme.red)
                        .clipShape(Capsule())
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .padding(.bottom, 20)
            .frame(maxWidth: .infinity)
            .background(Color.theme.background)
            .foregroundColor(.white)
            .cornerRadius(16, corners: [.topLeft, .topRight])
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ChargingView_Previews: PreviewProvider {
    static var previews: some View {
        ChargingView()
    }
}
