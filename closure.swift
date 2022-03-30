
func greetUser(){
  print("Hi There!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

let sayHello = {
  print("hi bruce!")
}
sayHello()

let sayHelloName = { (name: String) -> String in 

                "Hi \(name)"
}

print(sayHelloName("Fuckde"))

func getUserData(for id: Int) -> String {
  if id == 1989{
    return "Taylor Swift"
  }else{
    return "Anonymous"
  }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(data)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// func captainFirstSorted(name1: String, name2: String) -> Bool {
//     if name1 == "Suzanne" {
//         return true
//     } else if name2 == "Suzanne" {
//         return false
//     }

//     return name1 < name2
// }


// let captainFirstTeam = team.sorted(by: captainFirstSorted)
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
print(captainFirstTeam)