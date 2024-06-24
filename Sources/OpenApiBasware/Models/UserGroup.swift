import Foundation

public struct UserGroup: Codable {
    public let externalGroupCode: String  /* value must exists within the P2P Admin user groups */
    public let active: Bool
}