import UIKit

protocol StoryboardLoadable: class {
    associatedtype VC
    static var storyboardName: String { get }
    static var viewControllerId: String { get }
    static func loadFromStoryboard() -> VC
}

extension StoryboardLoadable where Self: UIViewController {
    static func loadFromStoryboard() -> VC {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier(viewControllerId) as! VC
        return vc
    }
}