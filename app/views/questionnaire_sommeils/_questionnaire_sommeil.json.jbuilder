json.extract! questionnaire_sommeil, :id, :email, :telephone, :adresse, :pere, :mere, :enfant, :poids, :freres_soeurs, :rituel, :duree_rituel, :lieu_nuit, :objectif, :produit_id, :niveau_activite, :intensite_reaction, :created_at, :updated_at
json.url questionnaire_sommeil_url(questionnaire_sommeil, format: :json)
