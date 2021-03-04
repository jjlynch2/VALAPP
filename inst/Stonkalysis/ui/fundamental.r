fundamental_ui <- tabItem(tabName = "Fundamental",
	h2("Fundamental"),
	tabsetPanel(id="tabSelected",
		tabPanel("Profile",
			br(),
			fluidRow(
				column(6,
					sidebarPanel(
						uiOutput("profile1")
					,width=12, height = 12)
				),
				column(6,
					sidebarPanel(
						uiOutput("profile2")
					,width=12, height = 12)
				)
			),
			fluidRow(
				column(3,
					sidebarPanel(
						uiOutput("am_1")
					,width=12)
				),
				column(3,
					sidebarPanel(
						uiOutput("am_2")
					,width=12)
				),
				column(3,
					sidebarPanel(
						uiOutput("am_3")
					,width=12)
				),
				column(3,
					sidebarPanel(
						uiOutput("am_4")
					,width=12)
				)
			
			),
			fluidRow(
				column(6,
					sidebarPanel(
						uiOutput("ownership_title"),
						uiOutput("instutitional_ui_plot"),
						uiOutput("ownership")
					,width=12)
				),
				column(6,
					sidebarPanel(
						uiOutput("insider_title"),
						uiOutput("ownership_ui_plot"),
						uiOutput("insider")
					,width=12)
				)
			)
		),
		tabPanel("Historical Data",
			fluidRow(
				column(12,
					sidebarPanel(
						fluidRow(
							column(2,
								uiOutput("plotly_control_ui")
							),
							column(1,
								uiOutput("plotly_color")
							),
							column(1,
								uiOutput("plotly_color2")
							),
							column(3,
								uiOutput("plotly_control_ui2")
							)
						),
						fluidRow(
							uiOutput("plotly_chart_ui")
						),
					,width=12)
				)
			),
			fluidRow(
				column(12,
					sidebarPanel(
						br(),
						DT::dataTableOutput('chart_table'),
					,width=12)
				)
			)
		),
		tabPanel("Historical Volatility",
			fluidRow(
				column(12,
					sidebarPanel(
						fluidRow(
							column(2,
								uiOutput("plotly_control_ui_v")
							),
							column(10,
								uiOutput("plotly_control_ui2_v")
							)
						),
						fluidRow(
							uiOutput("plotly_chart_ui_v")
						),
					,width=12)
				)
			),
			fluidRow(
				column(12,
					sidebarPanel(
						br(),
						DT::dataTableOutput('chart_table_v'),
					,width=12)
				)
			)
		), #provide volatility graph and table for open, close, high, low, etc, see market Chameleon for example
		
		###each one will have raw data tables + graphs + regression predictions? Make sure to allow user select of years with a selectizeInput somewhere. 
		tabPanel("Annual Metrics"),
		tabPanel("Quarterly Metrics"),
		tabPanel("DCF"),
		tabPanel("DDM")
	)

)
