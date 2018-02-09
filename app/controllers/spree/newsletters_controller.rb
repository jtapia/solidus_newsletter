module Spree
  class NewslettersController < StoreController
    def create
      @newsletter = Spree::Newsletter.new(newsletter_params)

      if @newsletter.save
        flash[:success] = Spree.t(:'newsletter.controller.success')
      else
        flash[:error] = Spree.t(:'newsletter.controller.error')
      end

      redirect_to root_path
    end

    private

    def newsletter_params
      params.require(:newsletters).permit(:name, :email)
    end
  end
end