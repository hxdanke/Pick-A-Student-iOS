import SwiftUI

struct PickStudentView: View {
    
    var klass: Klass
    @State var studentName = " "
        
    var body: some View {
        VStack{
            Spacer()
            Text(studentName)
                .font(.largeTitle)
                .padding(.bottom, 150.0)
            Button {
                //randomise
                studentName = klass.studentNameList[Int.random(in: 0...klass.studentNameList.count-1)]
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
