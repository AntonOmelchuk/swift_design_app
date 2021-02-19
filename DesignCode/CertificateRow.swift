import SwiftUI

struct CertificateRow: View {
    var certificates = certificateData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Certificates")
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .padding(.leading, 40)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(certificates) { certificate in
                        CertificateView(item: certificate)
                    }
                }
                .padding(20)
                .padding(.leading, 20)
            }
        }
    }
}

struct CertificateRow_Previews: PreviewProvider {
    static var previews: some View {
        CertificateRow()
    }
}

struct Certificate: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var width: Int
    var height: Int
}

let certificateData = [
    Certificate(title: "UI Design", image: "Certificate1", width: 240, height: 150),
    Certificate(title: "SwiftUI", image: "Certificate2", width: 240, height: 150),
    Certificate(title: "Skretch", image: "Certificate3", width: 240, height: 150),
    Certificate(title: "Framer", image: "Certificate4", width: 240, height: 150),
]
