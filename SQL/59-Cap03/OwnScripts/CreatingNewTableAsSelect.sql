Create Table cap03.TB_DADOS2
As
Select
	idade
    ,menopausa
    ,inv_nodes
	,deg_malig
    ,Case 
		When seio = 'left' Then 'E'
        When seio = 'right' Then 'D'
	End as seio
    
	,Case
		When tamanho_tumor = '0-4' Or tamanho_tumor = '5-9' Then '0-9'
        When tamanho_tumor = '10-14' Or tamanho_tumor = '15-19' Then '10-19'
        When tamanho_tumor = '20-24' Or tamanho_tumor = '25-29' Then '20-29'
        When tamanho_tumor = '30-34' Or tamanho_tumor = '35-39' Then '30-39'
        When tamanho_tumor = '40-44' Or tamanho_tumor = '45-49' Then '40-49'
        When tamanho_tumor = '50-54' Then '50-54'
	End as tamanho_tumor
    
	,Case 
		When quadrante = 'left_low' Then 1
        When quadrante = 'right_low' Then 2
        When quadrante = 'left_up' Then 3
        When quadrante = 'right_up' Then 4
        When quadrante = 'central' Then 5
		Else 0
	End as quadrante
    
	,Case
		When irradiando = 'yes' Then 1
		When irradiando = 'no' Then 0
	End as irradiando
    
	,Case
		When classe = 'no-recurrence-events' Then 0
		When classe = 'recurrence-events' Then 1
	End as classe
	,Case 
		When node_caps = 'yes' Then 1
        When node_caps = 'no' Then 0
        Else 'no-info'
	End as node_caps
    
From cap03.TB_DADOS;