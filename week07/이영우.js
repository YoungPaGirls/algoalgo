function solution(foods) {
    const resultArr = []
    
    foods.forEach((food, idx) => {
        if (idx > 0) {
            const count = Math.floor(food / 2)
            for (let i = 1; i <= count; i++) {
                resultArr.push(idx)
            }
        }
    })
    
    const reverseTxt = [...resultArr].reverse()
    const txt = `${resultArr.join('')}0${reverseTxt.join('')}`
    
    return txt;
}
