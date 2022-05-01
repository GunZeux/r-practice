Deck <- read.csv("E:/college/programs/R/download/9629323-ee5dfc039fd581cb467cc69c226ea2524913c3d8/deck.csv")
setup <- function(deck){
  DECK <- deck
  
  DEAL <- function(){
    card <- deck[1, ]
    assign("deck",deck[-1, ],envir = parent.env(environment()))
    card
  }
  
  SHUFFLE <- function(){
    random <- sample(1:52,size = 52)
    assign("deck",DECK[random, ],envir = parent.env(environment()))
  }
  list(deal = DEAL, shuffle = SHUFFLE)
}
cards <- setup(Deck)
deal <- cards$deal
shuffle <- cards$shuffle

rm(Deck)
#shuffle <- function(cards){
#  random <- sample(1:52,size=52)
 # cards[random, ]
#}

#deal <- function(cards){
#  cards[1, ]
#}
