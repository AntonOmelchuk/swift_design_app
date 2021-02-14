import SwiftUI

struct HomeList: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0 ..< 3) { item in
                    CourseView()
                }
            }
        }
            
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeList()
    }
}

struct CourseView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Build an app with SwiftUI")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
                .padding(20)
                .lineLimit(4)
                .frame(width: 160)
            Spacer()
            Image("Illustration1")
        }
        .background(Color("background3"))
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: Color("backgroundShadow3"), radius: 25, x: 0, y: 20)
    }
}
