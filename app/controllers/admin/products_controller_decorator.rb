class Admin::ProductsController < Admin::ResourceController
  def enable
    @product = Product.find_by_permalink(params[:id])
    @product.deleted_at = nil

    @product.variants.each do |v|
      v.deleted_at = nil
      v.save
    end

    if @product.save
      flash.notice = I18n.t("notice_messages.product_enabled")
    else
      flash.notice = I18n.t("notice_messages.product_not_enabled")
    end

    respond_with(@product) do |format|
      format.html { redirect_to admin_products_url }
    end    
  end
end