
#TWITTER_BEARER='AAAAAAAAAAAAAAAAAAAAAKBmAwAAAAAAEXyiBS3j4oi4kgw7zfgxnWfrkE0%3DalL5M4CtCpYwKj4Ej7nBzSPNFVPsqqwFjKhwaWVcMpiWx4viBL'


library(twitteR)
consumer_key <- 'bBLxDJLMjjFmXkqncJfqD3tzj'
consumer_secret <- 'IaWMr8LFu4wzNhqLb3M3AHWIdOKWAZ17Y7ZgAvjafBbmQJw2lG'
access_token <- '167398637-Poi1yCgYqRiHhcD8g2q0YisRFkS4CRkDeJ3YfAwS'
access_key <- '1zSHMUDuG8Vqwud9wnAnn7fk9F4zUWVClPumFbId4UkIL'
setup_twitter_oauth(consumer_key,consumer_secret,access_token,access_key)
tweets <- searchTwitter('$aapl',n=10,lang = 'en')
