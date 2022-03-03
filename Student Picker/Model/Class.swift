import Foundation
import SwiftUI

struct Klass: Hashable, Codable, Identifiable{
    
    var id: Int
    var academicYear: Int
    var classType: String
    var classNum: String
    var studentNameList: Array<String>
    
    func getClassName() -> String {
        return String(academicYear) + " - " + String(academicYear + 1) + " " + classType + classNum
    }
    
    func getClassNameShort() -> String{
        return classType + classNum
    }
}
