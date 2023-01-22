import SwiftUI

struct AllSettingsView: View {
    var body: some View {
        VStack {
            CategoryHeader(title: "All Settings")
            LazyVGrid(columns: [GridItem(.fixed(170)), GridItem(.fixed(170))]) {
                // Car Controls
                NavigationLink(destination: CarControlsView()) {
                    SettingBlock(icon: "car.fill", title: "Controls", subtitle: "Car locked")
                }
                
                // Climate Controls
                SettingBlock(icon: "fanblades.fill", title: "Climate", subtitle: "INTERIOR 68° F", backgroundColor: Color.theme.blue)
                
                // Location Controls
                NavigationLink(destination: LocationView()) {
                    SettingBlock(icon: "location.fill", title: "Location", subtitle: "EMPIRE STATE BUILDING")
                }
                
                // Security Controls
                SettingBlock(icon: "checkerboard.shield", title: "Security", subtitle: "0 EVENTS DETECTED")
                
                // Upgrades
                SettingBlock(icon: "sparkles", title: "Upgrades", subtitle: "3 UPGRADES AVAILABLE")
            }
        }
    }
}

struct SettingBlock: View {
    let icon: String
    let title: String
    var subtitle: String = ""
    
    var backgroundColor: Color = Color.white.opacity(0.05)
    
    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            Image(systemName: icon)
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .fontWeight(.semibold)
                    .font(.system(size: 16, weight: .medium, design: .default))
                
                Text(subtitle.uppercased())
                    .font(.system(size: 8, weight: .medium, design: .default))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(1)
            }
            .padding(.leading, 5)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 16)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white.opacity(0.1), lineWidth: 0.5))
    }
}

struct ReorderButton: View {
    var body: some View {
        Button(action: { }) {
            Text("Reorder Groups")
                .font(.caption)
                .padding(.vertical, 8)
                .padding(.horizontal, 14)
                .background(Color.white.opacity(0.05))
                .clipShape(Capsule())
        }

    }
}

struct AllSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AllSettingsView()
            .padding()
            .background(Color.theme.background)
            .foregroundColor(.white)
        
    }
}
