import kotlin.math.sqrt

object CryptoSquare {

    fun ciphertext(plaintext: String): String {
        val normalizedText = plaintext.filter { it.isLetterOrDigit() }.split(' ').joinToString("") { it.lowercase() }

        val temp = sqrt(normalizedText.length.toDouble()).toInt()

        val (colNumber, rowNumber) = when {
            temp * temp == normalizedText.length -> temp to temp
            temp * (temp + 1) >= normalizedText.length -> (temp + 1) to temp
            else -> (temp + 1) to (temp + 1)
        }

        var resultString: String = ""

        for (i in 0 until colNumber){
            for(j in 0 until rowNumber){
                val idx = colNumber * j + i
                if(idx >= normalizedText.length) {
                    resultString += " "
                }else{
                    resultString += normalizedText[idx]
                }

            }
            if(i != colNumber - 1){
                resultString += " "
            }


        }

        return resultString
    }

}


