% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preferences.R
\name{game_fix_action_preferences}
\alias{game_fix_action_preferences}
\title{Set add a large amount of utility if a player plays a particular action}
\usage{
game_fix_action_preferences(game, ..., actions = list(...), util.add = 1000)
}
\arguments{
\item{...}{directly the named arguments from which \code{actions} will be constructed}

\item{actions}{a named list. The names correspond to action names and the values either to fixed values of the action or to a formula. If it is a formula
the action value can depend on earlier computed variables.}
}
\description{
Allows to study the game under the assumption that a player strongly prefers
to chose one particular move of an action variable.
}
\details{
If you want to fix mixed strategies, use the he related function \code{\link{game_fix_action_preferences}} transforms the corresponding action into a move of nature.

For fixing pure strategies \code{\link{game_fix_action_preferences}}
is preferable when using the \code{gambit-logit} solver that can
find sequential equilibria, by using logit trembles.
}
\seealso{
Other Fix Actions: \code{\link{game_fix_actions}},
  \code{\link{game_prefer_outcomes}}

Other Preferences: \code{\link{game_prefer_outcomes}},
  \code{\link{game_set_preferences}},
  \code{\link{pref_change_params}},
  \code{\link{pref_custom}}, \code{\link{pref_envy}},
  \code{\link{pref_heterogeneous_players}},
  \code{\link{pref_ineqAv}}, \code{\link{pref_lossAv}},
  \code{\link{pref_payoff}}
}
