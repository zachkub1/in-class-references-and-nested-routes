Rails.application.routes.draw do
  # Phases 3 and 4: add your nested routes in YOUR section only.
  # Staying inside your own section keeps merge conflicts small.
  # Check your work with:  bin/rails routes | grep <resource>


  # ---------- Pair A: Festival -> Stage ----------
  resources :festivals do
    resources :stages
  end



  # ---------- Pair B: Artist -> Track (use shallow nesting) ----------



  # ---------- Pair C: Attendee -> Ticket (and Festival -> Ticket) ----------



  # ---------- Integrator: Stage / Artist -> Performance ----------



end
