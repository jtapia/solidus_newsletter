module Spree
  module Admin
    class NewslettersController < Spree::Admin::BaseController
      def update
        SolidusNewsletter::Config[:title] = newsletter_params[:title]
        SolidusNewsletter::Config[:text] = newsletter_params[:text]

        if (title == newsletter_params[:title] && text == newsletter_params[:text]) &&
            (newsletter_params[:title].present? && newsletter_params[:text])
          flash[:success] = Spree.t(:'newsletter.admin.success')
        else
          flash[:error] = Spree.t(:'newsletter.admin.error')
        end

        redirect_to admin_newsletters_edit_path
      end

      private

      def title
        SolidusNewsletter::Config[:title]
      end

      def text
        SolidusNewsletter::Config[:text]
      end

      def newsletter_params
        params.require(:newsletters).permit(:title, :text)
      end
    end
  end
end