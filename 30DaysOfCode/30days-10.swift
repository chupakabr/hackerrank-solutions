func binSeqCount(_ num: Int) -> Int {
    var maxSeq = 0
	var curSeq = 0
    var n = num
    while n > 0 {
		if n%2 == 1 {
			curSeq += 1
		} else if curSeq > 0 {
			if curSeq > maxSeq {
				maxSeq = curSeq
			}
			curSeq = 0
		}
        n = n/2
    }

	if curSeq > maxSeq {
		maxSeq = curSeq
	}

    return maxSeq
}

print(binSeqCount(Int(readLine()!)!))

