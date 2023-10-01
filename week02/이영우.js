function solution(s) {
    const splitedString = [...s]
    
    const resultArr = []
    
    for (let i = 0; i < splitedString.length; i++) {
        if (i === 0) {
            resultArr.push(-1)
            continue
        }
        
        let result = -1
        for (let j = 0; j < i; j++) {
            if (splitedString[j] === splitedString[i]) {
                result = i - j
            }
        }
        
        resultArr.push(result)
    }        

    return resultArr;
}
