class ParticipateController < ApplicationController
  def index
  end

  def show
    return if not admin_check
	  @task_id = params[:task_id]
	  @pending_users = Participate.get_pending_users(@task_id)
	  @permitted_users = Participate.get_permitted_users(@task_id)
  end

  def new
    @duplicate = Participate.find_by(submit_user_id: current_user.user_id, task_id: params[:task_id])
    if not @duplicate
      is_joined = Participate.join(current_user, params[:task_id])
      if is_joined
        msg = 'Successfully joined.'
      else
        msg = 'Something went wrong! Please try again.'
      end
    end
    redirect_to :controller => 'task', :action => 'index'
  end

  def update
    return if not admin_check
    if Participate.update_user_state(params[:task_id], params[:user_id], params[:user_state])
	  flash[:notice] = "Successfully updated!"      
    else
	  flash[:notice] = "Something's wrong! Please try again."      	
    end
	redirect_to :action => 'show', :task_id => params[:task_id]
  end

end


