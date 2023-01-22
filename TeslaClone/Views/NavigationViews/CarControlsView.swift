import SwiftUI

struct CarControlsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var toggleValet = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        BackNavBarButton()
                        Spacer()
                        
                    }
                    Text("Car Controls")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                CustomDivider()
                CarLockButton()
                CustomDivider()
                CarControlActions()
                CustomDivider()
                HStack {
                    Text("Valet Mode")
                        .fontWeight(.medium)
                    Spacer()
                    Toggle("", isOn: $toggleValet)
                }
                if toggleValet {
                    Text("Valet Mode is on!")
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.theme.background)
        .foregroundColor(.white)
        .navigationTitle("Mach Five")
        .navigationBarHidden(true)
    }
}

struct CarLockButton: View {
    var body: some View {
        Button(action: { }) {
            FullButton(text: "Unlock Car", icon: "lock.fill")
        }
    }
}

struct CarControlActions: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Spacer()
                ActionButton(item: carControls[0])
                Spacer()
                ActionButton(item: carControls[1])
                Spacer()
                ActionButton(item: carControls[2])
                Spacer()
            }
            HStack {
                Spacer()
                ActionButton(item: carControls[3])
                Spacer()
                ActionButton(item: carControls[4])
                Spacer()
            }
        }
        .padding()
    }
}

struct CarControlsView_Previews: PreviewProvider {
    static var previews: some View {
        CarControlsView()
    }
}

let carControls: [ActionItem] = [
    ActionItem(icon: "flashlight.on.fill", label: "Flash"),
    ActionItem(icon: "speaker.wave.3.fill", label: "Honk"),
    ActionItem(icon: "key.fill", label: "Start"),
    ActionItem(icon: "arrow.up.bin", label: "Front Trunk"),
    ActionItem(icon: "arrow.up.square", label: "Trunk")
]
