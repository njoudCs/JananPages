//
//  BlogPosts .swift
//  blog
//
//  Created by Nourah on 08/04/1444 AH.
//

import Foundation
struct BlogPosts : Identifiable {
    var id : Int
    var name : String
    var image : String
    var details : String
}

var featuredposts = [
 BlogPosts(id: 0, name: " Nancy Montgomery", image: "ignore baby", details: "Yes. It's common for babies and toddlers to ignore a parent occasionally. As a newborn, your baby quickly learns to recognize your face, ... "),
 BlogPosts(id: 1, name:  " Elizabeth Dougherty ", image: "picky eater", details: "Eating solid food is still a new experience for your toddler. He may need time to get used to the various..."),
 BlogPosts(id: 2, name: "Darienne Hosley Stewart", image: "baby reading", details: "It's never too early to steer your child toward books. But with toddlers, the goal is to foster a lifelong love of reading..."),
 BlogPosts(id: 3, name: "Karisa Ding", image: "newborn", details: "Baby growth charts track your child's growth over time and compare it to that of similar babies. Growth charts can show you how your baby's growing ..."),
           

]

var latestposts = [
BlogPosts(id: 0, name: "Colleen de Bellefonds", image: "pregnant", details: "Your second pregnancy is often different than your first. You might show sooner, feel more tired, have stronger or more frequent back pains"),
BlogPosts(id: 1, name: " Elizabeth Dougherty ", image: "picky eater", details: "Eating solid food is still a new experience for your toddler. He may need time to get used to the various..."),
BlogPosts(id: 2, name: "Mary Sauer", image: "baby sleep", details: "Newborn babies sleep from 11 to 16 hours a day, at all hours of the day and night. Your baby's sleep patterns may be unpredictable for a while, ")
]

