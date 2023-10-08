function splitString(t, p) {
    const pLength = p.length
    const tLength = t.length
    
    let num = 0
    for (let i = 0; i < tLength; i ++) {
        if ((i + pLength) - 1 === tLength) {
            break
        }
        
        const splittedNum = Number(t.slice(i, i + pLength))
        
        if (splittedNum <= Number(p)) {
            num++
        } 
    }
    
    return num
}


function solution(t, p) {
    const answer = splitString(t, p)
    return answer;
}
