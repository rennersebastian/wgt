class DashboardController < ApplicationController
	def index
		@user = current_user
		@wgss = Wg.all
		@users = User.all
		@wg = current_user.wg
		if current_user.wg_id != nil
			@tasks = Task.try(:where, {wg_id: @wg.id})
			@items = Item.try(:where, {wg_id: @wg.id})
		end
	end
end