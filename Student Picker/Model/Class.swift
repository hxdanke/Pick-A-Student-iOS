import Foundation
import SwiftUI

struct Klass: Hashable, Codable, Identifiable{
    
    var id: Int
    var academicYear: Int
    var classType: String
    var classNum: String
    var studentNameList: Array<String>
    
}
