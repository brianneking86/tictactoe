Rails.application.routes.draw do
	post 'contact', to: 'contacts#process_form'
	root to: 'visitors#new'
end