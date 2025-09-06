fun translate(rna: String?): List<String> {

    if(rna == null){
        return emptyList()
    }

    val aminoacidToCodon: Map<String, List<String>> = mapOf(
        "Methionine" to listOf("AUG"),
        "Phenylalanine" to listOf("UUU", "UUC"),
        "Leucine" to listOf("UUA", "UUG"),
        "Serine" to listOf("UCU", "UCC", "UCA", "UCG"),
        "Tyrosine" to listOf("UAU", "UAC"),
        "Cysteine" to listOf("UGU", "UGC"),
        "Tryptophan" to listOf("UGG"),
        "STOP" to listOf("UAA", "UAG", "UGA")
    )

    val codonToAminoacid: Map<String, String> = aminoacidToCodon.flatMap { (aminoacid, codons) -> codons.map { codon -> codon to aminoacid } }.toMap()


    val protein = mutableListOf<String>()
    val chunkedRna = rna.chunked(3)

    for(codon in chunkedRna ){
        if(codon.length < 3) {
            throw IllegalArgumentException()
        }
        val aminoacid = codonToAminoacid[codon] ?: throw IllegalArgumentException()

        if(aminoacid == "STOP") {
            return protein
        }
        protein.add(aminoacid)
    }

    return protein
}


