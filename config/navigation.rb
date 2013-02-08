SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'           # sets selected tab/pill to .active class that Bootstrap uses
  navigation.active_leaf_class = 'active-leaf'   # optional: an extra class simplnav applies changed for clarity
  navigation.items do |primary|
    primary.dom_class = 'nav nav-tab'            # sets the containing ul class="nav nav tab" for Bootstrap
    primary.dom_id = 'nav-tabs'                  # optional: id set to "", this changed for clarity
    primary.item :home, 'Home', '/'
    primary.item :about, 'About', '/about'
    primary.item :grid, 'Grid', '/grid'
    primary.item :nested_menu, 'Nested Menu', '/nested_menu'
  end
  
end


