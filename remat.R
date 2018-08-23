remat=function(snb,smat){
  # you can use this function to transform the sptial weight list to a matrix
  # snb is the neighbours list you create by function poly2nb or knn2nb and so on
  # if you use poly2nb to create a queen weight matrix,you should add zero.police=TRUE
  # smat ist the Spatial weights for neighbours lists you create by function nb2listw
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
