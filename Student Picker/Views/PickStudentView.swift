import SwiftUI

struct PickStudentView: View {
    
    var klass: Klass
    @State var studentName = " "
    @State var studentName2 = " "
    @State var index = 0
        
    var body: some View {
        VStack{
            Spacer()
            Text(studentName)
                .font(.largeTitle)
            Text(studentName2)
                .font(.largeTitle)
                .padding(.bottom, 150.0)
            Button {
                //randomise
                index = Int.random(in: 0...klass.studentNameList.count-1)
                studentName = klass.studentNameList[index]
                studentName2 = klass.studentNameList2[index]
            } label: {
                Text("Random Draw")
                    .foregroundColor(Color.black)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                                .stroke(Color .black, lineWidth: 1))
            }
            Spacer()
        }.navigationTitle("Pick A Student " + klass.getClassNameShort())
    }
}

struct PickStudentView_Previews: PreviewProvider {
    static var previews: some View {
        PickStudentView(klass: klasses[0])
    }
}
