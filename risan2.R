library(pracma)
#if the result shows True, the proposition is True. Or the proposition is False
k = sample(1:1000,100) #choice 100 random n in 1:1000

f1 = function(n)
{
  if(n%%2 == 0)
  {
    if((n+1)%%5 == 0)
    {
      return(1)
    }
    else return(2)
  }
  else return (0)
}

f2 = function(n)
{
  if((n+1)%%5 == 0)
  {
    if(isprime(n+2) == 1)
      return(1)
    else return(2)
  }
  else return(0)
}

f_s = function(n)
{
  q = f1(n)
  if(q == 2 | q == 0)
  {
    k = f2(n)
  }
  if(q==2 && k ==2)
  {
    paste( "error at:",as.character(n),"is false")
    return(0)
  }
  return(1)
}
for(i in 1:length(k))
{
  n = k[i]
  result = f_s(n)
  if(result == 0)
    break
}
if(result == 0)
{print("False")}
if(result == 1)
  print("True")
