import Foundation
let randomNumber = UInt8.random(in: 1...10)
print("Компьютер загадал число")
print("Введите число от 1 до 255 и нажмите Enter")
var isWin = false
repeat {
    guard let userNumber = UInt8(readLine() ?? "") else {
        print("Вы ввели некорректное число")
     continue
    }
    if userNumber > randomNumber {
        print("Ваш вариант больше загаданного числа")
    } else if userNumber < randomNumber {
        print("Ваш вариант меньше загаданного числа")
    } else {
        print("Вы угадали число")
        isWin = true
    }
} while !isWin
