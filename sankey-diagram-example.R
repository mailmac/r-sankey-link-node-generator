library(networkD3)
library(jsonlite)
library(magrittr)

energy <- '
{"nodes":[{"name":"maf"},{"name":"Bio-conversion"},{"name":"Coal"},{"name":"Other waste"},{"name":"agriculural \'waste\'"}],"links":[{"source":0,"target":1,"value":124},{"source":2,"target":1,"value":1},{"source":3,"target":0,"value":2},{"source":4,"target":1,"value":35}]}
' %>% 
  fromJSON

sankeyNetwork(Links = energy$links, 
              Nodes = energy$nodes, 
              Source = "source",
              Target = "target", 
              Value = "value", 
              NodeID = "name",
              units = "TWh", 
              fontSize = 12, 
              nodeWidth = 30)
