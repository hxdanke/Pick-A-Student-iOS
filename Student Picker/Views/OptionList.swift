import SwiftUI

struct OptionList: View {
    
    var klass: Klass
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink("List all students", destination: ListStudentView(klass: klass))
                NavigationLink("Pick a student", destination: PickStudentView(klass: klass))
            }.navigationTitle("Options")
        }
    }
}

struct OptionList_Previews: PreviewProvider {
    static var previews: some View {
        OptionList(klass: klasses[0])
    }
}
