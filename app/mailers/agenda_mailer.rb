class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_mail(agenda)
    @agenda = agenda
    assign_users = Assign.where(team_id: @agenda.team.id)
    @email = []

    assign_users.each do |user|
      @user = User.find(user.user_id)
      @email << @user.email
    end

    mail to: @email, subject: "アジェンダ削除の確認メール"
  end
end
