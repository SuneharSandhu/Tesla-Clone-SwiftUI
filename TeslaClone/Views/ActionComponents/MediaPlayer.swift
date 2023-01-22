import SwiftUI

struct MediaPlayer: View {
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 20) {
                HStack(alignment: .center, spacing: 10) {
                    Color.blue
                        .frame(width: 64, height: 64)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Don't take the Money")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text("Bleachers - Gone Now")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .opacity(0.5)
                    }
                    Spacer()
                }
                
                VStack(spacing: 5) {
                    HStack {
                        Text("1:05")
                        Spacer()
                        Text("-2:30")
                    }
                    .font(.system(size: 14, weight: .medium, design: .monospaced))
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
                
                HStack {
                    HStack(alignment: .center, spacing: 20) {
                        Button(action: {}) {
                            Image(systemName: "backward.fill")
                                .opacity(0.5)
                        }
                        Button(action: {}) {
                            Image(systemName: "playpause.fill")
                        }
                        Button(action: {}) {
                            Image(systemName: "forward.fill")
                                .opacity(0.5)
                        }
                    }
                    .font(.system(size: 20, weight: .semibold, design: .default))
                    
                    Spacer()
                    
                    HStack(alignment: .center, spacing: 20) {
                        Button(action: {}) {
                            Image(systemName: "minus")
                                .opacity(0.5)
                        }
                        
                        RadialGradient(gradient: Gradient(colors: [.white, .white.opacity(0.1)]), center: .leading, startRadius: 31, endRadius: 32)
                            .frame(width: 44, height: 44)
                            .mask {
                                Image(systemName: "speaker.wave.3.fill")
                            }
                        
                        Button(action: {}) {
                            Image(systemName: "plus")
                                .opacity(0.5)
                        }
                    }
                    .font(.system(size: 20, weight: .semibold, design: .default))
                }
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

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct MediaPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MediaPlayer()
    }
}
