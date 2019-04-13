 public class ListNode<T> {
    public var value: T
    public var next: ListNode<T>?
    public init(_ x: T) {
        self.value = x
        self.next = nil
    }
 }
 
 extension ListNode : CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
 }
 func removeKFromList(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {
    
    guard var l = l else {return nil}
    
    var head : ListNode<Int>? = l
    
    while head?.value == k {
        head = head?.next
    }
    
    while l.next != nil {
        if l.next?.value  == k {
            l.next = l.next?.next
        }
        else {
            l = l.next!
        }
    }
    
    return head
    
 }
 
