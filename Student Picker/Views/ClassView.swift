import SwiftUI

struct ClassView: View {
    
    var klass: Klass
    @State var studentName = " "
        
    var body: some View {
        VStack{
            Text(String(klass.academicYear) + " - " + String(klass.academicYear + 1))
                .padding(.top, 150.0)
                .padding(.bottom, 10.0)
            Text(klass.classType + klass.classNum)
                .padding(.bottom, 100.0)
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
        }
    }
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView(klass: klasses[0])
    }
}
