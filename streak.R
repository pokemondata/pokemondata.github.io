fire_diff <- fire_rune_price[1:168] - fire_rune_price[2:169]

streak_length <- c(0)
streak_length_index <- 1
for(i in diff(which(fire_diff >= 0))){
  if(i == 1){
    streak_length[streak_length_index] <- streak_length[streak_length_index] + 1
  } else {
    streak_length_index = streak_length_index + 1
    streak_length[streak_length_index] <- 1
  }
}

mean(streak_length)
