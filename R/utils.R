get_freq_nome <- function(x) {
  # https://servicodados.ibge.gov.br/api/docs/censos/nomes?versao=2
  # breaking changes v2 API
  return <- paste0("https://servicodados.ibge.gov.br/api/v1/censos/nomes/faixa?nome=", x) %>%
    httr::GET() %>% 
    httr::content() %>% 
    dplyr::bind_rows() %>% 
    dplyr::select(decada = faixa, freq)
  
  return
}