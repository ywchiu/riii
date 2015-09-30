getwd()
setwd("D:/OS DATA/Desktop")

match = read.table("match.txt", sep='|')
mat = matrix(-1, nrow=5, ncol=5)
colnames(mat) = c("A","B", "C","D", "E")
rownames(mat) = c("A","B", "C","D", "E")
mat["A","B"] = 1

for (i in 1:nrow(match)){
  row = match[i,];
  mat[row$V1, row$V2] = row$V3;
}

match_func = function(filename="match.txt"){
  match = read.table(filename, sep='|');
  mat = matrix(-1, nrow=5, ncol=5);
  colnames(mat) = c("A","B", "C","D", "E");
  rownames(mat) = c("A","B", "C","D", "E");
  for (i in 1:nrow(match)){
    row = match[i,];
    mat[row$V1, row$V2] = row$V3;
  }
  mat;
}


