import SwiftUI

struct ListStudentView: View {
    
    var klass: Klass
    
    var body: some View {
        List(klass.studentNameList, id:\.self){
            Text($0)
                .padding(.vertical)
        }
        .navigationTitle("List of Students")
    }
}

struct ListStudentView_Previews: PreviewProvider {
    static var previews: some View {
        ListStudentView(klass: klasses[0])
    }
}
