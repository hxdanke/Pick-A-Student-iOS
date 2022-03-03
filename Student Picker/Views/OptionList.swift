import SwiftUI

struct OptionList: View {
    
    var klass: Klass
    
    var body: some View {
        List{
            NavigationLink("List all students", destination: ListStudentView(klass: klass))
                .padding(.vertical)
            NavigationLink("Pick a student", destination: PickStudentView(klass: klass))
                .padding(.vertical)
        }.navigationTitle(klass.getClassName())
    }
}

struct OptionList_Previews: PreviewProvider {
    static var previews: some View {
        OptionList(klass: klasses[0])
    }
}
