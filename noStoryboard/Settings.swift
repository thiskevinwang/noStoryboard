import UIKit

class Settings: NSObject, NSCoding {
  
  var username: String?
  
  override init() {
    super.init()
  }

  required init?(coder aDecoder: NSCoder) {
    username = aDecoder.decodeObject(forKey: "username") as? String
  }
  
  func encode(with aCoder: NSCoder) {
    aCoder.encode(username, forKey: "username")
  }
  
  func saveSettings() {
//    let encodedData = NSKeyedArchiver.archivedData(withRootObject: self)
    UserDefaults.standard.set(username, forKey: "username")
//    UserDefaults.standard.synchronize()
  }
  
  func loadSettings() {
    username = UserDefaults.standard.string(forKey: "username")
  }
  
//  func loadSettings() {
//    if let decoded = UserDefaults.standard.object(forKey: settingsKey) as? Data {
//      if let loadedSettings = NSKeyedUnarchiver.unarchiveObject(with: decoded) as? Settings {
//        username = loadedSettings.username
//      }
//    }
//  }
}
