ge_daily_price <- function(item_id){
  if(is.numeric(item_id)){
    item_id <- as.character(item_id)
  }
  query_string <- paste0("http://services.runescape.com/m=itemdb_rs/api/graph/", item_id, ".json")
  json_data <- fromJSON(query_string)
  as.numeric(json_data$daily)
}
