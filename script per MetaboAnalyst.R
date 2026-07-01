
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
if (!requireNamespace("remotes", quietly = TRUE))
  install.packages("remotes")

BiocManager::install("impute")


bioc_pkgs <- c(
  "impute",          
  "pcaMethods",       
  "globaltest",      
  "GlobalAncova",    
  "Rgraphviz",        
  "preprocessCore",   
  "genefilter",       
  "SSPA",            
  "sva",             
  "limma",            
  "KEGGgraph",        
  "siggenes",         
  "BiocParallel",     
  "MSnbase",         
  "multtest",        
  "RBGL",             
  "edgeR",           
  "fgsea",            
  "crmn"             
)

BiocManager::install(bioc_pkgs,
                     update  = FALSE,   
                     ask     = FALSE)




cran_pkgs <- c(
  "Rserve",       
  "RSclient",     
  "qs2",         
  "httr",        
  "rjson",       
  "RJSONIO",      
  "ggplot2",      
  "dplyr",       
  "tidyr",       
  "purrr",        
  "stringr",     
  "readxl",       
  "openxlsx",    
  "igraph",       
  "Cairo"         
)

install.packages(cran_pkgs,
                 dependencies = TRUE,
                 repos = "https://cloud.r-project.org")


if (!requireNamespace("RSclient", quietly = TRUE)) {
  install.packages("RSclient",
                   repos = "https://www.rforge.net/",
                   type  = "source")
}





install.packages(c("plotly", "prodlim", "ipred", "recipes", "caret"), 
                 type = "binary", 
                 dependencies = TRUE) 
install.packages("cowplot", type = "binary", dependencies = TRUE)
install.packages("qs", type = "binary", dependencies = TRUE)
install.packages("corrr", type = "binary", dependencies = TRUE)
install.packages("FactoMineR", type = "binary", dependencies = TRUE)
install.packages("factoextra", type = "binary", dependencies = TRUE)
install.packages("Cairo", type = "binary", dependencies = TRUE)
install.packages("impute", type = "binary", dependencies = TRUE)

remotes::install_github(
  "xia-lab/MetaboAnalystR",
  build          = TRUE,
  build_vignettes = FALSE,  
  build_manual   = FALSE,    
  upgrade        = "never"   
)


#per verificare
library(MetaboAnalystR)

