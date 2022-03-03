import Foundation
import SwiftUI

struct Klass: Hashable, Codable, Identifiable{
    
    var id: Int
    var academicYear: Int
    var classType: String
    var classNum: String
    var studentNameList: Array<String>
    var studentNameList2: Array<String>
    
    func getClassName() -> String {
        return String(academicYear) + " - " + String(academicYear + 1) + " " + classType + classNum
    }
    
    func getClassNameShort() -> String{
        return classType + classNum
    }
    
    func getNumOfStudents() -> Int{
        return studentNameList.count
    }
}
