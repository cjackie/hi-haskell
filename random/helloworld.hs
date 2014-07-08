

main = do
     print (hello_world 10)

--print hello world multiple times
hello_world ::  Int -> [Char]   
hello_world n = if n <= 0 then  ""
                else "helloworld " ++ hello_world (n-1)
