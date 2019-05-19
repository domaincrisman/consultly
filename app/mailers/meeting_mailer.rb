class MeetingMailer < ApplicationMailer
	helper :application

	default from: "notification@consultly.com"

	def meeting_scheduled
		@meeting = params[:meeting]
		@user = params[:user]

		mail(to: @user.email, subject: "New Session Confirmation")
	end
end
