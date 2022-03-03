import SwiftUI

struct ClassList: View {

    
    var body: some View {
        NavigationView {
            List(klasses) { klass in
                NavigationLink {
                    OptionList(klass: klass)
                } label: {
                    ClassRow(klass: klass)
                }
            }.navigationTitle("List of Classes")
        }
    }
}

struct ClassList_Previews: PreviewProvider {
    static var previews: some View {
        ClassList()
    }
}
