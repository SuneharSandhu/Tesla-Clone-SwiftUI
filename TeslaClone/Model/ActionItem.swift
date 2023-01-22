import Foundation

struct ActionItem: Identifiable {
    let id = UUID()
    let icon: String
    let label: String
}

let quickShortcuts: [ActionItem] = [
    ActionItem(icon: "fanblades.fill", label: "Fan On"),
    ActionItem(icon: "bolt.car", label: "Close Charge Port")
]

let recentActions: [ActionItem] = [
    ActionItem(icon: "arrow.up.square", label: "Open Trunk"),
    ActionItem(icon: "fanblades", label: "Fan Off"),
    ActionItem(icon: "person.fill.viewfinder", label: "Summon"),
]

let chargingShorcut = ActionItem(icon: "bolt.fill", label: "Charging")
let mediaShortcut = ActionItem(icon: "playpause.fill", label: "Media Controls")
