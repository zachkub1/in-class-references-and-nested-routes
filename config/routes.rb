Rails.application.routes.draw do
  # Phases 3 and 4: add your nested routes in YOUR section only.
  # Staying inside your own section keeps merge conflicts small.
  # Check your work with:  bin/rails routes | grep <resource>


  # ---------- Pair A: Festival -> Stage ----------



  # ---------- Pair B: Artist -> Track (use shallow nesting) ----------



  # ---------- Pair C: Attendee -> Ticket (and Festival -> Ticket) ----------
  resources :attendees do
    resources :tickets
  end

  resources :festivals, only: [] do
    resources :tickets
  end



  # ---------- Integrator: Stage / Artist -> Performance ----------



end
