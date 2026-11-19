 t_test =function(mu) {
    

    sim_df = 
      tibble(
        x =  rnorm(n = 30, mean = mu, sd = 5)
      )
    
    t_test_df = 
      t.test(sim_df, mu = 0) |> 
      broom::tidy() |> 
      select(estimate, p.value) |>
      mutate (reject_H0 = p.value < 0.05)
    
    
    return(t_test_df)
 }
 