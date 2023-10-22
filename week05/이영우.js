function solution(name, yearning, photo) {
    const memory = name.reduce((map, cur, curIdx) => {
        map.set(cur, yearning[curIdx])
        return map
    }, new Map)
    
    const answer = []
    photo.forEach((picture, idx) => {
        let firstMemory = 0
        picture.forEach((pic) => {
            const year = memory.get(pic)
            
            if (year) {
                firstMemory += year
            }
        })
        answer.push(firstMemory)
    })
    
    
    return answer
}
