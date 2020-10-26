
import Foundation

struct BaseAPIResponse<Response: Codable>: Codable {
    var results: Response
}
