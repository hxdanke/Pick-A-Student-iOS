import SwiftUI

struct ListStudentView: View {
    
    var klass: Klass
    
    var body: some View {
        VStack {
            HStack{
                Text("List of names")
                    .font(.largeTitle)
                    .padding(.vertical, 5)
                    .padding(.leading, 20)
                Spacer()
            }
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
        }
    }
}

struct ListStudentView_Previews: PreviewProvider {
    static var previews: some View {
        ListStudentView(klass: klasses[0])
    }
}
