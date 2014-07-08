merge :: Ord a => [a] -> [a] -> [a]
merge [] list = list
merge list [] = list
merge elm1:rest1 elm2:rest2
      = if elm1 < elm2 then elm1:(merge rest1 elm2:rest2)
        else elm2:(merge elm1:rest1 rest2)

merge_sort :: Ord a => [a] -> [a]
merge_sort [] = []
merge_sort elm:[] = [elm]
merge_sort elm1:elm2:[] = if elm1 > elm2 then [elm1, elm2]
                          else [elm2, elm1]
merge_sort list = merge (merge_sort (take
                            (quot (length list) 2) list))
                        (merge_sort (take
                            (quot (length list)-(length list) 2) list))



                            
                
