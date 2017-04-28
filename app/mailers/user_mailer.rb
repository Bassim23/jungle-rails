class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def receipt_email(order)
    @order = order
    @total = "$#{(@order.total_cents.to_f / 100).round(2).to_s}"
    mail(
      to: @order.email,
      subject: "JUNGLE ORDER CONFIRMATION - #{@order.id}")
  end
end