
step1 = function(n)
{
  
  choice = n %% 6
  n = n - choice
  text = paste("I take",as.character(choice),", n =",as.character(n))
  print(text)
  return(n)
}

steps = function(n,get_num)
{
  if(get_num > 5|get_num < 1)
  {
    print("Please input correct number!")
    return (n)
  }
  n = n - as.integer( get_num)
  
  if(n < 0)
  { 
    print(paste("n =",as.character(n)))
    print("you lost")
    return(999999)
  }
  n = step1(n)
  return(n)
  
}

games = function(n)
{
  if(n%%6 == 0)
  {
    print("You first")
    print("Input your num:")
    get_num = as.integer(readline())
    n = steps(n,get_num)
  }
  else
  {
    print("I first")
    n = step1(n)
  }
  while(n != 999999) 
  {
    print("Input your num:")
    get_num = as.integer(readline())
    n = steps(n,get_num)
  }
}
print("Please input n")
n = as.integer(readline())
games(n)
