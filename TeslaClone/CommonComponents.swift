import SwiftUI

struct BackNavBarButton: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            GeneralButton(icon: "chevron.left")
        }
    }
}

struct GeneralButton: View {
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .imageScale(icon == "playpause.fill" ? .medium : .large)
            .frame(width: 44, height: 44)
            .background(Color.white.opacity(0.05))
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white.opacity(0.1), lineWidth: 0.5)
            )
    }
}

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 0.25)
            .background(Color.white)
            .opacity(0.1)
        
    }
}

struct ActionButton: View {
    let item: ActionItem
    
    var body: some View {
        VStack(alignment: .center) {
            GeneralButton(icon: item.icon)
            Text(item.label)
                .frame(width: 72)
                .font(.system(size: 12, weight: .semibold, design: .default))
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
        }
    }
}

struct FullButton: View {
    var text: String = ""
    var icon: String = ""
    
    var body: some View {
        if icon.isEmpty {
            textButton
        } else {
            iconButton
        }
    }
    
    var iconButton: some View {
        Label(text, systemImage: icon)
            .font(.system(size: 14, weight: .medium, design: .default))
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white.opacity(0.05))
            .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
            .imageScale(.large)
    }
    
    var textButton: some View {
        Text(text)
            .font(.system(size: 14, weight: .medium, design: .default))
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white.opacity(0.05))
            .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
    }
}

