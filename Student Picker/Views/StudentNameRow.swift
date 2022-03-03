import SwiftUI

struct StudentNameRow: View {
    
    var klass: Klass
    var studentIndex: Int
    
    var body: some View {
        HStack {
            Text(klass.studentNameList[studentIndex])
            Spacer()
            Text(klass.studentNameList2[studentIndex])
        }.padding(.horizontal, 10)
    }
}

struct StudentNameRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StudentNameRow(klass: klasses[0], studentIndex: 0)
            StudentNameRow(klass: klasses[0], studentIndex: 1)
            StudentNameRow(klass: klasses[0], studentIndex: 2)
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
