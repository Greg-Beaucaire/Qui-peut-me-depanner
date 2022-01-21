-- Si un demandeur veut vérifier le statut de sa réservation, on peut faire cette requête (pour l'utilisateur ayant l'id 1):
SELECT statut
	FROM public.reservation
	WHERE id_demandeur = 1;

-- Si on veut vérifier la ville dans laquelle agit un aidant (avec l'id 1), on peut faire cette requête:
SELECT ville
    FROM public.zone_geo
    INNER JOIN public.agissant ON (public.agissant.id_zone_geo = public.zone_geo.id_zone_geo)
    WHERE id_aidant = 1;

-- Si on veut vérifier les compétences liées à un aidant (avec l'id 1), on peut faire cette requête:
SELECT nom
    FROM public.competences
    INNER JOIN public.pouvant_faire ON (public.pouvant_faire.id_comp = public.competences.id_comp)
    WHERE id_aidant = 1;

-- Une requête pour vérifier si un aidant est disponible pour une date donnée:
SELECT nom, email, prenom
    FROM public.aidants
	INNER JOIN public.dispo ON (public.dispo.id_aidant = public.aidants.id_aidant)
	    WHERE public.dispo.jour_debut <= '2022-01-23';