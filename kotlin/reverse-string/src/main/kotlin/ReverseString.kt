fun reverse(input: String): String {
    var resultString = ""
    input.forEach { char ->  resultString = char + resultString }
    return resultString
}
