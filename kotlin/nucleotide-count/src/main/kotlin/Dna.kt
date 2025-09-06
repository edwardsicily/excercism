class Dna (private val sequence: String){

    private val nucleotides = listOf<Char>('T', 'G', 'C', 'A')

    init{
        sequence.forEach { char ->
                if(!nucleotides.contains(char)) throw IllegalArgumentException()
        }

    }

    val nucleotideCounts: Map<Char, Int>
        get() {
            val res = mutableMapOf<Char, Int>('T' to 0, 'G' to 0, 'C' to 0, 'A' to 0)
            sequence.forEach { char ->
                if(nucleotides.contains(char)){
                    print(char)
                    res[char] = (res[char] ?: 0) + 1
                }else {
                    throw IllegalArgumentException()
                }

            }
            return res
        }
}

fun main(){
    val dna = Dna("AGXXACT")

}
