install.packages("leaflet")


# Load required libraries
library(leaflet)

# Create a basic map with multiple basemaps
webgis_map <- leaflet() %>%
  
  # Set default view
  setView(lng = 0, lat = 0, zoom = 2) %>%
  
  # Add basemap options
  addProviderTiles(providers$Esri.WorldImagery, group = "Esri Satellite") %>%
  addProviderTiles(providers$CartoDB.Positron, group = "CartoDB Positron") %>%
  addProviderTiles(providers$Stamen.Terrain, group = "Stamen Terrain") %>%
  
  # Add layers control to switch basemaps
  addLayersControl(
    baseGroups = c("Esri Satellite", 
                   "CartoDB Positron", 
                   "Stamen Terrain"),
    
    options = layersControlOptions(
      collapsed = TRUE) # Collapsed by default
  )

# Display the map
webgis_map
