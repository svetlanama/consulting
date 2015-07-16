//: Playground - noun: a place where people can play

import UIKit


// Serial

var critical: Int = 0
let serial_queue = dispatch_queue_create("mt.queue", nil)

func run() {
dispatch_async(serial_queue) {
critical += 1
println("---->1")
}

dispatch_async(serial_queue) {
critical += 3
println("---->2")
}

dispatch_async(serial_queue) {
critical += 2
println("---->3")
}
}

run()
critical


/*
let qosInitiated = Int(QOS_CLASS_USER_INITIATED.value)
var critical: Int = 0
let queue = dispatch_get_global_queue(qosInitiated, 0)
let group = dispatch_group_create()


func run() {
dispatch_group_async(group, queue) {
critical += 1
println("---->1")

}

dispatch_group_async(group, queue) {
critical += 2
println("---->2")
}

//dispatch_group_async(group, queue) {
//critical += 3
//}

dispatch_group_notify(group, queue) {
println("---dispatch_group_notify--- ")
critical

}
}

run()
critical
*/
