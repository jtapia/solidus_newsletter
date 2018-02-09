module Spree
  class NewslettersController < StoreController
    def create
      @newsletter = Spree::Newsletter.find_or_initialize_by(newsletter_params)

      if @newsletter.persisted?
        flash[:notice] = Spree.t(:'newsletter.controller.already_subscribed')
      else
        if @newsletter.save
          flash[:success] = Spree.t(:'newsletter.controller.success')
        else
          flash[:error] = Spree.t(:'newsletter.controller.error')
        end
      end

      redirect_to root_path
    end

    private

    def newsletter_params
      params.require(:newsletters).permit(:name, :email)
    end
  end
end