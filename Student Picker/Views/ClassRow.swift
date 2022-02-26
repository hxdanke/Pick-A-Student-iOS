import SwiftUI

struct ClassRow: View {
    
    var klass: Klass
    
    var body: some View {
        HStack {
            Text(String(klass.academicYear) + " - " + String(klass.academicYear + 1))
            Text(klass.classType + klass.classNum)
            Spacer()
        }
        .padding(.vertical)
    }
}

struct ClassRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ClassRow(klass: klasses[0])
            ClassRow(klass: klasses[1])
            ClassRow(klass: klasses[2])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
