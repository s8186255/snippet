#以json格式和html格式响应客户端的需求；
respond_to do |format|
  format.json { render json: proposal_product_quantity }
  format.html { render json: @product.to_json(only: [:name, :desc]) }
  #format.json { render json: @product.errors, status: :unprocessable_entity }
end

