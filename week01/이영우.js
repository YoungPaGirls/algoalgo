function solution(k, m, score) {
  const sortedApples = [...score].sort((a, b) => b - a)
  
  let maxProfit = 0
  
  for (let i = 0; i + m <= sortedApples.length; i += m) {
      const minApple = sortedApples[i + (m - 1)]
      maxProfit += minApple * m
  }
  
  return maxProfit;
}
