% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/game.r
\name{game_solve_spe}
\alias{game_solve_spe}
\title{Solve equilibria of a game}
\usage{
game_solve_spe(game, mixed = FALSE, just.spe = TRUE, use.gambit = mixed |
  !just.spe, verbose = isTRUE(game$options$verbose >= 1),
  gambit.command = NULL, ...)
}
\arguments{
\item{game}{the game object created with new_game}

\item{use.gambit}{solve via Gambit. Changing \code{mixed} or \code{just.spe} or specifying a \code{gambit.command} has only impact if \code{use.gambit=TRUE}.  See \code{\link{game_gambit_solve}} for details.}
}
\description{
With the default arguments the internal gtree solver is used
to find all pure strategy subgame perfect equilibria of the game.
}
\seealso{
Other eq: \code{\link{eq_cond_expected_outcomes}},
  \code{\link{eq_cond_outcomes}},
  \code{\link{eq_expected_outcomes}}, \code{\link{eq_li}},
  \code{\link{eq_outcomes}}, \code{\link{eq_tables}},
  \code{\link{game_gambit_solve_qre}},
  \code{\link{game_gambit_solve}}
}
