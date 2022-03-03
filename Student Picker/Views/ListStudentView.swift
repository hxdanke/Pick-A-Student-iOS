import SwiftUI

struct ListStudentView: View {
    
    var klass: Klass
    
    var body: some View {
        List{
            ForEach(0...klass.getNumOfStudents() - 1, id:\.self){index in
                StudentNameRow(klass: klasses[klass.id - 1], studentIndex: index)
            }
        }
        .navigationTitle(klass.getClassNameShort() + " Name List")
    }
}

struct ListStudentView_Previews: PreviewProvider {
    static var previews: some View {
        ListStudentView(klass: klasses[0])
    }
}
