import Foundation

struct ServerResponse: Codable {
    
    struct Data: Codable {
        var accessToken     = ""
        var expiredAt       = ""
        
        private enum CodingKeys: String, CodingKey {
            case accessToken = "access_token"
            case expiredAt = "expired_at"
        }
    }
    
    var status = 0
    var data : Data
    
    init() {
        self.status = 0
        self.data = Data.init()
    }
}
