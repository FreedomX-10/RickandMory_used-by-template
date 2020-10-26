import Moya
import Foundation

enum RickandMortyTargetType {
  case character
  case location
  case episode
}

extension RickandMortyTargetType : TargetType {
  var baseURL: URL {
    URL(string: "https://rickandmortyapi.com/api/")!
  }
  
  var path: String {
    switch self {
    case .character:
      return "character"
    case .location:
      return "location"
    case .episode:
      return "episode"
    }
  }
  
  var method: Moya.Method {
    .get
  }
  
  var sampleData: Data {
    Data()
  }
  
  var task: Task {
    .requestPlain
  }
  
  var headers: [String : String]? {
    nil
  }
  
  
}
