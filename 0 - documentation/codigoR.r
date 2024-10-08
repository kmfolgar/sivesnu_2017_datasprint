# Load necessary library
library(dplyr)

# Assuming df is your dataset
df <- df %>%
  # Create dds_1
  mutate(dds_1 = if_else(alim_grano == "01-Si" | alim_tuberculo == "01-Si", 1, 0)) %>%
  
  # Create dds_2
  mutate(dds_2 = if_else(alim_leguminosa == "01-Si" | alim_nuez == "01-Si", 1, 0)) %>%
  
  # Create dds_3
  mutate(dds_3 = if_else(alim_prod_lacteo == "01-Si", 1, 0)) %>%
  
  # Create dds_4
  mutate(dds_4 = if_else(alim_viscera == "01-Si", 1, 0)) %>%
  
  # Create dds_5
  mutate(dds_5 = if_else(alim_huevo == "01-Si", 1, 0)) %>%
  
  # Create dds_6
  mutate(dds_6 = if_else(alim_carne == "01-Si", 1, 0)) %>%
  
  # Create dds_7
  mutate(dds_7 = if_else(alim_fruta_anaranjada == "01-Si", 1, 0)) %>%
  
  # Create dds_8
  mutate(dds_8 = if_else(alim_verdura_amarilla == "01-Si", 1, 0)) %>%
  
  # Create dds_9
  mutate(dds_9 = if_else(alim_otra_v == "01-Si" | alim_otra_f == "01-Si", 1, 0)) %>%
  
  # Create dds_child by summing all dds_ variables
  mutate(dds_child = dds_1 + dds_2 + dds_3 + dds_4 + dds_5 + dds_6 + dds_7 + dds_8 + dds_9)