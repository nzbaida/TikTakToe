play <- function(){
  board <- data.frame("1" = c(NA, NA, NA), "2" = c(NA, NA, NA), "3" = c(NA, NA, NA), stringsAsFactors = FALSE)
  i <- 1
  turns <- rep(c(1,2), 10)
  repeat{
    print(board)
    player_number <- turns[i]
    if (player_number == 1) {
      symbol <- "x"
    }else{
      symbol <- "o"
    }
    row_num <- readline("enter row number")
    row_num <- as.integer(row_num)
    col_num <- readline("enter column number")
    col_num <- as.integer(col_num)
    board[row_num,col_num] <- symbol
    print(board)
    i <- i + 1
    if(length(unique(board[1,])) == 1 & all(is.na(board[1,]) == FALSE) || length(unique(board[2,])) == 1 & all(is.na(board[2,]) == FALSE) || length(unique(board[3,])) == 1 & all(is.na(board[3,]) == FALSE) || length(unique(board[,1])) == 1 & all(is.na(board[,1]) == FALSE) || length(unique(board[,2])) == 1 & all(is.na(board[,2]) == FALSE) || length(unique(board[,3])) == 1 & all(is.na(board[,3]) == FALSE) || board[1,1] == board[2,2] & board[2,2] == board[3,3] & all(is.na(c(board[1,1],board[2,2], board[3,3])) == FALSE) || board[1,3] == board[2,2] & board[2,2] == board[3,1] & all(is.na(c(board[1,3],board[2,2], board[3,1])) == FALSE)){
      print("winner")
      break
    } else if(all(is.na(board[1,]) == FALSE) & all(is.na(board[2,]) == FALSE) & all(is.na(board[3,]) == FALSE)){
      print("tie")
      break
    }
  }
}
play()

