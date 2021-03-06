% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/game.r
\name{game_gambit_solve}
\alias{game_gambit_solve}
\title{Solve equilibria of a game using Gambit}
\usage{
game_gambit_solve(game, gambit.command = NULL, mixed = FALSE,
  just.spe = TRUE, qre.lambda = NULL,
  gambit.dir = first.non.null(getOption("gtree.gambit.dir"), ""),
  efg.dir = NULL, efg.file = NULL, verbose = isTRUE(game$options$verbose
  >= 1), add.q.flag = TRUE, ...)
}
\arguments{
\item{game}{the game object created with new_game}

\item{gambit.command}{A Gambit command line command with options but not file name. For example \code{"gambit-enummixed -q"} to compute all extreme point mixed equilibria. The different Gambit command line solvers are described here:
\url{http://www.gambit-project.org/gambit16/16.0.0/tools.html}
If left as NULL a default gambit command line solver with appropriate arguments will be chosen, depending on your arguments for mixed and just.spe}

\item{mixed}{relevant if no explicit gambit.command is given. If FALSE (default) only pure strategy equilibria will be computed, otherwise try to compute one mixed equilibrium.}

\item{just.spe}{if TRUE compute only SPE. If FALSE all NE will be computed.}

\item{qre.lambda}{if not NULL compute a \href{https://en.wikipedia.org/wiki/Quantal_response_equilibrium}{logit QRE equilibrium} using the \href{https://gambitproject.readthedocs.io/en/latest/tools.html#gambit-logit-compute-quantal-response-equilbria}{gambit-logit} solver and the specified value of lambda.}

\item{gambit.dir}{The directory where to find the Gambit command line solvers. Ideally, you put this directory into the search path of your system and can keep the default \code{gambit.dir = ""}. To globally change the default directory adapt the following code \code{options(gtree.gambit.dir = "/PATH/TO/GAMBIT")}}

\item{efg.dir}{To solve via Gambit we first write the game tree into an .efg file. If \code{efg.dir} is NULL (default), the file will be written to a temporary directory. But you can also specify a custom directory here, e.g. if you want to take a look at the file.}

\item{efg.file}{If NULL a default file name for the efg file will be generated based on the name of the game and the specified preferences. But you can specify a custom name here.}

\item{verbose}{if TRUE show some extra information}

\item{add.q.flag}{The gambit command line solver should always be called with the option "-q" for gtree to be able to parse the returned output. If add.q.flag is TRUE we will add this flag if you have not yet added it to your \code{gambit.command}}
}
\description{
You need to install Gambit \url{http://www.gambit-project.org} to
use this function.
}
\seealso{
Other eq: \code{\link{eq_cond_expected_outcomes}},
  \code{\link{eq_cond_outcomes}},
  \code{\link{eq_expected_outcomes}}, \code{\link{eq_li}},
  \code{\link{eq_outcomes}}, \code{\link{eq_tables}},
  \code{\link{game_gambit_solve_qre}},
  \code{\link{game_solve_spe}}

Other Gambit: \code{\link{game_write_efg}}
}
