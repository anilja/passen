class StopsController < ApplicationController
	before_action :set_busform

	def create
		@stop = @busform.stops.create(stop_params)
		redirect_to @busform
	end

	def destroy
		@stop = @busform.stops.find(params[:id])
		if @stop.destroy
			flash[:success] = "Stop was deleted."
		else
		    flash[:error] = "Unable to delete stop."
		end
		redirect_to @busform
	end

	private

	def set_busform
		@busform = Busform.find(params[:busform_id])
	end

	def set_stop
		@stop = @busform.stops.find(params[:id])
	end


	def stop_params
		params[:stop].permit(:content)
	end
end
