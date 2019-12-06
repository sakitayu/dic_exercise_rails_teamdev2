class TeamMailer < ApplicationMailer
  default from: 'from@example.com'

  def team_mail(team)
    @team = team
    @user = User.find(@team.owner_id)
    @email = @user.email

    mail to: @email, subject: "チームリーダー変更の確認メール"
  end
end
