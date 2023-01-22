import SwiftUI

struct CategoryView: View {
    let title: String
    var showEdit: Bool = false
    
    let actionItems: [ActionItem]
    
    @Binding var openAction: Bool
    @Binding var actionText: String
    @Binding var actionIcon: String
    @Binding var openCharging: Bool
    @Binding var openMedia: Bool
    
    var body: some View {
        VStack {
            CategoryHeader(title: title, showEdit: showEdit)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    if title == "Quick Shortcuts" {
                        Button(action: {withAnimation{openCharging = true}}) {
                            ActionButton(item: chargingShorcut)
                        }
                        
                        Button(action: {withAnimation{openMedia = true}}) {
                            ActionButton(item: mediaShortcut)
                        }
                    }
                    ForEach(actionItems) { item in
                        Button(action: {
                            withAnimation {
                                openAction = true
                                actionText = item.label
                                actionIcon = item.icon
                            }
                        }) {
                            ActionButton(item: item)
                        }
                    }
                }
            }
        }
    }
}

struct CategoryHeader: View {
    let title: String
    var showEdit: Bool = false
    
    var body: some View {
        HStack(alignment: .center) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
            Spacer()
            if showEdit {
                Button("Edit") { }
                    .foregroundColor(Color.gray)
                    .fontWeight(.medium)
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(title: "Quick Shortcuts", actionItems: quickShortcuts, openAction: .constant(true), actionText: .constant(""), actionIcon: .constant(""), openCharging: .constant(true), openMedia: .constant(true))
    }
}
