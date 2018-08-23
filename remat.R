remat=function(snb,smat){
  List=length(snb)
  rmat=matrix(0,nrow=List,ncol=List)
  Vec=rep(0,List)
  for(h in 1:List){
    Vec[h]=length(unlist(snb[h]))
  }
  for(j in 1:List){
    for (i in 1:Vec[j] ){
      rmat[j,][unlist(smat[["neighbours"]][j])[i]]=unlist(smat[["weights"]][j])[i]
    }
  } 
  rmat
}