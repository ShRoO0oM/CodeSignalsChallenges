extension ListNode : CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}

func mergeTwoLinkedLists(l1: ListNode<Int>?, l2: ListNode<Int>?) -> ListNode<Int>? {
    
    if l1 == nil {
        return l2
    }
    if l2 == nil {
        return l1
    }
    
    var l1 = l1
    
    var l2 = l2
    
    
    var head : ListNode<Int>? = ListNode<Int>(l1!.value)
    
    if l1!.value > l2!.value {
        head = ListNode<Int>(l2!.value)
        l2 = l2?.next
    }else {
        l1 = l1?.next
    }
    
    
    var tail : ListNode<Int>? = head
    
    head!.next = tail
    
    
    while l1 != nil ||  l2 != nil {
        
        if let list1 = l1 {
            if let list2 = l2 {
                //compare between these two
                if list1.value < list2.value {
                    let newNode = ListNode<Int>(list1.value)
                    tail?.next = newNode
                    tail = newNode
                    l1 = list1.next
                }else {
                    let newNode = ListNode<Int>(list2.value)
                    tail?.next = newNode
                    tail = newNode
                    l2 = list2.next
                }
            }else {
                //add all list1 elements to linkedlist
                if tail == nil {
                    tail = list1
                }else {
                    tail?.next = list1
                }
                break
            }
        }else if let list2 = l2{
            if tail == nil {
                tail = list2
            }else {
                tail?.next = list2
            }
            break
            //add all list2 elemets to linkedList
        }
        
    }
    
    return head
}
