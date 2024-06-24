import Foundation

public struct UserEntity: Codable {
    public let firstName: String /*+*/
    public let surName: String /*+*/
    public let uiLanguage: String?
    public let countryCode: String?
    public let telephone: String?
    public let loginAccount: String 
    public let middleInitial: String?
    public let email: String /*+*/
    public let costCenterCode: String?
    public let validFrom: Date?
    public let validUntil: Date?
    public let supervisorLoginAccount: String?
    public let personCode: String?
    public let title: String?
    public let loginType: eLoginTypes = 99 /*+*/
    public let accessEnabledLogin: Bool?  // when LoginType = 4 the this value must be set to True
    public let approvalPasswordUseAllowed: String?
    public let collaborationSendType: eMessageTypes = .NoNotifications
    public let messageSendType: eMessageTypes = .NoNotifications
    public let groups: [UserGroup]?
    public let userRecipientIdentifiers: [UserRecipientIdentifiers]?
    public let accessLoginMethod: String?  // when LoginType = 4 then to be populated. 
    public let accessTimeout: Int?  // when LoginType = 4 then to be populated. 
    public let mfa: String? // when LoginType = 4 then to be populated. 
    public let sendAccountCreationEmail: String?  // when LoginType = 4 then to be populated. 
    public let accountCreationURI: String? // when LoginType = 4 then to be populated. 
    public let companyCode: String /*+*/
    public let loginAllowed: Bool /*+*/ 
    public let applicationGroups: [String]?
    public let externalCode: String /*+*/
    public let lastUpdated: Date?

}