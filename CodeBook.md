# Code book that describes the variables, the data, and any transformations or work that I performed to clean up the data

## Human Activity Recognition Using Smartphones Data Set

### Abstract: 
#### Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


## The Dataset *dataset.txt*

The dataset contains 180 observations and the 68 variables listed below

        + subject : Subject ID, integer, 30 levels, 1 to 30
        + activity_name : Activity name, string, 6 levels
                1."walking"
                2."walking_upstairs"
                3."walking_downstairs"
                4."sitting"           
                5."standing"
                6."laying"
        + frequency_domain_signals_body_accelerometer_euclidean_norm_mean_value : Average of the observations for this set of parameters, numeric                           
        + frequency_domain_signals_body_accelerometer_euclidean_norm_standard_deviation : Average of the observations for this set of parameters, numeric                   
        + frequency_domain_signals_body_accelerometer_jerk_signals_mean_value_x_direction : Average of the observations for this set of parameters, numeric                 
        + frequency_domain_signals_body_accelerometer_jerk_signals_mean_value_y_direction : Average of the observations for this set of parameters, numeric                 
        + frequency_domain_signals_body_accelerometer_jerk_signals_mean_value_z_direction : Average of the observations for this set of parameters, numeric                 
        + frequency_domain_signals_body_accelerometer_jerk_signals_standard_deviation_x_direction : Average of the observations for this set of parameters, numeric         
        + frequency_domain_signals_body_accelerometer_jerk_signals_standard_deviation_y_direction : Average of the observations for this set of parameters, numeric         
        + frequency_domain_signals_body_accelerometer_jerk_signals_standard_deviation_z_direction : Average of the observations for this set of parameters, numeric         
        + frequency_domain_signals_body_accelerometer_mean_value_x_direction : Average of the observations for this set of parameters, numeric                              
        + frequency_domain_signals_body_accelerometer_mean_value_y_direction : Average of the observations for this set of parameters, numeric                              
        + frequency_domain_signals_body_accelerometer_mean_value_z_direction : Average of the observations for this set of parameters, numeric                              
        + frequency_domain_signals_body_accelerometer_standard_deviation_x_direction : Average of the observations for this set of parameters, numeric                      
        + frequency_domain_signals_body_accelerometer_standard_deviation_y_direction : Average of the observations for this set of parameters, numeric                      
        + frequency_domain_signals_body_accelerometer_standard_deviation_z_direction : Average of the observations for this set of parameters, numeric                      
        + frequency_domain_signals_body_body_accelerometer_jerk_signals_euclidean_norm_mean_value : Average of the observations for this set of parameters, numeric         
        + frequency_domain_signals_body_body_accelerometer_jerk_signals_euclidean_norm_standard_deviation : Average of the observations for this set of parameters, numeric 
        + frequency_domain_signals_body_body_gyroscope_euclidean_norm_mean_value : Average of the observations for this set of parameters, numeric                          
        + frequency_domain_signals_body_body_gyroscope_euclidean_norm_standard_deviation : Average of the observations for this set of parameters, numeric                  
        + frequency_domain_signals_body_body_gyroscope_jerk_signals_euclidean_norm_mean_value : Average of the observations for this set of parameters, numeric             
        + frequency_domain_signals_body_body_gyroscope_jerk_signals_euclidean_norm_standard_deviation : Average of the observations for this set of parameters, numeric     
        + frequency_domain_signals_body_gyroscope_mean_value_x_direction : Average of the observations for this set of parameters, numeric                                  
        + frequency_domain_signals_body_gyroscope_mean_value_y_direction : Average of the observations for this set of parameters, numeric                                  
        + frequency_domain_signals_body_gyroscope_mean_value_z_direction : Average of the observations for this set of parameters, numeric                                  
        + frequency_domain_signals_body_gyroscope_standard_deviation_x_direction : Average of the observations for this set of parameters, numeric                          
        + frequency_domain_signals_body_gyroscope_standard_deviation_y_direction : Average of the observations for this set of parameters, numeric                          
        + frequency_domain_signals_body_gyroscope_standard_deviation_z_direction : Average of the observations for this set of parameters, numeric                          
        + time_body_accelerometer_euclidean_norm_mean_value : Average of the observations for this set of parameters, numeric                                               
        + time_body_accelerometer_euclidean_norm_standard_deviation : Average of the observations for this set of parameters, numeric                                       
        + time_body_accelerometer_jerk_signals_euclidean_norm_mean_value : Average of the observations for this set of parameters, numeric                                  
        + time_body_accelerometer_jerk_signals_euclidean_norm_standard_deviation : Average of the observations for this set of parameters, numeric                          
        + time_body_accelerometer_jerk_signals_mean_value_x_direction : Average of the observations for this set of parameters, numeric                                     
        + time_body_accelerometer_jerk_signals_mean_value_y_direction : Average of the observations for this set of parameters, numeric                                     
        + time_body_accelerometer_jerk_signals_mean_value_z_direction : Average of the observations for this set of parameters, numeric                                     
        + time_body_accelerometer_jerk_signals_standard_deviation_x_direction : Average of the observations for this set of parameters, numeric                             
        + time_body_accelerometer_jerk_signals_standard_deviation_y_direction : Average of the observations for this set of parameters, numeric                             
        + time_body_accelerometer_jerk_signals_standard_deviation_z_direction : Average of the observations for this set of parameters, numeric                             
        + time_body_accelerometer_mean_value_x_direction : Average of the observations for this set of parameters, numeric                                                  
        + time_body_accelerometer_mean_value_y_direction : Average of the observations for this set of parameters, numeric                                                  
        + time_body_accelerometer_mean_value_z_direction : Average of the observations for this set of parameters, numeric                                                  
        + time_body_accelerometer_standard_deviation_x_direction : Average of the observations for this set of parameters, numeric                                          
        + time_body_accelerometer_standard_deviation_y_direction : Average of the observations for this set of parameters, numeric                                          
        + time_body_accelerometer_standard_deviation_z_direction : Average of the observations for this set of parameters, numeric                                          
        + time_body_gyroscope_euclidean_norm_mean_value : Average of the observations for this set of parameters, numeric                                                   
        + time_body_gyroscope_euclidean_norm_standard_deviation : Average of the observations for this set of parameters, numeric                                           
        + time_body_gyroscope_jerk_signals_euclidean_norm_mean_value : Average of the observations for this set of parameters, numeric                                      
        + time_body_gyroscope_jerk_signals_euclidean_norm_standard_deviation : Average of the observations for this set of parameters, numeric                              
        + time_body_gyroscope_jerk_signals_mean_value_x_direction : Average of the observations for this set of parameters, numeric                                         
        + time_body_gyroscope_jerk_signals_mean_value_y_direction : Average of the observations for this set of parameters, numeric                                         
        + time_body_gyroscope_jerk_signals_mean_value_z_direction : Average of the observations for this set of parameters, numeric                                         
        + time_body_gyroscope_jerk_signals_standard_deviation_x_direction : Average of the observations for this set of parameters, numeric                                 
        + time_body_gyroscope_jerk_signals_standard_deviation_y_direction : Average of the observations for this set of parameters, numeric                                 
        + time_body_gyroscope_jerk_signals_standard_deviation_z_direction : Average of the observations for this set of parameters, numeric                                 
        + time_body_gyroscope_mean_value_x_direction : Average of the observations for this set of parameters, numeric                                                      
        + time_body_gyroscope_mean_value_y_direction : Average of the observations for this set of parameters, numeric                                                      
        + time_body_gyroscope_mean_value_z_direction : Average of the observations for this set of parameters, numeric                                                      
        + time_body_gyroscope_standard_deviation_x_direction : Average of the observations for this set of parameters, numeric                                              
        + time_body_gyroscope_standard_deviation_y_direction : Average of the observations for this set of parameters, numeric                                              
        + time_body_gyroscope_standard_deviation_z_direction : Average of the observations for this set of parameters, numeric                                              
        + time_gravity_accelerometer_euclidean_norm_mean_value : Average of the observations for this set of parameters, numeric                                            
        + time_gravity_accelerometer_euclidean_norm_standard_deviation : Average of the observations for this set of parameters, numeric                                    
        + time_gravity_accelerometer_mean_value_x_direction : Average of the observations for this set of parameters, numeric                                               
        + time_gravity_accelerometer_mean_value_y_direction : Average of the observations for this set of parameters, numeric                                               
        + time_gravity_accelerometer_mean_value_z_direction : Average of the observations for this set of parameters, numeric                                               
        + time_gravity_accelerometer_standard_deviation_x_direction : Average of the observations for this set of parameters, numeric                                       
        + time_gravity_accelerometer_standard_deviation_y_direction : Average of the observations for this set of parameters, numeric                                       
        + time_gravity_accelerometer_standard_deviation_z_direction : Average of the observations for this set of parameters, numeric 