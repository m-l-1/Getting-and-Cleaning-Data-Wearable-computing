# Code book that describes the variables, the data, and any transformations or work that I performed to clean up the data

___

## Average summary of all (training and test) the Human Activity Recognition Using Smartphones Data Set

### Abstract: 

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

### The Dataset *dataset.txt*

The dataset contains 4 variables and 11880 observations

+ **subject** : 
        Subject ID, integer, 30 levels, from 1 to 30

+ **activity_name** : 
        Activity Name, string, 6 levels

        1. "walking"
        2. "walking_upstairs"
        3. "walking_downstairs"
        4. "sitting"           
        5. "standing"
        6. "laying" 
+ **variable** : 
        Measured variable name, string, 66 levels

        [1] "frequency_domain_signals_body_accelerometer_euclidean_norm_mean_value"                          
        [2] "frequency_domain_signals_body_accelerometer_euclidean_norm_standard_deviation"                  
        [3] "frequency_domain_signals_body_accelerometer_jerk_signals_mean_value_x_direction"                
        [4] "frequency_domain_signals_body_accelerometer_jerk_signals_mean_value_y_direction"                
        [5] "frequency_domain_signals_body_accelerometer_jerk_signals_mean_value_z_direction"                
        [6] "frequency_domain_signals_body_accelerometer_jerk_signals_standard_deviation_x_direction"        
        [7] "frequency_domain_signals_body_accelerometer_jerk_signals_standard_deviation_y_direction"        
        [8] "frequency_domain_signals_body_accelerometer_jerk_signals_standard_deviation_z_direction"        
        [9] "frequency_domain_signals_body_accelerometer_mean_value_x_direction"                             
        [10] "frequency_domain_signals_body_accelerometer_mean_value_y_direction"                             
        [11] "frequency_domain_signals_body_accelerometer_mean_value_z_direction"                             
        [12] "frequency_domain_signals_body_accelerometer_standard_deviation_x_direction"                     
        [13] "frequency_domain_signals_body_accelerometer_standard_deviation_y_direction"                     
        [14] "frequency_domain_signals_body_accelerometer_standard_deviation_z_direction"                     
        [15] "frequency_domain_signals_body_body_accelerometer_jerk_signals_euclidean_norm_mean_value"        
        [16] "frequency_domain_signals_body_body_accelerometer_jerk_signals_euclidean_norm_standard_deviation"
        [17] "frequency_domain_signals_body_body_gyroscope_euclidean_norm_mean_value"                         
        [18] "frequency_domain_signals_body_body_gyroscope_euclidean_norm_standard_deviation"                 
        [19] "frequency_domain_signals_body_body_gyroscope_jerk_signals_euclidean_norm_mean_value"            
        [20] "frequency_domain_signals_body_body_gyroscope_jerk_signals_euclidean_norm_standard_deviation"    
        [21] "frequency_domain_signals_body_gyroscope_mean_value_x_direction"                                 
        [22] "frequency_domain_signals_body_gyroscope_mean_value_y_direction"                                 
        [23] "frequency_domain_signals_body_gyroscope_mean_value_z_direction"                                 
        [24] "frequency_domain_signals_body_gyroscope_standard_deviation_x_direction"                         
        [25] "frequency_domain_signals_body_gyroscope_standard_deviation_y_direction"                         
        [26] "frequency_domain_signals_body_gyroscope_standard_deviation_z_direction"                         
        [27] "time_body_accelerometer_euclidean_norm_mean_value"                                              
        [28] "time_body_accelerometer_euclidean_norm_standard_deviation"                                      
        [29] "time_body_accelerometer_jerk_signals_euclidean_norm_mean_value"                                 
        [30] "time_body_accelerometer_jerk_signals_euclidean_norm_standard_deviation"                         
        [31] "time_body_accelerometer_jerk_signals_mean_value_x_direction"                                    
        [32] "time_body_accelerometer_jerk_signals_mean_value_y_direction"                                    
        [33] "time_body_accelerometer_jerk_signals_mean_value_z_direction"                                    
        [34] "time_body_accelerometer_jerk_signals_standard_deviation_x_direction"                            
        [35] "time_body_accelerometer_jerk_signals_standard_deviation_y_direction"                            
        [36] "time_body_accelerometer_jerk_signals_standard_deviation_z_direction"                            
        [37] "time_body_accelerometer_mean_value_x_direction"                                                 
        [38] "time_body_accelerometer_mean_value_y_direction"                                                 
        [39] "time_body_accelerometer_mean_value_z_direction"                                                 
        [40] "time_body_accelerometer_standard_deviation_x_direction"                                         
        [41] "time_body_accelerometer_standard_deviation_y_direction"                                         
        [42] "time_body_accelerometer_standard_deviation_z_direction"                                         
        [43] "time_body_gyroscope_euclidean_norm_mean_value"                                                  
        [44] "time_body_gyroscope_euclidean_norm_standard_deviation"                                          
        [45] "time_body_gyroscope_jerk_signals_euclidean_norm_mean_value"                                     
        [46] "time_body_gyroscope_jerk_signals_euclidean_norm_standard_deviation"                             
        [47] "time_body_gyroscope_jerk_signals_mean_value_x_direction"                                        
        [48] "time_body_gyroscope_jerk_signals_mean_value_y_direction"                                        
        [49] "time_body_gyroscope_jerk_signals_mean_value_z_direction"                                        
        [50] "time_body_gyroscope_jerk_signals_standard_deviation_x_direction"                                
        [51] "time_body_gyroscope_jerk_signals_standard_deviation_y_direction"                                
        [52] "time_body_gyroscope_jerk_signals_standard_deviation_z_direction"                                
        [53] "time_body_gyroscope_mean_value_x_direction"                                                     
        [54] "time_body_gyroscope_mean_value_y_direction"                                                     
        [55] "time_body_gyroscope_mean_value_z_direction"                                                     
        [56] "time_body_gyroscope_standard_deviation_x_direction"                                             
        [57] "time_body_gyroscope_standard_deviation_y_direction"                                             
        [58] "time_body_gyroscope_standard_deviation_z_direction"                                             
        [59] "time_gravity_accelerometer_euclidean_norm_mean_value"                                           
        [60] "time_gravity_accelerometer_euclidean_norm_standard_deviation"                                   
        [61] "time_gravity_accelerometer_mean_value_x_direction"                                              
        [62] "time_gravity_accelerometer_mean_value_y_direction"                                              
        [63] "time_gravity_accelerometer_mean_value_z_direction"                                              
        [64] "time_gravity_accelerometer_standard_deviation_x_direction"                                      
        [65] "time_gravity_accelerometer_standard_deviation_y_direction"                                      
        [66] "time_gravity_accelerometer_standard_deviation_z_direction"
+ **average** : 
        Observations average as calculated by the *run_analysis.R* file. Numeric values.
