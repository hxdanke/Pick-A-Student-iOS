import SwiftUI

struct ListStudentView: View {
    
    var klass: Klass
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<klass.studentNameList.count) {index in
                    VStack {
                        HStack {
                            Text(klass.studentNameList[index])
                                .padding(.vertical, 5)
                                .padding(.leading, 20)
                            Spacer()
                        }
                        Divider()
                    }
                }
            }
        }
        .padding(.top, 5)
        .navigationTitle("List of Students")
    }
}

struct ListStudentView_Previews: PreviewProvider {
    static var previews: some View {
        ListStudentView(klass: klasses[0])
    }
}
