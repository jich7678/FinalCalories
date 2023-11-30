import SwiftUI

struct Calculator: View {
    @State private var lists: [CreatedList]

    init(lists: [CreatedList]) {
        print("hello")
        self.lists = lists
        print(self.lists)
    }
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)

            VStack {
                List {
                    ForEach(lists) { list in
                        list.listView
                    }
                }
                Text("This is a permanent frame")
                    .font(.title)
                    .padding()
                NavigationLink(destination: ListDetailView()) {
                    Text("Show List")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

