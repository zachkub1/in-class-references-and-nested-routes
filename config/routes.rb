Rails.application.routes.draw do
  # Phases 3 and 4: add your nested routes in YOUR section only.
  # Staying inside your own section keeps merge conflicts small.
  # Check your work with:  bin/rails routes | grep <resource>


  # ---------- Pair A: Festival -> Stage ----------
  resources :festivals do
    resources :stages
  end



  # ---------- Pair B: Artist -> Track (use shallow nesting) ----------
  resources :artists do
    resources :tracks, shallow: true
  end



  # ---------- Pair C: Attendee -> Ticket (and Festival -> Ticket) ----------
  resources :attendees do
    resources :tickets
  end

  resources :festivals, only: [] do
    resources :tickets
  end



  # ---------- Integrator: Stage / Artist -> Performance ----------
  resources :stages, only: [] do
    resources :performances
  end

  resources :artists, only: [] do
    resources :performances
  end



end
