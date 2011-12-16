class SpreeEnableDeletedProductHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_after :admin_products_index_row_actions, 'admin/products/enable_product_row_action'
end