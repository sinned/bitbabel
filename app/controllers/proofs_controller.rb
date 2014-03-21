class ProofsController < ApplicationController
  def create
    @walletmap = WalletMap.find(params[:post_id])
    @proof = @walletmap.proofs.create(params[:comment].permit(:commenter, :body))
    redirect_to walletmap_path(@post)
  end  
end
