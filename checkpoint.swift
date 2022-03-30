let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
let number = luckyNumbers.sorted { $0 < $1 }

for myInt in number{
  if !(myInt % 2 == 0) {
    print("\(myInt) is lucky number")
  } 
}