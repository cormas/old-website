<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® NonCommercial, Release 7 of June 14, 2002 on August 4, 2004 at 10:54:39 am</time-stamp>


<name-space>
<name>PhytoBv</name>
<environment>CormasNS.Models</environment>
<private>false</private>
<imports>
			private Smalltalk.*
			private CormasNS.Kernel.*
			</imports>
<category>PhytoBvCategory</category>
</name-space>


<class>
<name>Bois</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.SpatialEntityAggregate</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.Bois</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Bois class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Bois</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>


<class>
<name>AggregateUC</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.SpatialEntityAggregate</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.AggregateUC</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.AggregateUC class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.AggregateUC</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>


<class>
<name>Groupement</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.Agent</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>structuration nom </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.Groupement</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Groupement class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Groupement</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Groupement</class-id> <category>accessing</category>

<body>nom
	"Getter accessor without default value "
	^nom</body>

<body>nom: anObject 
	nom := anObject</body>

<body>structuration
	"Getter accessor without default value "
	^structuration</body>

<body>structuration: anObject 
	structuration := anObject</body>
</methods>


<class>
<name>UniteHydro</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.SpatialEntityAggregate</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>nom </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.UniteHydro</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.UniteHydro class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.UniteHydro</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.UniteHydro</class-id> <category>accessing</category>

<body>nom
	"Getter accessor without default value "
	^nom</body>

<body>nom: anObject 
	nom := anObject</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.UniteHydro</class-id> <category>pov</category>

<body>pov
| i |
	self id notNil
		ifTrue: 
			[i := self id \\ ColorValue constantNames size.
			i = 0 ifTrue: [i := 5].
			^ColorValue constantNames at: i]
		ifFalse: [^ColorValue white]</body>
</methods>


<class>
<name>UniteContrainte</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.SpatialEntityNotConnex</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>nom </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.UniteContrainte</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.UniteContrainte class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.UniteContrainte</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.UniteContrainte</class-id> <category>accessing</category>

<body>nom
	"Getter accessor without default value "
	^nom</body>

<body>nom: anObject 
	nom := anObject</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.UniteContrainte</class-id> <category>pov</category>

<body>pov
| i |
	self id notNil
		ifTrue: 
			[i := self id \\ ColorValue constantNames size.
			i = 0 ifTrue: [i := 5].
			^ColorValue constantNames at: i]
		ifFalse: [^ColorValue white]</body>
</methods>


<class>
<name>Cell</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.SpatialEntityElement</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>idParcelle idUniteContrainte idBassinVersant distanceCoursEau </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.Cell</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Cell class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Cell class</class-id> <category>parameters</category>

<body>resolution
	"en mètres, dimension d'une cellule"

	^25</body>

<body>surface
	"en Ha"

	^(self resolution * self resolution / 10000) asFloat</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Cell</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Cell</class-id> <category>accessing</category>

<body>distanceCoursEau
	"Getter accessor without default value "
	^distanceCoursEau</body>

<body>distanceCoursEau: anObject 
	distanceCoursEau := anObject</body>

<body>idBassinVersant
	"Getter accessor without default value "
	^idBassinVersant</body>

<body>idBassinVersant: anObject 
	idBassinVersant := anObject</body>

<body>idParcelle
	"Getter accessor without default value "
	^idParcelle</body>

<body>idParcelle: anObject 
	idParcelle := anObject</body>

<body>idUniteContrainte
	"Getter accessor without default value "
	^idUniteContrainte</body>

<body>idUniteContrainte: anObject 
	idUniteContrainte := anObject</body>

<body>parcelle
	^self theCSE at: #Parcelle</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Cell</class-id> <category>pov</category>

<body>povBV
	self idBassinVersant isNil
		ifTrue: [^ColorValue gray]
		ifFalse: [^self idBassinVersant asSymbol]</body>

<body>povDistanceCoursEau
	self distanceCoursEau = 50
		ifTrue: [^ColorValue red]</body>

<body>povIlot
	self parcelle idIlot = 94
		ifTrue: [^ColorValue red]</body>

<body>povTest
	self idParcelle = 450
		ifTrue: [^ColorValue red].</body>
</methods>


<class>
<name>Ilot</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.SpatialEntityNotConnex</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>idExploitation faireValoir distributionOrientation orientation orientationChoisie distributionSystemeCulture systemeCulture contrainte BP typeInnovation sau rapportUr cont vocation </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.Ilot</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Ilot class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Ilot</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Ilot</class-id> <category>accessing</category>

<body>BP
	"Getter accessor with false as default value "

	BP ifNil: [BP := false].
	^BP</body>

<body>BP: anObject 
	BP := anObject.
	self
		defineVisualState;
		show</body>

<body>cont
	"Getter accessor without default value "
	^cont</body>

<body>cont: anObject 
	cont := anObject</body>

<body>contrainte
	"Getter accessor without default value "
	^contrainte</body>

<body>contrainte: anObject 
	contrainte := anObject.
	self
		defineVisualState;
		show</body>

<body>distributionOrientation
	"Getter accessor without default value "
	^distributionOrientation</body>

<body>distributionOrientation: anObject 
	distributionOrientation := anObject</body>

<body>distributionSystemeCulture
	"Getter accessor without default value "
	^distributionSystemeCulture</body>

<body>distributionSystemeCulture: anObject 
	distributionSystemeCulture := anObject</body>

<body>exploitant
	^self exploitation exploitant</body>

<body>exploitation
	^self theCSE at: #Exploitation</body>

<body>faireValoir
	"Getter accessor without default value "
	^faireValoir</body>

<body>faireValoir: anObject 
	faireValoir := anObject</body>

<body>idExploitation
	"Getter accessor without default value "
	^idExploitation</body>

<body>idExploitation: anObject 
	idExploitation := anObject</body>

<body>orientation
	"Getter accessor without default value "
	^orientation</body>

<body>orientation: anObject 
	| valeur valeurs |
	valeurs := #(#ananas #banane #elevageHS #friche #fruits #MV #prairie).
	valeur := anObject.
	(valeur isKindOf: Number) 
		ifTrue: 
			[(valeur between: 1 and: valeurs size) 
				ifTrue: [valeur := valeurs at: valeur]
				ifFalse: [self halt]]
		ifFalse: [(valeurs includes: valeur) ifFalse: [self halt]].
	orientation := valeur.
	self
		defineVisualState;
		show</body>

<body>orientationChoisie
	^orientationChoisie</body>

<body>orientationChoisie: anObject 
	orientationChoisie := anObject.
	self
		defineVisualState;
		show</body>

<body>rapportUr
	"Getter accessor without default value "
	^rapportUr</body>

<body>rapportUr: anObject 
	rapportUr := anObject</body>

<body>sau
	"Getter accessor without default value "
	^sau</body>

<body>sau: anObject 
	sau := anObject.
	self
		defineVisualState;
		show</body>

<body>systemeCulture
	"Getter accessor without default value "
	^systemeCulture</body>

<body>systemeCulture: anObject 
	| valeur valeurs |
	valeurs := #(#traditionnel #jachere #rotation #jachereRotation).
	valeur := anObject.
	(valeur isKindOf: Number)
		ifTrue: [(valeur between: 1 and: valeurs size)
				ifTrue: [valeur := valeurs at: valeur]
				ifFalse: [valeur = 0
						ifTrue: [valeur := nil]
						ifFalse: [self halt]]]
		ifFalse: [(valeurs includes: valeur)
				ifFalse: [self halt]].
	"valeur ~= systemeCulture ifTrue: [self halt]."
	systemeCulture := valeur</body>

<body>typeInnovation
	"Getter accessor without default value "
	^typeInnovation</body>

<body>typeInnovation: anObject 
	typeInnovation := anObject</body>

<body>vocation
	"Getter accessor without default value "
	^vocation</body>

<body>vocation: anObject 
	vocation := anObject</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Ilot</class-id> <category>pov</category>

<body>povBP
	(self BP notNil and: [self BP]) ifTrue: [^ColorValue red].
	^ColorValue white</body>

<body>povContrainte
	contrainte isNil ifTrue: [^ColorValue white].
	(self contrainte = #ContMaxPele or: [self contrainte = #ContMaxCapot]) 
		ifTrue: [^ColorValue red].
	(self contrainte = #ExtensionMR or: [self contrainte = #ExtensionAB]) 
		ifTrue: [^ColorValue blue].
	(self contrainte = #FacileBourgMR or: [self contrainte = #FacileBourgAB]) 
		ifTrue: [^ColorValue yellow].
	(self contrainte = #ProxBourgMR or: [self contrainte = #ProxBourgAB]) 
		ifTrue: [^ColorValue pink].
	self contrainte = #ContFaibles ifTrue: [^ColorValue green]</body>

<body>povId
| i |
	self id notNil
		ifTrue: 
			[i := self id \\ ColorValue constantNames size.
			i = 0 ifTrue: [i := 5].
			^ColorValue constantNames at: i]
		ifFalse: [^ColorValue white]</body>

<body>povOrientation
	orientation isNil ifTrue: [^ColorValue white].
	self orientation = #ananas ifTrue: [^ColorValue pink].
	self orientation = #banane ifTrue: [^ColorValue yellow].
	self orientation = #elevageHS ifTrue: [^ColorValue black].
	self orientation = #friche ifTrue: [^ColorValue green].
	self orientation = #fruits ifTrue: [^ColorValue blue].
	self orientation = #MV ifTrue: [^ColorValue red].
	self orientation = #prairie ifTrue: [^ColorValue gray]</body>

<body>povOrientationChoisie
	orientationChoisie isNil ifTrue: [^ColorValue white].
	self orientationChoisie = #ananas ifTrue: [^ColorValue pink].
	self orientationChoisie = #banane ifTrue: [^ColorValue yellow].
	self orientationChoisie = #elevageHS ifTrue: [^ColorValue black].
	self orientationChoisie = #friche ifTrue: [^ColorValue green].
	self orientationChoisie = #fruits ifTrue: [^ColorValue blue].
	self orientationChoisie = #MV ifTrue: [^ColorValue red].
	self orientationChoisie = #prairie ifTrue: [^ColorValue gray]</body>

<body>povSau
self sau isNil ifTrue: [^ColorValue white].
(self sau &lt; 1)
		ifTrue: [^ColorValue green].
(self sau &gt;= 1 and: [self sau &lt; 5])
		ifTrue: [^ColorValue yellow].
(self sau &gt;= 5 and: [self sau &lt;10])
		ifTrue: [^ColorValue orange].
(self sau &gt;= 10 and: [self sau &lt;20])
		ifTrue: [^ColorValue pink].
(self sau &gt;= 20 and: [self sau &lt;50])
		ifTrue: [^ColorValue red].
(self sau &gt;= 50)
		ifTrue: [^ColorValue black].</body>

<body>povSystCulture
	"^(self systemeCulture isNil) 
		ifTrue: [ColorValue gray]"
systemeCulture isNil ifTrue: [^ColorValue white].
(self systemeCulture = #jachere)
ifTrue: [^ColorValue red].
(self systemeCulture = #jachereRotation)
ifTrue: [^ColorValue green].
(self systemeCulture = #traditionnel)
ifTrue: [^ColorValue blue].
(self systemeCulture = #rotation)
ifTrue: [^ColorValue yellow]</body>

<body>povTest
self idExploitation = 4 ifTrue: [^ColorValue red]</body>

<body>povVocation
	vocation isNil ifTrue: [^ColorValue white].
	self vocation = #ilotPrAnanas ifTrue: [^ColorValue pink].
	self vocation = #ilotPrBanane ifTrue: [^ColorValue yellow].
	self vocation = #ilotPrFruits ifTrue: [^ColorValue blue].
	self vocation = #ilotPrMV ifTrue: [^ColorValue red].
	self vocation = #ilotPrPrairie ifTrue: [^ColorValue gray]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Ilot</class-id> <category>control</category>

<body>step
	self orientationChoisie isNil 
		ifTrue: 
			[self codeOrientation.
			self calculDistributionOrientation.
			self calculOrientation]
		ifFalse: [self orientation: self orientationChoisie].
	self codeSystemeCulture.
	self calculDistributionSystemeCulture.
	self calculSystemeCulture</body>

<body>stepBonnesPratiques
	self calculContrainte.
	self identifiantInnovants.
	self passageInnovantsSuiveurs.
	self suiveursBananeIntegre.
	self suiveursAnanasIntegre.
	self suiveursMVIntegre</body>

<body>stepMesureX
	self calculContrainte.
	self integreSystemeCulture: #jachereRotation orientation: #MV</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Ilot</class-id> <category>calcul</category>

<body>calculCont
	(self contrainte = #ContMaxCapot or: [self contrainte = #ContMaxPele]) 
		ifTrue: [cont := #contMax].
	(self contrainte = #ExtensionMR or: [self contrainte = #ExtensionAB]) 
		ifTrue: [cont := #extension].
	(self contrainte = #ProxBourgMR or: [self contrainte = #ProxBourgAB]) 
		ifTrue: [cont := #proxBourg].
	(self contrainte = #FacileBourgAB 
		or: [self contrainte = #FacileBourgMR or: [self contrainte = #ContFaibles]]) 
			ifTrue: [cont := #facile]</body>

<body>calculContrainte
"On assigne à l'ilot l'unité de contrainte la plus représentative en terme de surface (nb parcelles)." 
"Dans le cas où il y a égalité, on assigne la contrainte la plus forte, sachant que "
"ContMaxPele = ContMaxCapot &gt; extensionAB=ExtensionMR &gt; ProxBourgMR=ProxBourgAB &gt; FacileBourgAB=FacileBourgMR&gt;contFaibles"
"| valeursContraintes contingences highScore winners |
	valeursContraintes := #(#ContMaxPele #ContMaxCapot #ExtensionMR #ExtensionAB #ProxBourgMR #ProxBourgAB #FacileBourgMR #FacileBourgAB #ContFaibles).
	contingences := Dictionary new.
	valeursContraintes do: [:key | contingences at: key put: 0].
	self components do: [:p | contingences at: p contrainte put: (contingences at: p contrainte) + 1].
	highScore := 0.
	winners := OrderedCollection new.
	contingences keysAndValuesDo: [:k :v | (v &gt; 0 and: [v &gt;= highScore]) ifTrue: [highScore := v. winners add: k]].
	winners isEmpty 
		ifTrue: [self halt]
		ifFalse: 
			[winners size &gt; 1 ifTrue: [winners := winners asSortedCollection: [:a :b | (valeursContraintes indexOf: a) &lt; (valeursContraintes indexOf: b)].
			self contrainte: winners first]]"
| contrainte1 contrainte2 contrainte3 contrainte4 contrainte5 contrainte6 contrainte7 contrainte8 contrainte9 c1 c2 c3 c4 c5 c6 c7 c8 c9 |
	contrainte1 := self components select: [:p | p contrainte = #ContMaxPele].
	contrainte2 := self components select: [:p | p contrainte = #ContMaxCapot].
	contrainte3 := self components select: [:p | p contrainte = #ContFaibles].
	contrainte4 := self components select: [:p | p contrainte = #ExtensionMR].
	contrainte5 := self components select: [:p | p contrainte = #ExtensionAB].
	contrainte6 := self components select: [:p | p contrainte = #FacileBourgMR].
	contrainte7 := self components select: [:p | p contrainte = #FacileBourgAB].
	contrainte8 := self components select: [:p | p contrainte = #ProxBourgMR].
	contrainte9 := self components select: [:p | p contrainte = #ProxBourgAB].
	c1 := (contrainte1 size / components size) &gt;= 0.5.
	c2 := (contrainte2 size / components size) &gt;= 0.5.
	c3 := (contrainte3 size / components size) &gt;= 0.5.
	c4 := (contrainte4 size / components size) &gt;= 0.5.
	c5 := (contrainte5 size / components size) &gt;= 0.5.
	c6 := (contrainte6 size / components size) &gt;= 0.5.
	c7 := (contrainte7 size / components size) &gt;= 0.5.
	c8 := (contrainte8 size / components size) &gt;= 0.5.
	c9 := (contrainte9 size / components size) &gt;= 0.5.
	(c1 or: 
			[contrainte1 isEmpty not and: 
					[c1 not and: 
							[c2 not and: 
									[c3 not and: 
											[c4 not 
												and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]) 
		ifTrue: [contrainte := #ContMaxPele].
	(c2 or: 
			[contrainte2 isEmpty not and: 
					[c1 not and: 
							[c2 not and: 
									[c3 not and: 
											[c4 not 
												and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]) 
		ifTrue: [contrainte := #ContMaxCapot].
	(c3) ifTrue: [contrainte := #ContFaibles].
	(c4 or: 
			[contrainte4 isEmpty not and: 
					[contrainte1 isEmpty and: 
							[c1 not and: 
									[c2 not and: 
											[c3 not and: 
													[c4 not 
														and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]]) 
		ifTrue: [contrainte := #ExtensionMR].
	(c5 or: 
			[contrainte5 isEmpty not and: 
					[contrainte1 isEmpty and: 
							[c1 not and: 
									[c2 not and: 
											[c3 not and: 
													[c4 not 
														and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]]) 
		ifTrue: [contrainte := #ExtensionAB].
	(c6 or: 
			[contrainte1 isEmpty and: 
					[contrainte2 isEmpty and: 
							[contrainte4 isEmpty and: 
									[contrainte5 isEmpty and: 
											[contrainte8 isEmpty 
												and: [contrainte9 isEmpty and: [contrainte6 size = contrainte3 size]]]]]]]) 
		ifTrue: [contrainte := #FacileBourgMR].
	(c7 or: 
			[contrainte1 isEmpty and: 
					[contrainte2 isEmpty and: 
							[contrainte4 isEmpty and: 
									[contrainte5 isEmpty and: 
											[contrainte8 isEmpty 
												and: [contrainte9 isEmpty and: [contrainte7 size = contrainte3 size]]]]]]]) 
		ifTrue: [contrainte := #FacileBourgAB].
	(c8 or: 
			[contrainte8 isEmpty not and: 
					[contrainte2 isEmpty and: 
							[contrainte4 isEmpty and: 
									[c1 not and: 
											[c2 not and: 
													[c3 not and: 
															[c4 not 
																and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]]]) 
		ifTrue: [contrainte := #ProxBourgMR].
	(c9 or: 
			[contrainte9 isEmpty not and: 
					[contrainte2 isEmpty and: 
							[contrainte5 isEmpty and: 
									[c1 not and: 
											[c2 not and: 
													[c3 not and: 
															[c4 not 
																and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]]]) 
		ifTrue: [contrainte := #ProxBourgAB]</body>

<body>calculDistributionOrientation
	self distributionOrientation: self codeOrientation</body>

<body>calculDistributionSystemeCulture
	self distributionSystemeCulture: self codeSystemeCulture</body>

<body>calculOrientation

	| distribution randomValue distributionOrdonnee indices distributionCumulee total |
	distribution := self perform: self distributionOrientation.
	distributionOrdonnee := distribution asSortedCollection 
				reject: [:x | x isZero].
	indices := OrderedCollection new.
	distributionCumulee := OrderedCollection new.
	total := 0.
	distributionOrdonnee do: 
			[:x | 
			indices add: (distribution indexOf: x).
			total := total + x.
			distributionCumulee add: total].
	randomValue := Cormas random * 100.
	indices with: distributionCumulee
		do: [:i :x | randomValue &lt; x ifTrue: [^self orientation: i]]</body>

<body>calculSystemeCulture
	| distribution randomValue distributionOrdonnee indices distributionCumulee total |
	distribution := self perform: self distributionSystemeCulture.
	distributionOrdonnee := distribution asSortedCollection 
				reject: [:x | x isZero].
	indices := OrderedCollection new.
	distributionCumulee := OrderedCollection new.
	total := 0.
	distributionOrdonnee do: 
			[:x | 
			indices add: (distribution indexOf: x).
			total := total + x.
			distributionCumulee add: total].
	randomValue := Cormas random * 100.
	indices with: distributionCumulee
		do: [:i :x | randomValue &lt; x ifTrue: [^self systemeCulture: i]]</body>

<body>calculVocation
	| c1 c2 c3 c4 c5 |
	c1 := self cont = #proxBourg and: [self sau &gt;= 15].
	c2 := self cont = #extension and: [self sau &gt;= 15].
	c3 := self cont = #proxBourg and: [self sau &lt; 10].
	c4 := self cont = #extension and: [self sau &lt; 15].
	c5 := self cont = #facile and: [self sau &lt; 7].
	(c1 or: [c2]) ifTrue: [vocation := #ilotPrPrairie].
	(self cont = #contMax or: [c3 or: [c4 or: [c5]]]) 
		ifTrue: [vocation := #ilotPrMV].
	(self cont = #proxBourg and: [self sau &gt;= 10 and: [self sau &lt; 15]]) 
		ifTrue: [vocation := #ilotPrAnanas].
	(self cont = #facile and: [self sau &gt;= 10]) 
		ifTrue: [vocation := #ilotPrBanane].
	(self cont = #facile and: [self sau &lt; 10 and: [self sau &gt;= 7]]) 
		ifTrue: [vocation := #ilotPrFruits]</body>

<body>codeOrientation
	| c1 c2 c3 c4 c5 |
	c1 := self exploitation fonctionnementSpatial = #eleveur.
	c2 := self exploitation fonctionnementSpatial = #jardinier.
	c3 := self exploitation fonctionnementSpatial = #proprietaireTerrien.
	c4 := c1 not and: [c2 not and: [c3 not]].
	c5 := self contrainte = #ContMaxPele 
				or: [self contrainte = #ExtensionAB or: [self contrainte = #ExtensionMR]].
	c1 ifTrue: [^#d3].
	c2 ifTrue: [^#d64].
	c3 ifTrue: [^#d47].
	(c4 and: [c5]) ifTrue: [^#d647].
	(c4 and: 
			[c5 not 
				and: [self exploitation fonctionnementSpatial = #exploitantSansTerre]]) 
		ifTrue: [^#d164].
	(c4 
		and: [c5 not and: [self exploitation fonctionnementSpatial = #conjoncturel]]) 
			ifTrue: [^#d614].
	(c4 and: 
			[c5 not and: 
					[self exploitation fonctionnementSpatial = #grandeExploitationStable 
						and: [self components size &lt; 20]]]) 
		ifTrue: [^#d1625].
	(c4 and: 
			[c5 not and: 
					[self exploitation fonctionnementSpatial = #grandeExploitationStable 
						and: [self components size &gt;= 20]]]) 
		ifTrue: [^#d2]</body>

<body>codeSystemeCulture
	self orientation = #ananas ifTrue: [^#d124].
	self orientation = #banane ifTrue: [^#d34].
	(self orientation = #elevageHS or: 
			[self orientation = #friche
				or: [self orientation = #fruits or: [self orientation = #prairie]]]) 
		ifTrue: [^#d1].
	self orientation = #MV ifTrue: [^#d142].
self halt</body>

<body>coeffChangement
"facteur de pondération entre 0 et 0.4"
	(self contrainte = #ProxBourgAB or: 
			[self contrainte = #ProxBourMR or: 
					[self contrainte = #FacileBourgAB 
						or: [self contrainte = #FacileBourgMR]]]) 
		ifTrue: [^0.4].
	self contrainte = #ContFaibles ifTrue: [^0.2].
	(self contrainte = #ExtensionAB 
		or: [self contrainte = #ExtensionMR]) ifTrue: [^0.1].
	^0</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Ilot</class-id> <category>caracteristiques spatiales</category>

<body>calculRapportUr
	| c1 c2 c3 c4 c5 c6 |
	c1 := self orientation = #ananas and: [self sau &gt;= 5].
	c2 := self orientation = #banane and: [self sau &gt;= 5].
	c3 := self orientation = #fruits and: [self sau &gt;= 3.5].
	c4 := self orientation = #MV and: [self sau &gt;= 3].
	c5 := self orientation = #prairie and: [self sau &gt;= 7.5].
	c6 := self orientation = #elevageHS and: [self sau &gt;= 0.5].
	(c1 or: [c2 or: [c3 or: [c4 or: [c5 or: [c6]]]]]) 
		ifTrue: [self rapportUr: #supUr]
		ifFalse: [self rapportUr: #moinsUr]</body>

<body>calculSau
	sau := (self components inject: 0 into: [:sum :parcelle | sum + parcelle components size]) * Cell surface</body>

<body>distanceTo: unIlot 
"plus petite distance entre 1 composant de l'un et 1 composant de l'autre"
| distanceMin distance |
	distanceMin := 999.
	self components do: 
			[:c1 | 
			unIlot components do: 
					[:c2 | 
					distance := c1 distSurroundAggregate: c2.
					distance &lt;= distanceMin ifTrue: [distanceMin := distance]]].
	^distanceMin</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Ilot</class-id> <category>distribution d'orientation</category>

<body>d1625
^#(62 8 0 0 7 23 0)</body>

<body>d164
^#(67 0 0 13 0 20 0)</body>

<body>d2
^#(0 100 0 0 0 0 0)</body>

<body>d3
^#(0 0 100 0 0 0 0)</body>

<body>d47
^#(0 0 0 60 0 0 40)</body>

<body>d614
^#(31 0 0 0 0 69 0)</body>

<body>d64
^#(0 0 0 27 0 73 0)</body>

<body>d647
^#(0 0 0 16 0 76 8)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Ilot</class-id> <category>distribution systemes</category>

<body>d1
^#(100 0 0 0)</body>

<body>d124
^#(40 40 0 20)</body>

<body>d142
^#(48 20 0 32)</body>

<body>d34
^#(0 0 67 33)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Ilot</class-id> <category>diffusionPratiques</category>

<body>identifiantInnovants
"on définit trois type d'ilots innovants et un type d'ilots suiveurs"
	| cContrainte1 cContrainte2 c1 c2 c3 |
	cContrainte1 := self contrainte ~= #contMaxPele 
				and: [self contrainte ~= #contMaxCapot].
	cContrainte2 := cContrainte1 
				and: [self contrainte ~= #extensionAB and: [self contrainte ~= #extensionMR]].
	c1 := self exploitant resGpt = #banane and: 
					[cContrainte2 and: 
							[self exploitation sau &gt; 3 
								and: [self exploitation pressionSpatiale = #moins]]].
	c2 := self exploitant resGpt = #socomor and: 
					[cContrainte2 and: 
							[self exploitation fonctionnementSpatial = #grandeExploitationStable and: 
									[self exploitation sau &gt; 0.8 
										and: [self exploitation pressionSpatiale = #moins]]]].
	c3 := self exploitant resGpt = #MV and: 
					[self exploitation sau &gt; 1 and: 
							[self exploitation fonctionnementSpatial = #conjoncturel 
								and: [self exploitation pressionSpatiale = #moins]]].
	c1 ifTrue: [self typeInnovation: #innovantBanane].
	c2 ifTrue: [self typeInnovation: #innovantAnanas].
	c3 ifTrue: [self typeInnovation: #innovantMV].
(c1 not and: [c2 not and: [c3 not]]) ifTrue: [self typeInnovation: #suiveur].</body>

<body>integreSystemeCulture: nouveauSystemeCulture orientation: nouvelleOrientation
	"l'exploitant accepte la mesure qui consiste à changer de système de culture et de rotation culturale, selon une probabilité variable en fonction: 
- dutype de fonctionnement spatial de l'exploitation
- de l'implicationRéseau de l'exploitant
- de la localisation de l'îlot"

	| probaChangement |
probaChangement := 0.5 * (self exploitant coeffChangement + self exploitation coeffChangement + self coeffChangement).
(probaChangement between: 0 and: 1) ifFalse: [self halt].
	Cormas random &lt; probaChangement 
		ifTrue: 
			[self systemeCulture: nouveauSystemeCulture. self orientationChoisie: nouvelleOrientation]</body>

<body>passageInnovantsSuiveurs
"on définit la probabilité de mise en place des Bonnes Pratiques des ilots innovants. 
On lance les méthodes relatives aux suiveurs une fois seulement terminée la mise en place des bonnes prtaiques chez les innovants (faudrait ici scpécifier qu'une fois en BP #true, ne calcule plus sa probaChangement, reste #true)"
	| probaChangement c1 c2 c3 |
	self typeInnovation = #innovantBanane ifTrue: [probaChangement := 0.9].
	self typeInnovation = #innovantAnanas ifTrue: [probaChangement := 0.3].
	self typeInnovation = #innovantMV ifTrue: [probaChangement := 0.1].
	self typeInnovation = #suiveur ifTrue: [probaChangement := 0].
Cormas random &lt; probaChangement 
		ifTrue: [self BP: true]
		ifFalse: [self BP: false].
"Houla... Pb ci-dessous !!!"
	c1 := (self components 
				select: [:i | typeInnovation = #innovantBanane and: [BP = #true]]) isEmpty 
				not.
	c2 := (self components 
				select: [:i | typeInnovation = #innovantAnanas and: [BP = #true]]) isEmpty 
				not.
	c3 := (self components 
				select: [:i | typeInnovation = #innovantMV and: [BP = #true]]) isEmpty 
				not.
	c1 ifTrue: [self suiveursBananeIntegre].
	c2 ifTrue: [self suiveursAnanasIntegre].
	c3 ifTrue: [self suiveursMVIntegre]</body>

<body>suiveursAnanasIntegre
	| probaChangement cContrainte1 cContrainte2 c1 c2 c3 c4 c5 c6 c7 c8 c9 co1 co2 co3 co4 co5 co6 co7 co8 co9 co10 |
	cContrainte1 := self contrainte ~= #contMaxPele 
				and: [self contrainte ~= #contMaxCapot].
	cContrainte2 := cContrainte1 
				and: [self contrainte ~= #extensionAB and: [self contrainte ~= #extensionMR]].
	
c1 := self components select: 
					[:i | 
					orientation = #ananas 
						and: [BP = #true and: [self exploitant resComSimple = #rcf1]]].
c2 := self components select: 
					[:i | 
					orientation = #ananas 
						and: [BP = #true and: [self exploitant resComSimple = #rcf2]]].
c3 := self components select: 
					[:i | 
					orientation = #ananas 
						and: [BP = #true and: [self exploitant resComSimple = #rcf3]]].
c4 := self components select: 
					[:i | 
					orientation = #ananas 
						and: [BP = #true and: [self exploitant resComSimple = #rcf4]]].
c5 := self components select: 
					[:i | 
					orientation = #ananas 
						and: [BP = #true and: [self exploitant resComSimple = #rcf5]]].
c6 := self components select: 
					[:i | 
					orientation = #ananas 
						and: [BP = #true and: [self exploitant resComSimple = #rcs1]]].
c7 := self components select: 
					[:i | 
					orientation = #ananas 
						and: [BP = #true and: [self exploitant resComSimple = #rcs2]]].
c8 := self components select: 
					[:i | 
					orientation = #ananas 
						and: [BP = #true and: [self exploitant resComSimple = #rcs3]]].
c9 := self components select: 
					[:i | 
					orientation = #ananas 
						and: [BP = #true and: [self exploitant resComSimple = #rcs4]]].
co1 := (c1 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcf1]]]]).
co2 := (c2 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcf2]]]]).
co3 := (c3 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcf3]]]]).
co4 := (c4 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcf4]]]]).
co5 := (c5 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcf5]]]]).
co6 := (c6 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcs1]]]]).
co7 := (c7 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcs2]]]]).
co8 := (c8 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcs3]]]]).
co9 := (c9 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcs4]]]]).
co10 := self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: [self exploitant resComForte = #hr and: [self exploitant resComSimple = #hr]]]].
(co1 or: [co2 or: [co3 or: [co4 or: [co5]]]]) ifTrue: [^probaChangement := 0.6].
(co6 or: [co7 or: [co8 or: [co9]]]) ifTrue: [^probaChangement := 0.4].
(co10) ifTrue: [^probaChangement := 0.2].
(co1 not and: [co2 not and: [co3 not and: [co4 not and: [co5 not and: [co6 not and: [co7 not and: [co8 not and: [co9 not and: [co10 not]]]]]]]]]) ifTrue: [^probaChangement := 0].
	Cormas random &lt; probaChangement 
		ifTrue: [self BP: #true]
		ifFalse: [self BP: #false]</body>

<body>suiveursBananeIntegre
| probaChangement cContrainte1 cContrainte2 c1 c2 c3 c4 c5 c6 c7 c8 c9 co1 co2 co3 co4 co5 co6 co7 co8 co9 co10 |
	cContrainte1 := self contrainte ~= #contMaxPele 
				and: [self contrainte ~= #contMaxCapot].
	cContrainte2 := cContrainte1 
				and: [self contrainte ~= #extensionAB and: [self contrainte ~= #extensionMR]].
	
c1 := self components select: 
					[:i | 
					orientation = #banane 
						and: [BP = #true and: [self exploitant resComSimple = #rcf1]]].
c2 := self components select: 
					[:i | 
					orientation = #banane 
						and: [BP = #true and: [self exploitant resComSimple = #rcf2]]].
c3 := self components select: 
					[:i | 
					orientation = #banane 
						and: [BP = #true and: [self exploitant resComSimple = #rcf3]]].
c4 := self components select: 
					[:i | 
					orientation = #banane 
						and: [BP = #true and: [self exploitant resComSimple = #rcf4]]].
c5 := self components select: 
					[:i | 
					orientation = #banane 
						and: [BP = #true and: [self exploitant resComSimple = #rcf5]]].
c6 := self components select: 
					[:i | 
					orientation = #banane 
						and: [BP = #true and: [self exploitant resComSimple = #rcs1]]].
c7 := self components select: 
					[:i | 
					orientation = #banane 
						and: [BP = #true and: [self exploitant resComSimple = #rcs2]]].
c8 := self components select: 
					[:i | 
					orientation = #banane 
						and: [BP = #true and: [self exploitant resComSimple = #rcs3]]].
c9 := self components select: 
					[:i | 
					orientation = #banane 
						and: [BP = #true and: [self exploitant resComSimple = #rcs4]]].
co1 := (c1 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcf1]]]]).
co2 := (c2 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcf2]]]]).
co3 := (c3 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcf3]]]]).
co4 := (c4 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcf4]]]]).
co5 := (c5 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcf5]]]]).
co6 := (c6 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcs1]]]]).
co7 := (c7 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcs2]]]]).
co8 := (c8 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcs3]]]]).
co9 := (c9 isEmpty not and: [self orientation = #ananas and: [self typeInnovation = #suiveur and: [cContrainte2 and: 
							[self exploitant resComForte = #rcs4]]]]).
co10 := self orientation = #banane and: [self typeInnovation = #suiveur and: [cContrainte2 and: [self exploitant resComForte = #hr and: [self exploitant resComSimple = #hr]]]].
(co1 or: [co2 or: [co3 or: [co4 or: [co5]]]]) ifTrue: [^probaChangement := 0.3].
(co6 or: [co7 or: [co8 or: [co9]]]) ifTrue: [^probaChangement := 0.2].
(co10) ifTrue: [^probaChangement := 0.1].
(co1 not and: [co2 not and: [co3 not and: [co4 not and: [co5 not and: [co6 not and: [co7 not and: [co8 not and: [co9 not and: [co10 not]]]]]]]]]) ifTrue: [^probaChangement := 0].
	Cormas random &lt; probaChangement 
		ifTrue: [self BP: #true]
		ifFalse: [self BP: #false]</body>

<body>suiveursMVIntegre
| probaChangement cContrainte1 c1 c2 c3 c4 c5 c6 c7 c8 c9 co1 co2 co3 co4 co5 co6 co7 co8 co9 co10 |
	cContrainte1 := self contrainte ~= #contMaxPele 
				and: [self contrainte ~= #contMaxCapot].
		
c1 := self components select: 
					[:i | 
					orientation = #MV 
						and: [BP = #true and: [self exploitant resComSimple = #rcf1]]].
c2 := self components select: 
					[:i | 
					orientation = #MV 
						and: [BP = #true and: [self exploitant resComSimple = #rcf2]]].
c3 := self components select: 
					[:i | 
					orientation = #MV 
						and: [BP = #true and: [self exploitant resComSimple = #rcf3]]].
c4 := self components select: 
					[:i | 
					orientation = #MV 
						and: [BP = #true and: [self exploitant resComSimple = #rcf4]]].
c5 := self components select: 
					[:i | 
					orientation = #MV 
						and: [BP = #true and: [self exploitant resComSimple = #rcf5]]].
c6 := self components select: 
					[:i | 
					orientation = #MV 
						and: [BP = #true and: [self exploitant resComSimple = #rcs1]]].
c7 := self components select: 
					[:i | 
					orientation = #MV 
						and: [BP = #true and: [self exploitant resComSimple = #rcs2]]].
c8 := self components select: 
					[:i | 
					orientation = #MV 
						and: [BP = #true and: [self exploitant resComSimple = #rcs3]]].
c9 := self components select: 
					[:i | 
					orientation = #MV 
						and: [BP = #true and: [self exploitant resComSimple = #rcs4]]].
co1 := (c1 isEmpty not and: [self orientation = #MV and: [self typeInnovation = #suiveur and: [cContrainte1 and: 
							[self exploitant resComForte = #rcf1]]]]).
co2 := (c2 isEmpty not and: [self orientation = #MV and: [self typeInnovation = #suiveur and: [cContrainte1 and: 
							[self exploitant resComForte = #rcf2]]]]).
co3 := (c3 isEmpty not and: [self orientation = #MV and: [self typeInnovation = #suiveur and: [cContrainte1 and: 
							[self exploitant resComForte = #rcf3]]]]).
co4 := (c4 isEmpty not and: [self orientation = #MV and: [self typeInnovation = #suiveur and: [cContrainte1 and: 
							[self exploitant resComForte = #rcf4]]]]).
co5 := (c5 isEmpty not and: [self orientation = #MV and: [self typeInnovation = #suiveur and: [cContrainte1 and: 
							[self exploitant resComForte = #rcf5]]]]).
co6 := (c6 isEmpty not and: [self orientation = #MV and: [self typeInnovation = #suiveur and: [cContrainte1 and: 
							[self exploitant resComForte = #rcs1]]]]).
co7 := (c7 isEmpty not and: [self orientation = #MV and: [self typeInnovation = #suiveur and: [cContrainte1 and: 
							[self exploitant resComForte = #rcs2]]]]).
co8 := (c8 isEmpty not and: [self orientation = #MV and: [self typeInnovation = #suiveur and: [cContrainte1 and: 
							[self exploitant resComForte = #rcs3]]]]).
co9 := (c9 isEmpty not and: [self orientation = #MV and: [self typeInnovation = #suiveur and: [cContrainte1 and: 
							[self exploitant resComForte = #rcs4]]]]).
co10 := self orientation = #MV and: [self typeInnovation = #suiveur and: [cContrainte1 and: [self exploitant resComForte = #hr and: [self exploitant resComSimple = #hr]]]].
(co1 or: [co2 or: [co3 or: [co4 or: [co5]]]]) ifTrue: [^probaChangement := 0.9].
(co6 or: [co7 or: [co8 or: [co9]]]) ifTrue: [^probaChangement := 0.6].
(co10) ifTrue: [^probaChangement := 0.3].
(co1 not and: [co2 not and: [co3 not and: [co4 not and: [co5 not and: [co6 not and: [co7 not and: [co8 not and: [co9 not and: [co10 not]]]]]]]]]) ifTrue: [^probaChangement := 0].
	Cormas random &lt; probaChangement 
		ifTrue: [self BP: #true]
		ifFalse: [self BP: #false]</body>
</methods>


<class>
<name>PhytoBv</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.CormasModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>theCells theUniteHydros theUniteContraintes theParcelles theIlots theExploitations theExploitants theBoiss theAggregateUCs theSAFERs theGroupements </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.PhytoBv class</class-id> <category>aleat</category>

<body>getIndexFromProbaDistribution: dist 
	| collec cumul r |
	(dist inject: 0 into: [:sum :i | sum + i]) ~= 100 
		ifTrue: 
			[Dialog warn: 'La somme des probas n''est pas égale a 100'.
			self halt].
	collec := OrderedCollection new.
	1 to: dist size
		do: [:i | collec add: (Association key: i value: (dist at: i))].
	collec := collec asSortedCollection: [:i :j | i value &lt; j value].
	cumul := 0.
	collec do: 
			[:a | 
			cumul := cumul + a value.
			a value: cumul].
	r := CormasNS.Kernel.Cormas random * 100.
	collec do: [:a | a value &gt; r ifTrue: [^a key]]</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.PhytoBv</class-id> <category>instance-creation</category>

<body>initAgents
	"To be completed"

	super initAgents.
	self initGroupements.
	self initExploitants.
	self initReseaux.
	self initSAFER.
	self theExploitants do: [:e | e safer: self safer]</body>

<body>initBois
	self spaceModel 
		setAggregates: Bois
		from: Cell
		verifying: [:c | c idParcelle = 9999]</body>

<body>initCells
self spaceModel loadEnvironmentFromFile: 'environnement.env'</body>

<body>initExploitants
	| newExploitant test |
	test := self theExploitations detect: [:e | (e at: 1) id isNil] ifNone: [].
	test notNil ifTrue: [self halt].
	"self theExploitations removeAllSuchThat: [:e | (e at: 1) id isNil]."
	self theExploitations size timesRepeat: 
			[newExploitant := Exploitant new.
			newExploitant 
				exploitation: (self theExploitations detect: [:e | e id = newExploitant id]).
			newExploitant exploitation exploitant: newExploitant.
			newExploitant beLocated.
			self theExploitants add: newExploitant].
	self readExploitantsData.
	self theExploitations do: [:e | e calculEclatementIlots]</body>

<body>initExploitations
	self spaceModel 
		setFragmentedEntities: Exploitation
		from: Ilot
		attribute: #idExploitation.
	self theExploitations do: [:e | e id: (e at: 1) idExploitation].
	self readExploitationsData.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau]</body>

<body>initGroupements
| nouveauGroupement |
	nouveauGroupement := Groupement new.
	nouveauGroupement nom: #banane.
	nouveauGroupement structuration: #forte.
	self theGroupements add: nouveauGroupement.
	nouveauGroupement := Groupement new.
	nouveauGroupement nom: #socomor.
	nouveauGroupement structuration: #moyenne.
	self theGroupements add: nouveauGroupement.
	nouveauGroupement := Groupement new.
	nouveauGroupement nom: #MV.
	nouveauGroupement structuration: #faible.
	self theGroupements add: nouveauGroupement</body>

<body>initIlots
	| test |
	test := self theParcelles select: [:p | p idIlot isNil].
	test isEmpty ifFalse: [self halt].
	self spaceModel 
		setFragmentedEntities: Ilot
		from: Parcelle
		attribute: #idIlot.
	test := self theParcelles select: [:p | p idIlot isNil].
	test isEmpty ifFalse: [self halt].
	self theIlots do: [:i | i id: (i at: 1) idIlot].
	test := self theIlots detect: [:i | i id isNil] ifNone: [].
	test notNil ifTrue: [self halt].
	self readIlotsData.
	test := self theIlots detect: [:i | i id isNil] ifNone: [].
	test notNil ifTrue: [self halt].
	self theIlots do: [:unIlot | unIlot calculSau].
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theIlots do: [:unIlot | unIlot calculCont].
	self theIlots do: [:unIlot | unIlot calculVocation].
	self theIlots do: [:unIlot | unIlot calculRapportUr]


	"self theIlots do: [:unIlot | unIlot identifiantInnovants].
	self theIlots do: [:unIlot | unIlot passageInnovantsSuiveurs].
	self theIlots do: [:unIlot | unIlot suiveursBananeIntegre].
	self theIlots do: [:unIlot | unIlot suiveursAnanasIntegre].
	self theIlots do: [:unIlot | unIlot suiveursMVIntegre]"</body>

<body>initParcelles
	| test |
	self spaceModel 
		setAggregates: Parcelle
		from: Cell
		attribute: #idParcelle
		excludingValue: 9999.
	self theParcelles do: [:p | p id: ((p at: 1) idParcelle); initNeighbourhood].
	self readParcellesData.
	test := self theParcelles select: [:p | p id= 396]. test size &gt; 1 ifTrue: [self halt].
	test := self theParcelles select: [:p | p idIlot isNil]. test isEmpty ifFalse: [self halt].
	test := self theParcelles select: [:p | p contrainte isNil]. test isEmpty ifFalse: [self halt].
	self theParcelles do: [:uneParcelle | uneParcelle calculContrainte].
self theParcelles do: [:uneParcelle | uneParcelle calculSau]</body>

<body>initReseaux
	| nomsGroupements |
	self theExploitants do: 
			[:ex | 
			nomsGroupements := (ex resGpt tokensBasedOn: $_) collect: [:s | s asSymbol].
			nomsGroupements remove: #hr ifAbsent: [].
			nomsGroupements do: [:nom | ex groupements add: (self theGroupements detect: [:gpt | nom = gpt nom])].
			ex resComForte ~= #hr
				ifTrue: 
					[ex exploitantsCommForte addAll: (self theExploitants 
								select: [:ex1 | ex id ~= ex1 id and: [ex1 resComForte = ex resComForte]])].
			ex resComSimple ~= #hr 
				ifTrue: 
					[ex exploitantsCommSimple addAll: (self theExploitants 
								select: [:ex1 | ex id ~= ex1 id and: [ex1 resComSimple = ex resComSimple]])].
			ex calculImplicationReseau.
			ex printReseaux].
	Transcript flush</body>

<body>initSAFER
	| safer |
	safer := SAFER new.
	safer exploitants: self theExploitants.
	self theSAFERs add: safer</body>

<body>initUnitesContraintes
	self spaceModel 
		setAggregates: AggregateUC
		from: Cell
		attribute: #idUniteContrainte.
	self spaceModel 
		setFragmentedEntities: UniteContrainte
		from: AggregateUC
		attribute: #type</body>

<body>initUnitesHydros
	self spaceModel 
		setAggregates: UniteHydro
		from: Cell
		attribute: #idBassinVersant</body>

<body>readDataForClass: aString format: aFormat
| filename stream line values instances file instance |
	instances := self perform: ('the', aString, 's') asSymbol.
	filename := aString, '.txt'.
"Lecture du fichier, ligne par ligne, chaque ligne donnant les valeurs des caracteristiques d'une instance"
	file := (Cormas dataPath: self class name) construct: filename.
	file exists 
		ifFalse: [Dialog warn: 'Ce fichier de donnees particulieres n''existe pas !!!!!!'. ^nil]
		ifTrue: 
			[stream := file readStream.
			"On zappe la premiere ligne (entete)..." 
			stream upTo: Character cr.
			"...puis on lit le reste des lignes: les donnees"
			[stream atEnd] whileFalse: 
					[line := (stream upTo: Character cr) readStream.
					values := line collection tokensBasedOn: Character tab.
					instance := instances detect: [:i | i id = values first asNumber] ifNone: [nil].
					instance isNil ifTrue: [self halt]
						ifFalse: 
							[2 to: aFormat size do: [:i | instance perform: (aFormat at: i) key with: ((values at: i) perform: (aFormat at: i) value)]]].
			stream close]</body>

<body>readExploitantsData
| dataFormat |
	dataFormat := List new.
	dataFormat
		add: #id: -&gt; #asNumber;
		add: #age: -&gt; #asNumber;
		add: #pleinTemps: -&gt; #asSymbol;
		add: #resGpt: -&gt; #asSymbol;
		add: #resComForte: -&gt; #asSymbol;
		add: #resComSimple: -&gt; #asSymbol.
	self readDataForClass: 'Exploitant' format: dataFormat</body>

<body>readExploitationsData
| dataFormat |
	dataFormat := List new.
	dataFormat
		add: #id: -&gt; #asNumber;
		add: #fonctionnementSpatial: -&gt; #asNumber;
		add: #pressionSpatiale: -&gt; #asNumber;
		add: #foncier: -&gt; #asNumber.
	self readDataForClass: 'Exploitation' format: dataFormat</body>

<body>readIlotsData
| dataFormat |
	dataFormat := List new: 5.
	dataFormat
		add: #id: -&gt; #asNumber;
		add: #idExploitation: -&gt; #asNumber;
		add: #orientation: -&gt; #asSymbol;
		add: #systemeCulture: -&gt; #asNumber;
		add: #faireValoir: -&gt; #asSymbol.
	self readDataForClass: 'Ilot' format: dataFormat</body>

<body>readParcellesData
	| dataFormat |
	dataFormat := List new: 3.
	dataFormat add: #id: -&gt; #asNumber.
	dataFormat add: #pression: -&gt; #asNumber.
	dataFormat add: #idIlot: -&gt; #asNumber.
	self readDataForClass: 'Parcelle' format: dataFormat</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.PhytoBv</class-id> <category>init</category>

<body>init
	self initCells.
	self initParcelles.
	self initBois.
	self initIlots.
	self initExploitations.
	self initUnitesHydros.
	self initUnitesContraintes.
	self initAgents.
	"self checkAttributesValues."
	"self showPressionsProbables."
	"self exportProbe: #Pression1 forEntity: #Parcelle inFile: 'Pression1Parcelles.txt'.
	self exportProbe: #Pression2 forEntity: #Parcelle inFile: 'Pression2Parcelles.txt'.
	self exportProbe: #Pression3 forEntity: #Parcelle inFile: 'Pression3Parcelles.txt'.
	self exportProbe: #Pression4 forEntity: #Parcelle inFile: 'Pression4Parcelles.txt'.
	self exportProbe: #Pression5 forEntity: #Parcelle inFile: 'Pression5Parcelles.txt'"</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.PhytoBv</class-id> <category>control</category>

<body>step: t 
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepBonnesPratiques: t 
	self theParcelles do: [:uneParcelle | uneParcelle step].
	self theIlots do: [:unIlot | unIlot stepBonnesPratiques]</body>

<body>stepChangements: t 
	self theParcelles do: [:uneParcelle | uneParcelle step].
	self theIlots do: [:unIlot | unIlot stepMesureX]</body>

<body>stepFoncierOp: t 
	self theExploitants do: [:unExploitant | unExploitant stepOp].
	self safer step.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepRetraite: t 
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theExploitants do: [:unExploitant | unExploitant step].
	"self safer step."
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepRetraiteAge: t 
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theExploitants do: [:unExploitant | unExploitant step].
	self safer stepEvolutionAge.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepRetraiteAleatoire: t 
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theExploitants do: [:unExploitant | unExploitant step].
	self safer stepEvolutionAleatoire.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepRetraiteAleatoireVenteAge: t 
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theExploitants do: [:unExploitant | unExploitant step].
	self safer stepEvolutionAleatoireVenteAge.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepRetraiteAleatoireVenteControle: t 
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theExploitants do: [:unExploitant | unExploitant step].
	self safer stepEvolutionAleatoireVenteControlee.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepRetraiteAleatoireVenteReseau: t 
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theExploitants do: [:unExploitant | unExploitant step].
	self safer stepEvolutionAleatoireVenteReseau.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepRetraiteControlee: t 
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theExploitants do: [:unExploitant | unExploitant step].
	self safer stepEvolutionControlee.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepRetraiteNaturelle: t 
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theExploitants do: [:unExploitant | unExploitant step].
	self safer stepEvolutionNaturelle.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepRetraiteReseau: t 
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theExploitants do: [:unExploitant | unExploitant step].
	self safer stepEvolutionReseau.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>

<body>stepScenarioReseau: t 
	self theIlots do: [:unIlot | unIlot calculContrainte].
	self theExploitants do: [:unExploitant | unExploitant stepReseau].
	self safer step.
	self theExploitations do: [:uneExploitation | uneExploitation calculSau].
	self theIlots do: [:unIlot | unIlot step].
	self theParcelles do: [:uneParcelle | uneParcelle step]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.PhytoBv</class-id> <category>probes</category>

<body>contrainteParcelle
	"return the data (a number) to be recorded"

	^((self theParcelles
		select: 
			[:p | p contrainte = #(contFaibles)]) size / (self theParcelles size)) asFloat</body>

<body>d1
| x nb |
	x := (self theParcelles select: [:p | p distributionPression = #d1]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>d12
| x nb |
	x := (self theParcelles select: [:p | p distributionPression = #d12]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>d2
| x nb |
	x := (self theParcelles select: [:p | p distributionPression = #d2]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>d213
| x nb |
	x := (self theParcelles select: [:p | p distributionPression = #d213]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>d253
| x nb |
	x := (self theParcelles select: [:p | p distributionPression = #d253]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>d312
| x nb |
	x := (self theParcelles select: [:p | p distributionPression = #d312]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>d431
| x nb |
	x := (self theParcelles select: [:p | p distributionPression = #d431]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>dResidu
| x nb |
	x := (self theParcelles select: [:p | p distributionPression = #dResidu]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>fonctionnementSpatialConjoncturel

"mauvaise méthode : comment dire qu'on veut calculer la somme des sau des exploitations de type fonctionnementSpatial conjoncturel?"
| "sauType sau" x nb |
"sauType := self theExploitations inject: 0 into: [:sum :exploitation | sum + exploitation fonctionnementSpatial = #conjoncturel sau].
sau := self theExploitations inject: 0 into: [:sum :exploitation | sum + exploitation sau]."
	x := (self theParcelles 
				select: [:p | p ilot exploitation fonctionnementSpatial = #conjoncturel]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>fonctionnementSpatialEleveur
	"return the data (a number) to be recorded"

	| x nb |
	x := (self theParcelles select: [:p | p ilot exploitation fonctionnementSpatial = #eleveur]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>fonctionnementSpatialGrandeStable
	"return the data (a number) to be recorded"

	| x nb |
	x := (self theParcelles select: [:p | p ilot exploitation fonctionnementSpatial = #grandeExploitationStable]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>fonctionnementSpatialJardinier
	"return the data (a number) to be recorded"

	| x nb |
	x := (self theParcelles select: [:p | p ilot exploitation fonctionnementSpatial = #jardinier]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>fonctionnementSpatialProprio
	"return the data (a number) to be recorded"

	| x nb |
	x := (self theParcelles select: [:p | p ilot exploitation fonctionnementSpatial = #proprietaireTerrien]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>fonctionnementSpatialSansTerre
	"return the data (a number) to be recorded"

	| x nb |
	x := (self theParcelles select: [:p | p ilot exploitation fonctionnementSpatial = #exploitantSansTerre]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>orientationAnanas
	"return the data (a number) to be recorded"
| x nb |
	x := (self theParcelles select: [:p | p ilot orientation = #ananas]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat

	"^((self theIlots
		select: 
			[:i | i orientation = #(ananas)]) size / (self theIlots size)) asFloat"</body>

<body>orientationBanane
	"return the data (a number) to be recorded"

	| x nb |
	x := (self theParcelles select: [:p | p ilot orientation = #banane]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>orientationElevage
	"return the data (a number) to be recorded"

	| x nb |
	x := (self theParcelles select: [:p | p ilot orientation = #elevageHS]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>orientationFriche
	"return the data (a number) to be recorded"

	| x nb |
	x := (self theParcelles select: [:p | p ilot orientation = #friche]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>orientationFruit
	"return the data (a number) to be recorded"
| x nb |
	x := (self theParcelles select: [:p | p ilot orientation = #fruits]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>orientationMV
	"return the data (a number) to be recorded"

	| x nb |
	x := (self theParcelles select: [:p| p ilot orientation = #MV]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>orientationPrairie
	"return the data (a number) to be recorded"

	| x nb |
	x := (self theParcelles select: [:p | p ilot orientation = #prairie]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>pression1
| x nb |
	x := (self theParcelles select: [:p | p pression = 1]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>pression2
| x nb |
	x := (self theParcelles select: [:p | p pression = 2]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>pression3
| x nb |
	x := (self theParcelles select: [:p | p pression = 3]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>pression4
| x nb |
	x := (self theParcelles select: [:p | p pression = 4]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>pression5
| x nb |
	x := (self theParcelles select: [:p | p pression = 5]) size.
	nb := self theParcelles size.
	^(x / nb) asFloat</body>

<body>sauAnanas
"return the data (a number) to be recorded"

| sauAnanas sauTotale |
  sauAnanas := self theIlots inject: 0 into: 
[:sum :ilot | 
| contrib |
contrib := ilot orientation = #ananas 
ifTrue: [ilot sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theIlots inject: 0 into: 
[:sum :ilot | sum + ilot sau].
  ^(sauAnanas / sauTotale) asFloat</body>

<body>sauBanane
"return the data (a number) to be recorded"

| sauBanane sauTotale |
  sauBanane := self theIlots inject: 0 into: 
[:sum :ilot | 
| contrib |
contrib := ilot orientation = #banane 
ifTrue: [ilot sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theIlots inject: 0 into: 
[:sum :ilot | sum + ilot sau].
  ^(sauBanane / sauTotale) asFloat</body>

<body>sauConjoncturel
"return the data (a number) to be recorded"

| sauConjoncturel sauTotale |
  sauConjoncturel := self theExploitations inject: 0 into: 
[:sum :exploitation | 
| contrib |
contrib := exploitation fonctionnementSpatial = #conjoncturel 
ifTrue: [exploitation sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theExploitations inject: 0 into: 
[:sum :exploitation | sum + exploitation sau].
  ^(sauConjoncturel / sauTotale) asFloat</body>

<body>sauEhs
"return the data (a number) to be recorded"

| sauEhs sauTotale |
  sauEhs := self theIlots inject: 0 into: 
[:sum :ilot | 
| contrib |
contrib := ilot orientation = #elevageHS 
ifTrue: [ilot sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theIlots inject: 0 into: 
[:sum :ilot | sum + ilot sau].
  ^(sauEhs / sauTotale) asFloat</body>

<body>sauEleveur
"return the data (a number) to be recorded"

| sauEleveur sauTotale |
  sauEleveur := self theExploitations inject: 0 into: 
[:sum :exploitation | 
| contrib |
contrib := exploitation fonctionnementSpatial = #eleveur 
ifTrue: [exploitation sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theExploitations inject: 0 into: 
[:sum :exploitation | sum + exploitation sau].
  ^(sauEleveur / sauTotale) asFloat</body>

<body>sauFriche
"return the data (a number) to be recorded"

| sauFriche sauTotale |
  sauFriche := self theIlots inject: 0 into: 
[:sum :ilot | 
| contrib |
contrib := ilot orientation = #friche 
ifTrue: [ilot sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theIlots inject: 0 into: 
[:sum :ilot | sum + ilot sau].
  ^(sauFriche / sauTotale) asFloat</body>

<body>sauFruits
"return the data (a number) to be recorded"

| sauFruits sauTotale |
  sauFruits := self theIlots inject: 0 into: 
[:sum :ilot | 
| contrib |
contrib := ilot orientation = #fruits 
ifTrue: [ilot sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theIlots inject: 0 into: 
[:sum :ilot | sum + ilot sau].
  ^(sauFruits / sauTotale) asFloat</body>

<body>sauGes
"return the data (a number) to be recorded"

| sauGes sauTotale |
  sauGes := self theExploitations inject: 0 into: 
[:sum :exploitation | 
| contrib |
contrib := exploitation fonctionnementSpatial = #grandeExploitationStable 
ifTrue: [exploitation sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theExploitations inject: 0 into: 
[:sum :exploitation | sum + exploitation sau].
  ^(sauGes / sauTotale) asFloat</body>

<body>sauJardinier
"return the data (a number) to be recorded"

| sauJardinier sauTotale |
  sauJardinier := self theExploitations inject: 0 into: 
[:sum :exploitation | 
| contrib |
contrib := exploitation fonctionnementSpatial = #jardinier 
ifTrue: [exploitation sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theExploitations inject: 0 into: 
[:sum :exploitation | sum + exploitation sau].
  ^(sauJardinier / sauTotale) asFloat</body>

<body>sauMV
"return the data (a number) to be recorded"

| sauMV sauTotale |
  sauMV := self theIlots inject: 0 into: 
[:sum :ilot | 
| contrib |
contrib := ilot orientation = #MV 
ifTrue: [ilot sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theIlots inject: 0 into: 
[:sum :ilot | sum + ilot sau].
  ^(sauMV / sauTotale) asFloat</body>

<body>sauP1
	"return the data (a number) to be recorded"

	| sauP1 sauTotale |
	sauP1 := self theParcelles inject: 0
				into: 
					[:sum :parcelle | 
					| contrib |
					contrib := parcelle pression = 1 ifTrue: [parcelle sau] ifFalse: [0].
					sum + contrib].
	sauTotale := self theParcelles inject: 0
				into: [:sum :parcelle | sum + parcelle sau].
	^(sauP1 / sauTotale) asFloat</body>

<body>sauP2
	"return the data (a number) to be recorded"

	| sauP2 sauTotale |
	sauP2 := self theParcelles inject: 0
				into: 
					[:sum :parcelle | 
					| contrib |
					contrib := parcelle pression = 2 ifTrue: [parcelle sau] ifFalse: [0].
					sum + contrib].
	sauTotale := self theParcelles inject: 0
				into: [:sum :parcelle | sum + parcelle sau].
	^(sauP2 / sauTotale) asFloat</body>

<body>sauP3
	"return the data (a number) to be recorded"

	| sauP3 sauTotale |
	sauP3 := self theParcelles inject: 0
				into: 
					[:sum :parcelle | 
					| contrib |
					contrib := parcelle pression = 3 ifTrue: [parcelle sau] ifFalse: [0].
					sum + contrib].
	sauTotale := self theParcelles inject: 0
				into: [:sum :parcelle | sum + parcelle sau].
	^(sauP3 / sauTotale) asFloat</body>

<body>sauP4
	"return the data (a number) to be recorded"

	| sauP4 sauTotale |
	sauP4 := self theParcelles inject: 0
				into: 
					[:sum :parcelle | 
					| contrib |
					contrib := parcelle pression = 4 ifTrue: [parcelle sau] ifFalse: [0].
					sum + contrib].
	sauTotale := self theParcelles inject: 0
				into: [:sum :parcelle | sum + parcelle sau].
	^(sauP4 / sauTotale) asFloat</body>

<body>sauP5
	"return the data (a number) to be recorded"

	| sauP5 sauTotale |
	sauP5 := self theParcelles inject: 0
				into: 
					[:sum :parcelle | 
					| contrib |
					contrib := parcelle pression = 5 ifTrue: [parcelle sau] ifFalse: [0].
					sum + contrib].
	sauTotale := self theParcelles inject: 0
				into: [:sum :parcelle | sum + parcelle sau].
	^(sauP5 / sauTotale) asFloat</body>

<body>sauPrairie
"return the data (a number) to be recorded"

| sauPrairie sauTotale |
  sauPrairie := self theIlots inject: 0 into: 
[:sum :ilot | 
| contrib |
contrib := ilot orientation = #prairie 
ifTrue: [ilot sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theIlots inject: 0 into: 
[:sum :ilot | sum + ilot sau].
  ^(sauPrairie / sauTotale) asFloat</body>

<body>sauProprio
"return the data (a number) to be recorded"

| sauProprio sauTotale |
  sauProprio := self theExploitations inject: 0 into: 
[:sum :exploitation | 
| contrib |
contrib := exploitation fonctionnementSpatial = #proprietaireTerrien 
ifTrue: [exploitation sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theExploitations inject: 0 into: 
[:sum :exploitation | sum + exploitation sau].
  ^(sauProprio / sauTotale) asFloat</body>

<body>sauSansTerre
"return the data (a number) to be recorded"

| sauSansTerre sauTotale |
  sauSansTerre := self theExploitations inject: 0 into: 
[:sum :exploitation | 
| contrib |
contrib := exploitation fonctionnementSpatial = #exploitantSansTerre 
ifTrue: [exploitation sau]
ifFalse: [0].
sum + contrib].
  sauTotale := self theExploitations inject: 0 into: 
[:sum :exploitation | sum + exploitation sau].
  ^(sauSansTerre / sauTotale) asFloat</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.PhytoBv</class-id> <category>tests</category>

<body>assignedValuesForAttribute: attributeName class: className 
	| values |
	values := ((self perform: ('the' , className asString , 's') asSymbol) 
				collect: [:instance | instance perform: attributeName]) asSet.
^(values contains: [:i | i isLiteral not]) 
				ifTrue: [Set new]
				ifFalse: [values]


"	^(values contains: [:i | (i class canUnderstand: #&lt;) not]) 
		ifFalse: [values asSortedCollection]
		ifTrue: 
			[(values contains: [:i | i isLiteral not]) 
				ifTrue: [Set new]
				ifFalse: [values]]"</body>

<body>checkAttributesValues
	| values |
	Transcript cr.
	self class allClasses do: 
			[:c | 
			c name asString printOn: Transcript.
			Transcript cr.
			c instVarNames do: 
					[:attributeString | 
					values := self assignedValuesForAttribute: attributeString asSymbol class: c name.
					values isEmpty 
						ifFalse: 
							[Transcript tab.
							attributeString printOn: Transcript.
							' ' printOn: Transcript.
							'{' printOn: Transcript.
							values do: 
									[:v | 
									v printOn: Transcript.
									Transcript space].
							'}' printOn: Transcript.
							Transcript cr]].
			Transcript cr].
	Transcript flush</body>

<body>showPressionsProbables
	self theParcelles
		do: 
			[:p | 
			Transcript cr.
			'Parcelle ' , p id printString printOn: Transcript.
			Transcript tab.
			p ilot systemeCulture isNil
				ifTrue: ['nil' printOn: Transcript]
				ifFalse: [p ilot systemeCulture printOn: Transcript].
			Transcript tab.
			p ilot orientation printOn: Transcript.
			Transcript tab.
			p exploitation pressionSpatiale printOn: Transcript.
			Transcript tab.
			Transcript tab.
			p distributionPression printString printOn: Transcript].
	Transcript flush</body>

<body>testCalculPressionsProbables
| csc1 co1 co2 ctype1 ctype2 cage1 cage2 dist |
self theParcelles do: [:p | 
	csc1 := p ilot systemeCulture = #jachere.
	co1 := p ilot orientation = #banane.
	co2 := p ilot orientation ~= #elevageHS 
				and: [p ilot orientation ~= #fruits].
	ctype1 := #(2 3 6) includes: p exploitation pressionSpatiale.
	ctype2 := #(4 5) includes: p exploitation pressionSpatiale.
	cage1 := p exploitant appartientClasseAge: 3.
	cage2 := (p exploitant appartientClasseAge: 4) not.
	(csc1 not and: [co1 not and: [ctype1]]) ifTrue: [dist := #(77 5 17 1)].
	(csc1 and: [co1 not and: [ctype1 and: [cage1]]]) 
		ifTrue: [dist := #(30 70 0 0)].
	(co2 and: [ctype2 and: [cage2]]) ifTrue: [dist := #(17 3 78 2)].
	(co1 and: [ctype1]) ifTrue: [dist := #(6 0 2 92)].

Transcript cr. ('Parcelle ', p id printString) printOn: Transcript.
Transcript cr. Transcript tab. ('[Systeme Culture Jachere] -&gt; ', csc1 printString) printOn: Transcript.
Transcript cr. Transcript tab. ('[Orientation Banane] -&gt; ', co1 printString) printOn: Transcript.
Transcript cr. Transcript tab. ('[Orientation ni Elevage ni Fruits] -&gt; ', co2 printString) printOn: Transcript.
Transcript cr. Transcript tab. ('[Type Spatialise 2 3 ou 6] -&gt; ', ctype1 printString) printOn: Transcript.
Transcript cr. Transcript tab. ('[Type Spatialise 4 ou 5] -&gt; ', ctype2 printString) printOn: Transcript.
Transcript cr. Transcript tab. ('[Classe age 3] -&gt; ', cage1 printString) printOn: Transcript.
Transcript cr. Transcript tab. ('[Classe age 1 2 ou 3] -&gt; ', cage2 printString) printOn: Transcript.
Transcript cr. Transcript tab. ('[dist] -&gt; (', (dist at: 1) printString, ' ', (dist at: 2) printString, ' ', (dist at: 3) printString, ' ', (dist at: 4) printString, ')') printOn: Transcript].
Transcript flush</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.PhytoBv</class-id> <category>export</category>

<body>exportProbe: probeName forEntity: entityName inFile: filename 
| aCollection entities |
	aCollection := OrderedCollection new.
	aCollection
		add: self simManager simNumero printString;
		add: self timeStep printString.
	entities := self perform: ('the' , entityName asString , 's') asSymbol.
	entities do: [:p | aCollection add: (p perform: probeName)].
	self timeStep = 0 
		ifTrue: 
			[self 
				initFile: ((Cormas dataPath: self class name) construct: filename)
				dataCollection: aCollection
				separator: ';']
		ifFalse: 
			[self 
				updateFile: ((Cormas dataPath: self class name) construct: filename)
				dataCollection: aCollection
				separator: ';']</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.PhytoBv</class-id> <category>accessing</category>

<body>groupementAnanas
	^self theGroupements detect: [:g | g nom = #socomor]</body>

<body>groupementBanane
	^self theGroupements detect: [:g | g nom = #banane]</body>

<body>groupementMV
	^self theGroupements detect: [:g | g nom = #MV]</body>

<body>safer
^self theSAFERs first</body>

<body>theAggregateUCs
^theAggregateUCs</body>

<body>theAggregateUCs: x
theAggregateUCs := x</body>

<body>theBoiss
^theBoiss</body>

<body>theBoiss: x
theBoiss := x</body>

<body>theCells
^theCells</body>

<body>theCells: x
theCells := x</body>

<body>theExploitants
^theExploitants</body>

<body>theExploitants: x
theExploitants := x</body>

<body>theExploitations
^theExploitations</body>

<body>theExploitations: x
theExploitations := x</body>

<body>theGroupements
^theGroupements</body>

<body>theGroupements: x
theGroupements := x</body>

<body>theIlots
^theIlots</body>

<body>theIlots: x
theIlots := x</body>

<body>theParcelles
^theParcelles</body>

<body>theParcelles: x
theParcelles := x</body>

<body>theSAFERs
^theSAFERs</body>

<body>theSAFERs: x
theSAFERs := x</body>

<body>theUniteContraintes
^theUniteContraintes</body>

<body>theUniteContraintes: x
theUniteContraintes := x</body>

<body>theUniteHydros
^theUniteHydros</body>

<body>theUniteHydros: x
theUniteHydros := x</body>
</methods>


<class>
<name>Parcelle</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.SpatialEntityAggregate</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>pression idIlot contrainte distributionPression sau </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.Parcelle</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Parcelle class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Parcelle</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Parcelle</class-id> <category>pov</category>

<body>pov
| i |
	self id notNil
		ifTrue: 
			[i := self id \\ ColorValue constantNames size.
			i = 0 ifTrue: [i := 5].
			^ColorValue constantNames at: i]
		ifFalse: [^ColorValue white]</body>

<body>povBois
	self type = 9999 
		ifTrue: [^ColorValue green]
		ifFalse: [^ColorValue yellow]</body>

<body>povContrainte
	contrainte isNil ifTrue: [^ColorValue white].
	(self contrainte = #ContMaxPele or: [self contrainte = #ContMaxCapot]) 
		ifTrue: [^ColorValue red].
	(self contrainte = #ExtensionMR or: [self contrainte = #ExtensionAB]) 
		ifTrue: [^ColorValue blue].
	(self contrainte = #FacileBourgMR or: [self contrainte = #FacileBourgAB]) 
		ifTrue: [^ColorValue yellow].
	(self contrainte = #ProxBourgMR or: [self contrainte = #ProxBourgAB]) 
		ifTrue: [^ColorValue pink].
	self contrainte = #ContFaibles ifTrue: [^ColorValue green]</body>

<body>povDistributionPression
self distributionPression notNil
ifTrue:
[self distributionPression = #d1
ifTrue: [^ColorValue white].
self distributionPression = #d12
ifTrue: [^ColorValue green].
self distributionPression = #d213
ifTrue: [^ColorValue yellow].
self distributionPression = #d312
ifTrue: [^ColorValue orange].
self distributionPression = #d431
ifTrue: [^ColorValue pink].
self distributionPression = #dResidu
ifTrue: [^ColorValue blue].
self distributionPression = #d253
ifTrue: [^ColorValue red]].
self distributionPression = #d2 ifTrue: [^ColorValue black]</body>

<body>povPression
self pression notNil
ifTrue:
[self pression = 1
ifTrue: [^ColorValue green].
self pression = 2
ifTrue: [^ColorValue yellow].
self pression = 3
ifTrue: [^ColorValue orange].
self pression = 4
ifTrue: [^ColorValue pink].
self pression = 5
ifTrue: [^ColorValue red]]
ifFalse: [^ColorValue white]</body>

<body>povTest
self idIlot = 70 ifTrue: [^ColorValue red]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Parcelle</class-id> <category>accessing</category>

<body>contrainte
"contrainteParcelle isNil ifTrue: [self calculContrainteParcelle].
	^contrainteParcelle"

     ^contrainte isNil ifTrue: [0] ifFalse: [contrainte]</body>

<body>contrainte: anObject 
	contrainte := anObject</body>

<body>distributionPression
	"Getter accessor without default value "
	distributionPression isNil ifTrue: [self calculDistributionPression].
	^distributionPression</body>

<body>distributionPression: anObject 
	distributionPression := anObject</body>

<body>exploitant
	^self ilot exploitation exploitant</body>

<body>exploitation
	^self ilot exploitation</body>

<body>idIlot
	"Getter accessor without default value "
	^idIlot</body>

<body>idIlot: anObject 
	idIlot := anObject</body>

<body>ilot
	^self theCSE at: #Ilot</body>

<body>pression: anObject 
	pression := anObject</body>

<body>sau
	"Getter accessor without default value "
	^sau</body>

<body>sau: anObject 
	sau := anObject</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Parcelle</class-id> <category>calcul</category>

<body>calculContrainte
	self calculContrainteMH</body>

<body>calculContrainteClp
"On assigne à la parcelle l'unité de contrainte la plus représentative en terme de surface (nb cellules)." 
"Dans le cas où il y a égalité, on assigne la contrainte la plus forte, sachant que "
"ContMaxPele = ContMaxCapot &gt; extensionAB=ExtensionMR &gt; ProxBourgMR=ProxBourgAB &gt; FacileBourgAB=FacileBourgMR&gt;contFaibles"
| valeursContraintes contingences highScore winners |
	valeursContraintes := #(#ContMaxPele #ContMaxCapot #ExtensionMR #ExtensionAB #ProxBourgMR #ProxBourgAB #FacileBourgMR #FacileBourgAB #ContFaibles).
	contingences := Dictionary new.
	valeursContraintes do: [:key | contingences at: key put: 0].
	self components do: [:c | c idUniteContrainte notNil ifTrue: [contingences at: c idUniteContrainte asSymbol put: (contingences at: c idUniteContrainte asSymbol) + 1]].
	highScore := 0.
	winners := OrderedCollection new.
	contingences keysAndValuesDo: [:k :v | (v &gt; 0 and: [v &gt;= highScore]) ifTrue: [highScore := v. winners add: k]].
	winners isEmpty 
		"ifTrue: [self halt]"
		ifFalse: 
			[winners size &gt; 1 ifTrue: [winners := winners asSortedCollection: [:a :b | (valeursContraintes indexOf: a) &lt; (valeursContraintes indexOf: b)].
			self contrainte: winners first]]</body>

<body>calculContrainteMH

"on cherche d'abord les cellules répondant aux mêmes conditions de contrainte pour chaque parcele. On regarde ensuite l'importance relative de ces agrégats de cellules dans la parcelle. On assigne ensuite à la parcelle l'unité de contrainte la plus représentative en terme de surface. Dans le cas où il y a égalité, on assigne la contrainte la plus forte, sachant que ContMaxPele = ContMaxCapot &gt; extensionAB=ExtensionMR &gt; ProxBourgMR=ProxBourgAB &gt; FacileBourgAB=FacileBourgMR&gt;contFaibles"
"test méthode
| subColl nbCellFacileBourg nbCellTot|
subColl := self components select: [:c | c idUniteContrainte = #FacileBourgMR].
nbCellFacileBourg := subColl size.
nbCellTot := self components size.
((nbCellFacileBourg / nbCellTot) &gt;= 0.6)
ifTrue: [contrainteParcelle := #FacileBourgMR]."

	| contrainte1 contrainte2 contrainte3 contrainte4 contrainte5 contrainte6 contrainte7 contrainte8 contrainte9 c1 c2 c3 c4 c5 c6 c7 c8 c9 |
	contrainte1 := self components select: [:c | c idUniteContrainte = #ContMaxPele].
	contrainte2 := self components select: [:c | c idUniteContrainte = #ContMaxCapot].
	contrainte3 := self components select: [:c | c idUniteContrainte = #ContFaibles].
	contrainte4 := self components select: [:c | c idUniteContrainte = #ExtensionMR].
	contrainte5 := self components select: [:c | c idUniteContrainte = #ExtensionAB].
	contrainte6 := self components select: [:c | c idUniteContrainte = #FacileBourgMR].
	contrainte7 := self components select: [:c | c idUniteContrainte = #FacileBourgAB].
	contrainte8 := self components select: [:c | c idUniteContrainte = #ProxBourgMR].
	contrainte9 := self components select: [:c | c idUniteContrainte = #ProxBourgAB].
	c1 := (contrainte1 size / components size) &gt;= 0.5.
	c2 := (contrainte2 size / components size) &gt;= 0.5.
	c3 := (contrainte3 size / components size) &gt;= 0.5.
	c4 := (contrainte4 size / components size) &gt;= 0.5.
	c5 := (contrainte5 size / components size) &gt;= 0.5.
	c6 := (contrainte6 size / components size) &gt;= 0.5.
	c7 := (contrainte7 size / components size) &gt;= 0.5.
	c8 := (contrainte8 size / components size) &gt;= 0.5.
	c9 := (contrainte9 size / components size) &gt;= 0.5.
	(c1 or: 
			[contrainte1 isEmpty not and: 
					[c1 not and: 
							[c2 not and: 
									[c3 not and: 
											[c4 not 
												and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]) 
		ifTrue: [contrainte := #ContMaxPele].
	(c2 or: 
			[contrainte2 isEmpty not and: 
					[c1 not and: 
							[c2 not and: 
									[c3 not and: 
											[c4 not 
												and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]) 
		ifTrue: [contrainte := #ContMaxCapot].
	(c3) ifTrue: [contrainte := #ContFaibles].
	(c4 or: 
			[contrainte4 isEmpty not and: 
					[contrainte1 isEmpty and: 
							[c1 not and: 
									[c2 not and: 
											[c3 not and: 
													[c4 not 
														and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]]) 
		ifTrue: [contrainte := #ExtensionMR].
	(c5 or: 
			[contrainte5 isEmpty not and: 
					[contrainte1 isEmpty and: 
							[c1 not and: 
									[c2 not and: 
											[c3 not and: 
													[c4 not 
														and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]]) 
		ifTrue: [contrainte := #ExtensionAB].
	(c6 or: 
			[contrainte1 isEmpty and: 
					[contrainte2 isEmpty and: 
							[contrainte4 isEmpty and: 
									[contrainte5 isEmpty and: 
											[contrainte8 isEmpty 
												and: [contrainte9 isEmpty and: [contrainte6 size = contrainte3 size]]]]]]]) 
		ifTrue: [contrainte := #FacileBourgMR].
	(c7 or: 
			[contrainte1 isEmpty and: 
					[contrainte2 isEmpty and: 
							[contrainte4 isEmpty and: 
									[contrainte5 isEmpty and: 
											[contrainte8 isEmpty 
												and: [contrainte9 isEmpty and: [contrainte7 size = contrainte3 size]]]]]]]) 
		ifTrue: [contrainte := #FacileBourgAB].
	(c8 or: 
			[contrainte8 isEmpty not and: 
					[contrainte2 isEmpty and: 
							[contrainte4 isEmpty and: 
									[c1 not and: 
											[c2 not and: 
													[c3 not and: 
															[c4 not 
																and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]]]) 
		ifTrue: [contrainte := #ProxBourgMR].
	(c9 or: 
			[contrainte9 isEmpty not and: 
					[contrainte2 isEmpty and: 
							[contrainte5 isEmpty and: 
									[c1 not and: 
											[c2 not and: 
													[c3 not and: 
															[c4 not 
																and: [c5 not and: [c6 not and: [c7 not and: [c8 not and: [c9 not]]]]]]]]]]]]) 
		ifTrue: [contrainte := #ProxBourgAB]</body>

<body>calculDistributionPression
	self distributionPression: self codePression</body>

<body>calculPression
	| distribution randomValue distributionOrdonnee indices distributionCumulee total |
	distribution := self perform: self distributionPression.
	distributionOrdonnee := distribution asSortedCollection 
				reject: [:x | x isZero].
	indices := OrderedCollection new.
	distributionCumulee := OrderedCollection new.
	total := 0.
	distributionOrdonnee do: 
			[:x | 
			indices add: (distribution indexOf: x).
			total := total + x.
			distributionCumulee add: total].
	randomValue := Cormas random * 100.
	indices with: distributionCumulee
		do: [:i :x | randomValue &lt; x ifTrue: [^self pression: i]]</body>

<body>calculSau
	sau := (self components size) * Cell surface</body>

<body>codePression
	| csc1 csc2 co1 co2 co3 ctype1 ctype2 ctype3 ctype4 r1 r2 r3 r4 r5 r6 |
	csc1 := self ilot systemeCulture = #jachereRotation.
	csc2 := self ilot systemeCulture = #rotation.
	co1 := self ilot orientation = #elevageHS 
				or: [self ilot orientation = #friche or: [self ilot orientation = #prairie]].
	co2 := self ilot orientation = #MV.
	co3 := self ilot orientation = #banane 
				or: [self ilot orientation = #fruits or: [self ilot orientation = #MV]].
	ctype1 := self exploitation pressionSpatiale = #nonConso.
	ctype2 := self exploitation pressionSpatiale = #moins 
				or: [self exploitation pressionSpatiale = #idem].
	ctype3 := self exploitation pressionSpatiale = #idem 
				or: [self exploitation pressionSpatiale = #plus].
	ctype4 := self exploitation pressionSpatiale = #plus.
	r1 := ctype4 and: [self ilot orientation = #ananas].
	r2 := ctype3 and: [self ilot orientation =#banane and: [csc2]].
	r3 := ctype3 and: [co3 and: [csc1]].
	r4 := ctype1 not and: [ctype3 not and: [co1 not and: [co2 not]]].
	r5 := co2 and: [ctype2].
	r6 := ctype1 or: [co1].
(self ilot orientation = #ananas and: [self ilot BP]) ifTrue: [^#d2].
(self ilot orientation = #banane and: [self ilot BP]) ifTrue: [^#d2].
(self ilot orientation = #fruits and: [self ilot BP]) ifTrue: [^#d1].
(self ilot orientation = #MV and: [self ilot BP]) ifTrue: [^#d1].
	r1 ifTrue: [^#d253].
	r2 ifTrue: [^#d431].
	r3 ifTrue: [^#d312].
	r4 ifTrue: [^#d213].
	r5 ifTrue: [^#d12].
	r6 ifTrue: [^#d1].
	^#dResidu</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Parcelle</class-id> <category>control</category>

<body>step
	self calculContrainte.
	self calculDistributionPression.
	self calculPression</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Parcelle</class-id> <category>distributions de pression</category>

<body>d1
^#(100 0 0 0 0)</body>

<body>d12
^#(67 33 0 0 0)</body>

<body>d2
^#(0 100 0 0 0)</body>

<body>d213
^#(15 83 2 0 0)</body>

<body>d253
^#(0 36 28 0 36)</body>

<body>d312
^#(24 20 56 0 0)</body>

<body>d431
^#(6 0 20 74 0)</body>

<body>dResidu
^#(23 59 18 0 0)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Parcelle</class-id> <category>probes</category>

<body>distributionPression1
	"return the data (a number) to be recorded"

	^self codePression isNil 
		ifTrue: [0]
		ifFalse: [(self perform: self codePression) at: 1]</body>

<body>pression
	"Getter accessor without default value "
	pression isNil ifTrue: [self calculPression].
	^pression</body>
</methods>


<class>
<name>SAFER</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.Agent</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>exploitants ilotsAVendre ilotsALouer </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.SAFER</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.SAFER class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.SAFER</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.SAFER</class-id> <category>accessing</category>

<body>exploitants
	"Getter accessor with default value = 0 "
	exploitants isNil ifTrue:[exploitants := OrderedCollection new]. 
	
	^exploitants</body>

<body>exploitants: anObject 
	exploitants := anObject</body>

<body>exploitantsEclatement
"classer les exploitations des exploitants de façon ordonnée, de façon à ce que l'on prenne en premier celui dont l'exploitation est la plus éclatée, de façon à consolider le foncier par exemple"
	^self exploitants asSortedCollection: [:e1 :e2 | e1 exploitation eclatementIlots &lt; e2 exploitation eclatementIlots]</body>

<body>exploitantsParAge
	^self exploitants asSortedCollection: [:e1 :e2 | e1 age &lt; e2 age]</body>

<body>exploitantsParImplicationReseau
	^self exploitants asSortedCollection: [:e1 :e2 | e1 implicationReseau &lt; e2 implicationReseau]</body>

<body>exploitantsParTaille
	^self exploitants asSortedCollection: [:e1 :e2 | e1 exploitation sau &lt; e2 exploitation sau]</body>

<body>ilotsALouer
	"Getter accessor without default value "
	ilotsALouer isNil ifTrue: [ilotsALouer := OrderedCollection new].
	^ilotsALouer</body>

<body>ilotsALouer: anObject 
	ilotsALouer := anObject</body>

<body>ilotsAVendre
	"Getter accessor with default value  "

	ilotsAVendre isNil ifTrue: [ilotsAVendre := OrderedCollection new].
	^ilotsAVendre</body>

<body>ilotsAVendre: anObject
	ilotsAVendre := anObject</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.SAFER</class-id> <category>control</category>

<body>locationPlusPetit
	| indice finalisation exploitant listeExploitants ilotsLoues |
	ilotsLoues := OrderedCollection new.
	self ilotsALouer do: 
			[:i | 
			listeExploitants := self exploitantsParTaille.
			indice := 0.
			finalisation := false.
			[indice &lt; self exploitants size and: [finalisation not]] whileTrue: 
					[indice := indice + 1.
					exploitant := listeExploitants at: indice.
					finalisation := exploitant loue: i.
					finalisation ifTrue: [ilotsLoues add: i]]].
	self ilotsALouer removeAll: ilotsLoues.
	self ilotsALouer isEmpty ifFalse: [self halt].
	"self ilotsAVendre do: [:i | i codeOrientation].
	self ilotsAVendre do: [:i | i calculDistributionOrientation].
	self ilotsAVendre do: [:i | i calculOrientation].
	self ilotsAVendre do: [:i | i codeSystemeCulture].
	self ilotsAVendre do: [:i | i calculDistributionSystemeCulture].
	self ilotsAVendre do: [:i | i calculSystemeCulture]"</body>

<body>printBilan
	| ilotsLIds ilotsVIds |
	ilotsLIds := ''.
	self ilotsALouer 
		do: [:i | ilotsLIds := ilotsLIds , ' ' , i id printString].
	ilotsVIds := ''.
	self ilotsAVendre 
		do: [:i | ilotsVIds := ilotsVIds , ' ' , i id printString].
	Transcript cr.
	'Marché géré par la SAFER' printOn: Transcript.
	Transcript cr.
	Transcript tab.
	'Ilots a louer: ' , ilotsLIds printOn: Transcript.
	Transcript cr.
	Transcript tab.
	'Ilots a vendre ' , ilotsVIds printOn: Transcript.
	Transcript
		cr;
		flush</body>

<body>rajouteIlotsALouer: ilots 
	self ilotsALouer addAll: ilots</body>

<body>rajouteIlotsAVendre: ilots 
	self ilotsAVendre addAll: ilots</body>

<body>step
	self printBilan.
	self ventePlusPetit</body>

<body>stepEvolutionAge
	self venteAge</body>

<body>stepEvolutionAleatoire
	self venteAleatoire</body>

<body>stepEvolutionAleatoireVenteAge
	self venteAleatoireControleeAge</body>

<body>stepEvolutionAleatoireVenteControlee
	self venteAleatoireControlee</body>

<body>stepEvolutionAleatoireVenteReseau
	self venteAleatoireReseau</body>

<body>stepEvolutionControlee
	self ventePlusPetit</body>

<body>stepEvolutionNaturelle
	self vente</body>

<body>stepEvolutionReseau
	self venteReseau</body>

<body>vente
	| indice finalisation exploitant listeExploitants ilotsVendus |
	ilotsVendus := OrderedCollection new.
	self ilotsAVendre do: 
			[:i | 
			listeExploitants := self exploitants.
			indice := 0.
			finalisation := false.
			[indice &lt; self exploitants size and: [finalisation not]] whileTrue: 
					[indice := indice + 1.
					exploitant := listeExploitants at: indice.
					exploitant accepteAchat ifTrue: [
						exploitant achete: i.
						ilotsVendus add: i]]].
	self ilotsAVendre removeAll: ilotsVendus.
	self ilotsAVendre isEmpty ifFalse: [self halt].
	"self ilotsAVendre do: [:i | i codeOrientation].
	self ilotsAVendre do: [:i | i calculDistributionOrientation].
	self ilotsAVendre do: [:i | i calculOrientation].
	self ilotsAVendre do: [:i | i codeSystemeCulture].
	self ilotsAVendre do: [:i | i calculDistributionSystemeCulture].
	self ilotsAVendre do: [:i | i calculSystemeCulture]"</body>

<body>venteAge
	| indice finalisation exploitant listeExploitants ilotsVendus |
	ilotsVendus := OrderedCollection new.
	self ilotsAVendre do: 
			[:i | 
			listeExploitants := self exploitantsParAge.
			indice := 0.
			finalisation := false.
			[indice &lt; self exploitants size and: [finalisation not]] whileTrue: 
					[indice := indice + 1.
					exploitant := listeExploitants at: indice.
					exploitant accepteAchat ifTrue: [
						exploitant achete: i.
						ilotsVendus add: i]]].
	self ilotsAVendre removeAll: ilotsVendus.
	self ilotsAVendre isEmpty ifFalse: [self halt].
	"self ilotsAVendre do: [:i | i codeOrientation].
	self ilotsAVendre do: [:i | i calculDistributionOrientation].
	self ilotsAVendre do: [:i | i calculOrientation].
	self ilotsAVendre do: [:i | i codeSystemeCulture].
	self ilotsAVendre do: [:i | i calculDistributionSystemeCulture].
	self ilotsAVendre do: [:i | i calculSystemeCulture]"</body>

<body>venteAleatoire
	| indice finalisation exploitant listeExploitants ilotsVendus |
	ilotsVendus := OrderedCollection new.
	self ilotsAVendre do: 
			[:i | 
			listeExploitants := self exploitants.
			indice := 0.
			finalisation := false.
			[indice &lt; self exploitants size and: [finalisation not]] whileTrue: 
					[indice := indice + 1.
					exploitant := listeExploitants at: indice.
					finalisation := exploitant acheteAleatoire: i.
					finalisation ifTrue: [ilotsVendus add: i]]].
	self ilotsAVendre removeAll: ilotsVendus.
	self ilotsAVendre isEmpty ifFalse: [self halt].
	"self ilotsAVendre do: [:i | i codeOrientation].
	self ilotsAVendre do: [:i | i calculDistributionOrientation].
	self ilotsAVendre do: [:i | i calculOrientation].
	self ilotsAVendre do: [:i | i codeSystemeCulture].
	self ilotsAVendre do: [:i | i calculDistributionSystemeCulture].
	self ilotsAVendre do: [:i | i calculSystemeCulture]"</body>

<body>venteAleatoireControlee
	| indice finalisation exploitant listeExploitants ilotsVendus |
	ilotsVendus := OrderedCollection new.
	self ilotsAVendre do: 
			[:i | 
			listeExploitants := self exploitantsParTaille.
			indice := 0.
			finalisation := false.
			[indice &lt; self exploitants size and: [finalisation not]] whileTrue: 
					[indice := indice + 1.
					exploitant := listeExploitants at: indice.
					finalisation := exploitant acheteAleatoire: i.
					finalisation ifTrue: [ilotsVendus add: i]]].
	self ilotsAVendre removeAll: ilotsVendus.
	self ilotsAVendre isEmpty ifFalse: [self halt].
	"self ilotsAVendre do: [:i | i codeOrientation].
	self ilotsAVendre do: [:i | i calculDistributionOrientation].
	self ilotsAVendre do: [:i | i calculOrientation].
	self ilotsAVendre do: [:i | i codeSystemeCulture].
	self ilotsAVendre do: [:i | i calculDistributionSystemeCulture].
	self ilotsAVendre do: [:i | i calculSystemeCulture]"</body>

<body>venteAleatoireControleeAge
	| indice finalisation exploitant listeExploitants ilotsVendus |
	ilotsVendus := OrderedCollection new.
	self ilotsAVendre do: 
			[:i | 
			listeExploitants := self exploitantsParAge.
			indice := 0.
			finalisation := false.
			[indice &lt; self exploitants size and: [finalisation not]] whileTrue: 
					[indice := indice + 1.
					exploitant := listeExploitants at: indice.
					finalisation := exploitant acheteAleatoire: i.
					finalisation ifTrue: [ilotsVendus add: i]]].
	self ilotsAVendre removeAll: ilotsVendus.
	self ilotsAVendre isEmpty ifFalse: [self halt].
	"self ilotsAVendre do: [:i | i codeOrientation].
	self ilotsAVendre do: [:i | i calculDistributionOrientation].
	self ilotsAVendre do: [:i | i calculOrientation].
	self ilotsAVendre do: [:i | i codeSystemeCulture].
	self ilotsAVendre do: [:i | i calculDistributionSystemeCulture].
	self ilotsAVendre do: [:i | i calculSystemeCulture]"</body>

<body>venteAleatoireReseau
	| indice finalisation exploitant listeExploitants ilotsVendus |
	ilotsVendus := OrderedCollection new.
	self ilotsAVendre do: 
			[:i | 
			listeExploitants := self exploitantsParImplicationReseau.
			indice := 0.
			finalisation := false.
			[indice &lt; self exploitants size and: [finalisation not]] whileTrue: 
					[indice := indice + 1.
					exploitant := listeExploitants at: indice.
					finalisation := exploitant acheteAleatoire: i.
					finalisation ifTrue: [ilotsVendus add: i]]].
	self ilotsAVendre removeAll: ilotsVendus.
	self ilotsAVendre isEmpty ifFalse: [self halt].
	"self ilotsAVendre do: [:i | i codeOrientation].
	self ilotsAVendre do: [:i | i calculDistributionOrientation].
	self ilotsAVendre do: [:i | i calculOrientation].
	self ilotsAVendre do: [:i | i codeSystemeCulture].
	self ilotsAVendre do: [:i | i calculDistributionSystemeCulture].
	self ilotsAVendre do: [:i | i calculSystemeCulture]"</body>

<body>ventePlusPetit
	| indice finalisation exploitant listeExploitants ilotsVendus |
	ilotsVendus := OrderedCollection new.
	self ilotsAVendre do: 
			[:i | 
			listeExploitants := self exploitantsParTaille.
			indice := 0.
			finalisation := false.
			[indice &lt; self exploitants size and: [finalisation not]] whileTrue: 
					[indice := indice + 1.
					exploitant := listeExploitants at: indice.
					exploitant accepteAchat ifTrue: [
						finalisation := true.
						exploitant achete: i.
						ilotsVendus add: i]]].
	self ilotsAVendre removeAll: ilotsVendus.
	self ilotsAVendre isEmpty ifFalse: [self halt].
	"self ilotsAVendre do: [:i | i codeOrientation].
	self ilotsAVendre do: [:i | i calculDistributionOrientation].
	self ilotsAVendre do: [:i | i calculOrientation].
	self ilotsAVendre do: [:i | i codeSystemeCulture].
	self ilotsAVendre do: [:i | i calculDistributionSystemeCulture].
	self ilotsAVendre do: [:i | i calculSystemeCulture]"</body>

<body>venteReseau
	| indice finalisation exploitant listeExploitants ilotsVendus |
	ilotsVendus := OrderedCollection new.
	self ilotsAVendre do: 
			[:i | 
			listeExploitants := self exploitantsParImplicationReseau.
			indice := 0.
			finalisation := false.
			[indice &lt; self exploitants size and: [finalisation not]] whileTrue: 
					[indice := indice + 1.
					exploitant := listeExploitants at: indice.
					exploitant accepteAchat ifTrue: [
						exploitant achete: i.
						ilotsVendus add: i]]].
	self ilotsAVendre removeAll: ilotsVendus.
	self ilotsAVendre isEmpty ifFalse: [self halt].
	"self ilotsAVendre do: [:i | i codeOrientation].
	self ilotsAVendre do: [:i | i calculDistributionOrientation].
	self ilotsAVendre do: [:i | i calculOrientation].
	self ilotsAVendre do: [:i | i codeSystemeCulture].
	self ilotsAVendre do: [:i | i calculDistributionSystemeCulture].
	self ilotsAVendre do: [:i | i calculSystemeCulture]"</body>
</methods>


<class>
<name>Exploitation</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.SpatialEntityNotConnex</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>fonctionnementSpatial distributionFonctionnementSpatial pressionSpatiale foncier exploitant eclatementIlots sau </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.Exploitation</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation class</class-id> <category>parametres</category>

<body>seuilEclatement
	^50</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation</class-id> <category>accessing</category>

<body>distributionFonctionnementSpatial
	^distributionFonctionnementSpatial</body>

<body>distributionFonctionnementSpatial: anObject
	distributionFonctionnementSpatial := anObject</body>

<body>eclatementIlots: anObject
	eclatementIlots := anObject</body>

<body>exploitant
	"Getter accessor without default value "
	^exploitant</body>

<body>exploitant: anObject 
	exploitant := anObject</body>

<body>foncier
	"Getter accessor without default value "
	^foncier</body>

<body>foncier: anObject 
	foncier := anObject</body>

<body>fonctionnementSpatial: anObject 
	| valeur valeurs |
	valeurs := #(#eleveur #grandeExploitationStable #jardinier #exploitantSansTerre #proprietaireTerrien #conjoncturel).
	valeur := anObject.
	(valeur isKindOf: Number) 
		ifTrue: 
			[(valeur between: 1 and: valeurs size) 
				ifTrue: [valeur := valeurs at: valeur]
				ifFalse: [self halt]]
		ifFalse: [(valeurs includes: valeur) ifFalse: [self halt]].
	fonctionnementSpatial := valeur</body>

<body>pressionSpatiale
	"Getter accessor without default value "
	^pressionSpatiale</body>

<body>pressionSpatiale: anObject 
| valeur valeurs |
	valeurs := #(#nonConso #idem #moins #plus).
	valeur := anObject.
	(valeur isKindOf: Number)
		ifTrue: 
			[(valeur between: 1 and: valeurs size) 
				ifTrue: [valeur := valeurs at: valeur]
				ifFalse: [self halt]]
		ifFalse: [(valeurs includes: valeur) ifFalse: [self halt]].
	pressionSpatiale := valeur</body>

<body>sau
	"Getter accessor without default value "
	^sau</body>

<body>sau: anObject 
	sau := anObject</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation</class-id> <category>pov</category>

<body>pov
| i |
	self id notNil
		ifTrue: 
			[i := self id \\ ColorValue constantNames size.
			i = 0 ifTrue: [i := 5].
			^ColorValue constantNames at: i]
		ifFalse: [^ColorValue white]</body>

<body>povEclatementIlots
	(self eclatementIlots isNil or: [self eclatementIlots &lt; self class seuilEclatement])
		ifTrue: [^ColorValue white]
		ifFalse: [^self povId]</body>

<body>povPressionSpatiale
self pressionSpatiale = #nonConso
		ifTrue: [^ColorValue green].
self pressionSpatiale = #moins
		ifTrue: [^ColorValue yellow].
self pressionSpatiale = #idem
		ifTrue: [^ColorValue pink].
self pressionSpatiale = #plus
		ifTrue: [^ColorValue white].
self pressionSpatiale isNil
ifTrue: [^ColorValue red]</body>

<body>povSau
self sau isNil ifTrue: [^ColorValue white].
(self sau &lt; 1)
		ifTrue: [^ColorValue green].
(self sau &gt;= 1 and: [self sau &lt; 5])
		ifTrue: [^ColorValue yellow].
(self sau &gt;= 5 and: [self sau &lt;10])
		ifTrue: [^ColorValue orange].
(self sau &gt;= 10 and: [self sau &lt;20])
		ifTrue: [^ColorValue pink].
(self sau &gt;= 20 and: [self sau &lt;50])
		ifTrue: [^ColorValue red].
(self sau &gt;= 50)
		ifTrue: [^ColorValue black].</body>

<body>povTypeFonctionnement
self fonctionnementSpatial isNil ifTrue: [^ColorValue white].
self fonctionnementSpatial = #eleveur
		ifTrue: [^ColorValue black].
self fonctionnementSpatial = #grandeExploitationStable
		ifTrue: [^ColorValue red].
self fonctionnementSpatial = #jardinier
		ifTrue: [^ColorValue green].
self fonctionnementSpatial = #exploitantSansTerre
		ifTrue: [^ColorValue blue].
self fonctionnementSpatial = #proprietaireTerrien
		ifTrue: [^ColorValue yellow].
self fonctionnementSpatial = #conjoncturel
		ifTrue: [^ColorValue pink].</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation</class-id> <category>display</category>

<body>displayImageOn: aGC 
	| aColor |
	aColor := self color.
	self components do: [:c | c displayOn: aGC withColor: aColor]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation</class-id> <category>calcul</category>

<body>calculDistributionFonctionnementSpatial
	self distributionFonctionnementSpatial: self codeFonctionnementSpatial</body>

<body>calculFonctionnementSpatial
	| distribution randomValue distributionOrdonnee indices distributionCumulee total |
	distribution := self perform: self distributionFonctionnementSpatial.
	distributionOrdonnee := distribution asSortedCollection 
				reject: [:x | x isZero].
	indices := OrderedCollection new.
	distributionCumulee := OrderedCollection new.
	total := 0.
	distributionOrdonnee do: 
			[:x | 
			indices add: (distribution indexOf: x).
			total := total + x.
			distributionCumulee add: total].
	randomValue := Cormas random * 100.
	indices with: distributionCumulee
		do: [:i :x | randomValue &lt; x ifTrue: [^self fonctionnementSpatial: i]]</body>

<body>codeFonctionnementSpatial
	| partColonage partSansTitre c1 c2 c3 c4 |
	partColonage := self components select: [:i | i faireValoir = #colonage].
	partSansTitre := self components select: [:i | i faireValoir = #sansTitre].
	c1 := partColonage size / components size = 1 or: 
					[partSansTitre size / components size = 1 
						or: [(partColonage size + partSansTitre size) / components size = 1]].
	c2 := partColonage isEmpty not or: [partSansTitre isEmpty not].
	c3 := c1 not and: [c2].
	c4 := partColonage isEmpty and: [partSansTitre isEmpty].
	(self exploitant pleinTemps = #false and: [self sau &lt; 3]) 
		ifTrue: [^#d3].
	(self exploitant pleinTemps = #false and: [self sau &gt;= 3]) 
		ifTrue: [^#d5].
	(self exploitant pleinTemps = #true and: [c1]) ifTrue: [^#d4].
	(self exploitant pleinTemps = #true and: [c3]) ifTrue: [^#d62].
	(self exploitant pleinTemps = #true and: [c4 and: [self testEclatementIlots]]) 
		ifTrue: [^#d6].
	(self exploitant pleinTemps = #true 
		and: [c4 and: [self testEclatementIlots not and: [self sau &lt; 1]]]) 
			ifTrue: [^#d16].
	(self exploitant pleinTemps = #true and: 
			[c4 and: 
					[self testEclatementIlots not 
						and: [self sau &gt;= 1 and: [self sau &lt; 5]]]]) 
		ifTrue: [^#d6].
	(self exploitant pleinTemps = #true and: 
			[c4 and: [self testEclatementIlots not and: [self sau &gt;= 5]]]) 
		ifTrue: [^#d26]</body>

<body>coeffChangement
"facteur de pondération entre 0 et 0.3"
	(self fonctionnementSpatial = #eleveur or: 
			[self fonctionnementSpatial = #jardinier 
				or: [self fonctionnementSpatial = #proprietaireTerrien]]) 
		ifTrue: [^0].
	self fonctionnementSpatial = #exploitantSansTerre ifTrue: [^0.1].
	self fonctionnementSpatial = #conjoncturel ifTrue: [^0.2].
	self fonctionnementSpatial = #grandeExploitationStable ifTrue: [^0.3]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation</class-id> <category>dynamique composants</category>

<body>integreIlot: unIlot exploitationOrigine: exploitationOrigine 
	self receiveComponent: unIlot fromEntity: exploitationOrigine.
	unIlot idExploitation: self id.
	unIlot faireValoir: #direct.
	self calculEclatementIlots.
	exploitationOrigine calculEclatementIlots.</body>

<body>loueIlot: unIlot exploitationOrigine: exploitationOrigine 
"l'îlot est loué au plus petit de la zone, qui va choisir son orientation en fonction du nouveau fonctionnementSpatial de l'exploitation"
	self receiveComponent: unIlot fromEntity: exploitationOrigine.
	unIlot idExploitation: self id.
	unIlot faireValoir: #fermage.
	self calculEclatementIlots.
	exploitationOrigine calculEclatementIlots</body>

<body>loueReseauIlot: unIlot exploitationOrigine: exploitationOrigine 
"l'îlot loué à un membre du réseau est forcément situé près du bourg; il sera donc en MV"
	self halt.
	self receiveComponent: unIlot fromEntity: exploitationOrigine.
	unIlot idExploitation: self id.
	unIlot faireValoir: #fermage.
	self calculEclatementIlots.
	exploitationOrigine calculEclatementIlots.
	unIlot orientationChoisie: #MV.</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation</class-id> <category>caracteristiques spatiales</category>

<body>calculEclatementIlots
	| distanceMax distance |
	distanceMax := 0.
	self components do: 
			[:i1 | 
			self components do: 
					[:i2 | 
					i1 id ~= i2 id 
						ifTrue: 
							[distance := i1 distanceTo: i2.
							distance &gt;= distanceMax ifTrue: [distanceMax := distance]]]].
	self eclatementIlots: distanceMax.
	self miseAJourFoncier</body>

<body>calculSau
"| surfaceParcelle |
surfaceParcelle := Cell surface * self components size"
sau := self components inject: 0 into: [:sum :ilot | sum + ilot sau]</body>

<body>distanceTo: uneExploitation
"plus petite distance entre 1 ilot de l'un et 1 ilot de l'autre"
| distanceMin distance |
	distanceMin := 999.
	self components do: 
			[:i1 | 
			uneExploitation components do: 
					[:i2 | 
					distance := i1 distanceTo: i2.
					distance &lt;= distanceMin ifTrue: [distanceMin := distance]]].
	^distanceMin</body>

<body>testEclatementIlots
	^self eclatementIlots &gt;= self class seuilEclatement</body>

<body>testPlusieursIlots
	^self components size &gt; 1</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation</class-id> <category>distributions de fonctionnement sp.</category>

<body>d16
	^#(50 0 0 0 0 50)</body>

<body>d26
	^#(0 90 0 0 0 10)</body>

<body>d3
	^#(0 0 100 0 0 0)</body>

<body>d4
	^#(0 0 0 100 0 0)</body>

<body>d5
	^#(0 0 0 0 100 0)</body>

<body>d6
	^#(0 0 0 0 0 100)</body>

<body>d62
	^#(0 25 0 0 0 75)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation</class-id> <category>control</category>

<body>miseAJourFoncier
	self components isEmpty 
		ifFalse: 
			[self calculSau.
			self testEclatementIlots.
			self calculDistributionFonctionnementSpatial.
			self calculFonctionnementSpatial]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitation</class-id> <category>probes</category>

<body>eclatementIlots
	^eclatementIlots</body>

<body>fonctionnementSpatial
	"Getter accessor without default value "
	^fonctionnementSpatial</body>
</methods>


<class>
<name>Exploitant</name>
<environment>CormasNS.Models.PhytoBv</environment>
<super>CormasNS.Kernel.AgentLocation</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>age pleinTemps exploitation resGpt resComForte resComSimple implicationReseau safer groupements exploitantsCommSimple exploitantsCommForte retraite </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PhytoBvCategory</category>
</class>

<shared-variable>
<name>CurrentId</name>
<environment>CormasNS.Models.PhytoBv.Exploitant</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
</shared-variable>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant class</class-id> <category>id</category>

<body>CurrentId
	^CurrentId isNil 
		ifTrue: [0] 
		ifFalse: [CurrentId]</body>

<body>CurrentId: x
	^CurrentId := x</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant class</class-id> <category>parameters</category>

<body>ageRetraite
	^60</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>init</category>

<body>init
	"to be completed. The inherited attributes should have been already initialized"</body>

<body>initId
	self id: (self class CurrentId: self class CurrentId + 1)</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>accessing</category>

<body>age
	"Getter accessor without default value "
	^age</body>

<body>age: anObject 
	age := anObject</body>

<body>exploitation
	"Getter accessor without default value "
	^exploitation</body>

<body>exploitation: anObject 
	exploitation := anObject</body>

<body>ilots
	^self exploitation components</body>

<body>ilotsInBourg
	^self ilotsPossedes
		select: [:i | i contrainte = #ProxBourgMR and: [i contrainte = #ProxBourgAB]]</body>

<body>ilotsNonPossedes
	^self exploitation components reject: [:i | i faireValoir = #direct]</body>

<body>ilotsOutBourg
	^self ilotsPossedes 
		reject: [:i | i contrainte = #ProxBourgMR and: [i contrainte = #ProxBourgAB]]</body>

<body>ilotsPossedes
	^self exploitation components select: [:i | i faireValoir = #direct]</body>

<body>pleinTemps
	"Getter accessor without default value "
	^pleinTemps</body>

<body>pleinTemps: anObject 
	pleinTemps := anObject</body>

<body>retraite
	"Getter accessor with default value = false "
	retraite isNil ifTrue:[retraite := false]. 
	
	^retraite</body>

<body>retraite: anObject 
	retraite := anObject</body>

<body>safer
	"Getter accessor without default value "
	^safer</body>

<body>safer: anObject 
	safer := anObject</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>test</category>

<body>appartientClasseAge: n 
	n = 1 ifTrue: [^self age &lt; 41].
	n = 2 ifTrue: [^self age &lt; 51].
	n = 3 ifTrue: [^self age &lt; 61].
	n = 4 ifTrue: [^self age &gt; 60]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>calcul</category>

<body>coeffChangement
"un facteur de pondération entre 0 et 0.6"

	^self implicationReseau * 0.6</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>achat - vente</category>

<body>accepteAchat
	^Cormas random &lt; self probabiliteRealisationAchat</body>

<body>achete: ilot 
	self exploitation integreIlot: ilot exploitationOrigine: ilot exploitation.
	Transcript tab.
	('L''exploitant n° ', self id printString, ' achete l''ilot n° ', ilot id printString) printOn: Transcript.
	Transcript flush.</body>

<body>acheteAleatoire: ilot 
	| decision |
	decision := Cormas random &lt; self probabiliteRealisationAchatAleatoire.
	decision 
		ifTrue: 
			[self exploitation integreIlot: ilot exploitationOrigine: ilot exploitation].
	^decision.</body>

<body>probabiliteRealisationAchat
	self exploitation fonctionnementSpatial = #exploitantSansTerre ifTrue: [^0.5].
	self exploitation fonctionnementSpatial = #conjoncturel ifTrue: [^0.6].
	self exploitation fonctionnementSpatial = #grandeExploitationStable ifTrue: [^0.4].
	^0</body>

<body>probabiliteRealisationAchatAleatoire
	self exploitation fonctionnementSpatial = #exploitantSansTerre 
		ifTrue: [^0.3].
	self exploitation fonctionnementSpatial = #conjoncturel ifTrue: [^0.3].
	self exploitation fonctionnementSpatial = #grandeExploitationStable 
		ifTrue: [^0.3].
	self exploitation fonctionnementSpatial = #eleveur ifTrue: [^0.3].
	self exploitation fonctionnementSpatial = #proprietaireTerrien 
		ifTrue: [^0.3].
	self exploitation fonctionnementSpatial = #jardinier ifTrue: [^0.3].
	^0</body>

<body>vente: ilots 
	"self testCommForte 
	ifTrue: 
	[self halt	c'est ici qu'il serait interessant de tester la vente directe à ses potes...]. 
	
	pour l'instant: envoi systématique des ilots à vendre à la SAFER"

	self safer rajouteIlotsAVendre: ilots.</body>

<body>vente: ilots reseau: exploitants 
	(Cormas mixt: exploitants) do: 
			[:unAmi | 
			unAmi accepteAchat 
				ifTrue: 
					[ilots do: [:ilot | unAmi achete: ilot].
					^true]].
	^false</body>

<body>ventePlusPetit: ilots 
	"self testCommForte 
	ifTrue: 
	[self halt	c'est ici qu'il serait interessant de tester la vente directe à ses potes...]. 
	
	pour l'instant: envoi systématique des ilots à vendre à la SAFER"
	| ilotsIds |
	ilotsIds := ''.
	ilots do: [:i | ilotsIds := ilotsIds, ' ', i id printString].
	('			Les îlots ', ilotsIds, ' seront mis en vente par la SAFER') printOn: Transcript. Transcript cr; flush.

	self safer rajouteIlotsAVendre: ilots.</body>

<body>venteReseau: ilots 
	| finalisation |
	finalisation := false.
	self exploitantsCommForte notEmpty 
		ifTrue: [finalisation := self vente: ilots reseau: self exploitantsCommForte].
	(finalisation not and: [self exploitantsCommSimple isEmpty not]) 
		ifTrue: [finalisation := self vente: ilots reseau: self exploitantsCommSimple].
	finalisation 
		ifFalse: 
			['	Location réseau infructueuse, délégation à la SAFER' printOn: Transcript.
			Transcript flush.
			self safer rajouteIlotsAVendre: ilots]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>control</category>

<body>step
	self vieillir.
	(self retraite not and: [self testRetraite]) 
		ifTrue: 
			[self succession.
			self retraite: true]</body>

<body>stepOp
	self vieillir.
	(self retraite not and: [self testRetraite]) 
		ifTrue: 
			[self successionOp.
			self retraite: true]</body>

<body>stepReseau
	self vieillir.
	(self retraite not and: [self testRetraite]) 
		ifTrue: 
			[self successionReseau.
			self retraite: true]</body>

<body>vieillir
	self age: self age + 1</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>essais</category>

<body>integreJachere
	| probaChangement |
	self exploitation structureSpatiale &gt; 6 
		ifTrue: 
			[probaChangement := 0.1.
			Cormas random &lt; probaChangement 
				ifTrue: [self ilots do: [:i | i systemeCulture: #jachere]]]</body>

<body>integreJachereRotation
	| probaChangement |
	self exploitation structureSpatiale &gt; 6 
		ifTrue: 
			[probaChangement := 0.1.
			Cormas random &lt; probaChangement 
				ifTrue: [self ilots do: [:i | i systemeCulture: #jachereRotation]]]</body>

<body>integreJachereTous
	| probaChangement |
	probaChangement := 0.1.
	Cormas random &lt; probaChangement 
		ifTrue: [self ilots do: [:i | i systemeCulture: #jachere]]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>retraite</category>

<body>miseEnFriche: ilots 
	| ilotsIds |
	ilotsIds := ''.
	ilots do: [:i | ilotsIds := ilotsIds, ' ', i id printString].
	Transcript tab.
	('Les îlots ', ilotsIds, ' sont mis en friche') printOn: Transcript. Transcript flush.
	ilots do: 
			[:i | 
			i
				idExploitation: nil;
				orientationChoisie: #friche;
				systemeCulture: #traditionnel]</body>

<body>miseEnMV: ilots 
	| ilotsIds |
	ilotsIds := ''.
	ilots do: [:i | ilotsIds := ilotsIds, ' ', i id printString].
	('			Les îlots ', ilotsIds, ' sont mis en MV') printOn: Transcript. Transcript cr; flush.

	ilots do: 
			[:i | 
			i
				idExploitation: nil;
				orientationChoisie: #MV;
				BP: true]</body>

<body>miseEnVente: ilots 
"selon la surface de l'îlot, si elle dépasse le seuil de référence, soit l'îlot est vendu au plus petit exploitant de la zone, soit un jeune exploitant (inconnu) la récupère"
| ilotsMoinsUr ilotsSupUr |
	('		dont ', ilots size printString, ' îlots éloignés du bourg qu''il met en vente') printOn: Transcript. Transcript cr; flush.

ilotsMoinsUr := self exploitation components 
				select: [:i | i rapportUr = #moinsUr].
ilotsSupUr := self exploitation components 
			select: [:i | i rapportUr = #supUr].
ilotsSupUr isEmpty ifFalse: [self installeJeuneSurIlotCultive: ilotsSupUr].
ilotsMoinsUr isEmpty ifFalse: [self ventePlusPetit: ilotsMoinsUr]</body>

<body>passassion
	self ilotsOutBourg isEmpty ifFalse: [self vente: self ilotsOutBourg].
	self ilotsInBourg isEmpty ifFalse: [self miseEnFriche: self ilotsInBourg]</body>

<body>passassionReseau
	self ilotsOutBourg isEmpty ifFalse: [self venteReseau: self ilotsOutBourg].
	self ilotsInBourg isEmpty ifFalse: [self miseEnFriche: self ilotsInBourg]</body>

<body>printRetraite
	Transcript cr.
	'L''exploitant n° ' , self id printString , ' part à la retraite !!!' 
		printOn: Transcript.
	Transcript
		cr;
		tab.
	'Il possédait ' , self ilotsPossedes size printString 
		, ' îlots en faire-valoir direct et ' 
			, self ilotsNonPossedes size printString , ' autres îlots' 
		printOn: Transcript.
	Transcript
		cr;
		flush</body>

<body>proprioSpecule: ilots 
"on sélectionne parmi les îlots reppris par le propriétaire, ceux dont la surface est supérieure à l'Unité de Référence (def dans îlot) : le droit d'exploiter est donné à un nouvel exploitant [principe de l'accès à la terre pour les jeunes diplomés, dans le contrôle des structures]. Si les îlots ont leur surface inférieure à l'Unité de Référence, ils sont loués au plus petit de la zone d'étude [principe de l'agrandissement des petites exploitations pour viabilité, du contrôle des structures"
| ilotsSupUr ilotsMoinsUr |
ilotsSupUr := self exploitation components select: [:i | i rapportUr = #supUr].
ilotsMoinsUr := self exploitation components reject: [:i | i rapportUr = #supUr].
self installeJeuneSurIlotCultive: ilotsSupUr.
self locationPlusPetit: ilotsMoinsUr</body>

<body>retourProprio: ilots 
"le propriétaire récupère ses terres. Si elles sont en friche, la procédure de récupération des terres incultes est lancée; sinon, le contrôle des structures est appliqué"
	| ilotsFriche ilotsNonFriche |
	ilotsFriche := self exploitation components 
				select: [:i | i orientation = #friche].
	ilotsNonFriche := self exploitation components 
				reject: [:i | i orientation = #friche].
	self installeJeuneSurFriche: ilotsFriche.
	self proprioSpecule: ilotsNonFriche</body>

<body>retraiteSpecule: ilots 
"selon la localisation des îlots, proche des bourgs ou non, le retraité met en vente, ou spécule sur le passage de l'îlot en zone constructible et loue, en priorité à un membre de son réseau fort"
	self ilotsOutBourg isEmpty ifFalse: [self miseEnVente: self ilotsOutBourg].
	self ilotsInBourg isEmpty ifFalse: [self locationReseau: self ilotsInBourg]</body>

<body>succession
	self printRetraite.
	self ilotsPossedes isEmpty ifFalse: [self passassion].
	self ilotsNonPossedes isEmpty 
		ifFalse: [self miseEnFriche: self ilotsNonPossedes]</body>

<body>successionOp
	"selon le faire valoir des îlots du retraité, ils sont rendus à leur propriétaire, ou restent entre les mains du retraité, avant d'être mis en vente ou loués"

	self printRetraite.
	self ilotsPossedes isEmpty 
		ifFalse: [self retraiteSpecule: self ilotsPossedes].
	self ilotsNonPossedes isEmpty 
		ifFalse: [self retourProprio: self ilotsNonPossedes]</body>

<body>successionReseau
	self printRetraite.
	self ilotsPossedes isEmpty 
		ifFalse: [self passassionReseau].
	self ilotsNonPossedes isEmpty 
		ifFalse: [self miseEnFriche: self ilotsNonPossedes]</body>

<body>testRetraite
	^self age &gt;= self class ageRetraite</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>reseaux</category>

<body>calculImplicationReseau
"implication reseau est un indice synthétique, entre 0 (implication nulle) et 1 (implication max)"
| triplet indice |
	triplet := Array new: 3 withAll: 0.
	self testGroupements ifTrue: [triplet at: 1 put: 1].
	self testCommForte ifTrue: [triplet at: 2 put: 1].
	self testCommSimple ifTrue: [triplet at: 3 put: 1].
	indice := triplet last + (2 * (triplet at: 2)) + (4 * triplet first).
	self implicationReseau: (indice / 7) asFloat</body>

<body>exploitantsCommForte
	exploitantsCommForte isNil ifTrue: [exploitantsCommForte := Set new].
	^exploitantsCommForte</body>

<body>exploitantsCommForte: anObject
	exploitantsCommForte := anObject</body>

<body>exploitantsCommSimple
	exploitantsCommSimple isNil ifTrue: [exploitantsCommSimple := Set new].
	^exploitantsCommSimple</body>

<body>exploitantsCommSimple: anObject
	exploitantsCommSimple := anObject</body>

<body>groupements
	groupements isNil ifTrue: [groupements := Set new].
	^groupements</body>

<body>groupements: anObject
	groupements := anObject</body>

<body>implicationReseau
	"Getter accessor without default value "
    ^implicationReseau isNil ifTrue: [0] ifFalse: [implicationReseau]</body>

<body>implicationReseau: anObject 
	implicationReseau := anObject</body>

<body>printReseaux
	| labelGpt labelResCommForte labelResCommSimple |
	labelGpt := 'Groupements'.
	(self groupements collect: [:aGpt | aGpt nom asString]) asSortedCollection
		do: [:aString | labelGpt := labelGpt , ' ' , aString].
	labelResCommForte := 'Reseau Communication Forte'.
	(self exploitantsCommForte collect: [:ex | ex id]) asSortedCollection
		do: [:int | labelResCommForte := labelResCommForte , ' ' , int printString].
	labelResCommSimple := 'Reseau Communication Simple'.
	(self exploitantsCommSimple collect: [:ex | ex id]) asSortedCollection
		do: [:int | labelResCommSimple := labelResCommSimple , ' ' , int printString].
	Transcript cr.
	'Exploitant n° ' , self id printString , ' Implication reseau = ' 
		, self implicationReseau printString printOn: Transcript.
	Transcript cr.
	Transcript tab.
	labelGpt printOn: Transcript.
	Transcript cr.
	Transcript tab.
	labelResCommSimple printOn: Transcript.
	Transcript cr.
	Transcript tab.
	labelResCommForte printOn: Transcript.
	Transcript cr</body>

<body>resComForte
	"Getter accessor without default value "
	^resComForte</body>

<body>resComForte: anObject 
	resComForte := anObject</body>

<body>resComSimple
	"Getter accessor without default value "
	^resComSimple</body>

<body>resComSimple: anObject 
	resComSimple := anObject</body>

<body>resGpt
	"Getter accessor without default value "
	^resGpt</body>

<body>resGpt: anObject 
	resGpt := anObject</body>

<body>testCommForte
	^self exploitantsCommForte isEmpty not</body>

<body>testCommSimple
	^self exploitantsCommSimple isEmpty not</body>

<body>testGroupements
	^self groupements isEmpty not</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>newExploitant</category>

<body>installationJeune: ilots 
"le nouvel exploitant repprend la culture qui était en place. Applique BP à son nouvel îlot"	
ilots do: 
			[:i | 
			i idExploitation: nil;
				BP: true]</body>

<body>installationJeuneAnanas: ilots 
"le nouvel exploitant met l'îlot en ananas et applique de donnes pratiques"	
ilots do: 
			[:i | 
			i
				idExploitation: nil;
				BP: true;
				orientationChoisie: #ananas]</body>

<body>installationJeuneBanane: ilots 
"le nouvel exploitant met l'îlot en banane et applique de donnes pratiques"
	ilots do: 
			[:i | 
			i
				idExploitation: nil;
				BP: true;
				orientationChoisie: #banane]</body>

<body>installationJeuneFruits: ilots 
"le nouvel exploitant met l'îlot en fruits et applique de donnes pratiques"
	ilots do: 
			[:i | 
			i
				idExploitation: nil;
				BP: true;
				orientationChoisie: #fruits]</body>

<body>installationJeuneMV: ilots 
	"le nouvel exploitant met l'îlot en MV et applique de donnes pratiques"

	ilots do: 
			[:i | 
			i
				idExploitation: nil;
				BP: true;
				orientationChoisie: #MV]</body>

<body>installationJeunePrairie: ilots 
"le nouvel exploitant met l'îlot en prairie et applique de donnes pratiques"
	ilots do: 
			[:i | 
			i
				idExploitation: nil;
				BP: true;
				orientationChoisie: #prairie]</body>

<body>installeJeuneSurFriche: ilots 
"l'îlot qui était en friche est reppris par un nouvel agriculteur, inconnu sur la zone, qui choisit la culture qu'il va mettre en place sur l'îlot acquis en fonction de la surface de l'îlot (selon l'Unité de Référenc fixée par le contrôle des structures) et de sa localisation" 

	| ilotsPrAnanas ilotsPrBanane ilotsPrFruits ilotsPrMV ilotsPrPrairie |
	
	ilotsPrAnanas := self exploitation components select: [:i | i vocation = #ilotPrAnanas].
	ilotsPrBanane := self exploitation components select: [:i | i vocation = #ilotPrBanane].
	ilotsPrFruits := self exploitation components select: [:i | i vocation = #ilotPrFruits].
	ilotsPrMV := self exploitation components select: [:i | i vocation = #ilotPrMV].
	ilotsPrPrairie := self exploitation components select: [:i | i vocation = #ilotPrPrairie].
	self installationJeuneAnanas: ilotsPrAnanas.
	self installationJeuneBanane: ilotsPrBanane.
	self installationJeuneFruits: ilotsPrFruits.
	self installationJeuneMV: ilotsPrMV.	
	self installationJeunePrairie: ilotsPrPrairie</body>

<body>installeJeuneSurIlotCultive: ilots 
"l'îlot qui était en culture est reppris par un nouvel agriculteur, inconnu sur la zone, qui garde la culture qui était en place mais instaure BP" 
	| ilotsIds |
	ilotsIds := ''.
	ilots do: [:i | ilotsIds := ilotsIds, ' ', i id printString].
	('			Installation d''un jeune sur les îlots ', ilotsIds) printOn: Transcript. Transcript flush.
	ilots do: 
			[:i | 
			i
				idExploitation: nil;
				BP: true]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>location</category>

<body>beLocated
	| ilot parcelle cell |
	ilot := Cormas selectRandomlyFrom: self exploitation components.
	parcelle := Cormas selectRandomlyFrom: ilot components.
	cell := Cormas selectRandomlyFrom: parcelle components.
	cell notNil ifTrue: [self moveTo: cell]</body>
</methods>

<methods>
<class-id>CormasNS.Models.PhytoBv.Exploitant</class-id> <category>bail</category>

<body>accepteLocation
	^Cormas random &lt; self probabiliteRealisationLocation</body>

<body>locationPlusPetit: ilots 
	self safer rajouteIlotsALouer: ilots.</body>

<body>locationReseau: ilots 
"le retraité, pour être certain de pouvoir récupérer sa terre quand elle sera constructible, va louer en priorité à un membre de son réseau fort; 
à défaut, loue à un membre de son réseau simple; 
sinon: à n'importe qui de la zone d'étude. 
Il exige en plus que son locataire mette son îlot en MV, avec BP (bonnes pratiques)"

	| finalisation |
	finalisation := false.
	self exploitantsCommForte notEmpty 
		ifTrue: [finalisation := self locationReseauCommForte: ilots].
	(finalisation not and: [self exploitantsCommSimple isEmpty not]) 
		ifTrue: [finalisation := self locationReseauCommSimple: ilots].
	finalisation 
		ifFalse: 
			['	Location réseau infructueuse, délégation à la SAFER' printOn: Transcript.
			Transcript flush.
			self safer rajouteIlotsALouer: ilots]</body>

<body>locationReseauCommForte: ilots 
	| ilotsIds |
	ilotsIds := ''.
	(Cormas mixt: self exploitantsCommForte) do: 
			[:unBonCopain | 
			unBonCopain accepteLocation 
				ifTrue: 
					[ilots do: 
							[:ilot | 
							self exploitation loueReseauIlot: ilot
								exploitationOrigine: ilot exploitation.
							ilotsIds := ilotsIds , ' ' , ilot id printString].
					'	Les îlots ' , ilotsIds , ' sont loués à un bon copain !' 
						printOn: Transcript.
					Transcript flush.
					^true]].
	^false</body>

<body>locationReseauCommSimple: ilots 
	| ilotsIds |
	ilotsIds := ''.
	(Cormas mixt: self exploitantsCommSimple) do: 
			[:unCopain | 
			unCopain accepteLocation 
				ifTrue: 
					[ilots do: 
							[:ilot | 
							self exploitation loueReseauIlot: ilot
								exploitationOrigine: ilot exploitation.
							ilotsIds := ilotsIds , ' ' , ilot id printString].
					'	Les îlots ' , ilotsIds , ' sont loués à un simple copain !' 
						printOn: Transcript.
					Transcript flush.
					^true]].
	^false</body>

<body>locationReseauGroupement: ilots 
	| ilotsIds |
	ilotsIds := ''.
	(Cormas mixt: self groupements) do: 
			[:unBonCopain | 
			unBonCopain accepteLocation 
				ifTrue: 
					[ilots do: 
							[:ilot | 
							self exploitation loueReseauIlot: ilot
								exploitationOrigine: ilot exploitation.
							ilotsIds := ilotsIds , ' ' , ilot id printString].
					'	Les îlots ' , ilotsIds , ' sont loués à un bon copain !' 
						printOn: Transcript.
					Transcript flush.
					^true]].
	^false</body>

<body>loue: ilot 
	| decision |
	decision := Cormas random &lt; self probabiliteRealisationLocation.
	decision 
		ifTrue: 
			[self exploitation loueIlot: ilot exploitationOrigine: ilot exploitation].
	^decision.</body>

<body>probabiliteRealisationLocation
	self exploitation fonctionnementSpatial = #exploitantSansTerre ifTrue: [^0.5].
	self exploitation fonctionnementSpatial = #conjoncturel ifTrue: [^0.6].
	self exploitation fonctionnementSpatial = #jardinier ifTrue: [^0.4].
	^0</body>
</methods>



</st-source>
