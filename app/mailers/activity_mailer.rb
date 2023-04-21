class ActivityMailer < ApplicationMailer
  def welcome
    @name = params[:name]
    mail to: params[:to], subject: '新しいメンバーが加入しました🎉'
  end
end
