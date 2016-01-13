class AttachmentsController < ApplicationController
  def destroy
    @attachment = Attachment.find(params[:id])
    @attachment.destroy
    redirect_to about_path
  end
end
