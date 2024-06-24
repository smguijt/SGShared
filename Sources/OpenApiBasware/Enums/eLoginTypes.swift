import Foundation

public enum eLoginTypes:Int {
    case UsernameAndPasswordLogin = 0
    case WindowsDomainLogin = 1
    case ExternalAuthenticationLogin = 2
    case UserAuthenticationThroughBaswareAccess = 4
    case CompanyDefault = 99
}
