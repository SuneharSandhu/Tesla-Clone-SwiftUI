import SwiftUI

struct CarSectionView: View {
    @Binding var openCharging: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(alignment: .center) {
                Button(action: {
                    withAnimation {
                        openCharging = true
                    }
                }) {
                    Label("237 Miles".uppercased(), systemImage: "battery.75")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .foregroundColor(Color.theme.green)
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Parked")
                        .fontWeight(.semibold)
                    Text("Last updated: 5 min ago")
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
            }
            
            Image("Car")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct CarSectionView_Previews: PreviewProvider {
    static var previews: some View {
        CarSectionView(openCharging: .constant(true))
    }
}
