import SwiftUI

struct BlurView: UIViewRepresentable {
    let style: UIBlurEffect
    
    func MakeUIView(context:
                        UIViewRepresentable<BlurView>) -> UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = .clear
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.transl
    }
}

struct BlurView_Previews: PreviewProvider {
    static var previews: some View {
        BlurView()
    }
}

