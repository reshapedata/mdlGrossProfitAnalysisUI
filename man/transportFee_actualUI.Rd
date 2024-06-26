% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transportFee_actual.R
\name{transportFee_actualUI}
\alias{transportFee_actualUI}
\title{返利生成生成器界面}
\usage{
transportFee_actualUI(
  tabTitle = "运费明细表财务口径",
  colTitles = c("操作区域", "操作区域", "显示区域"),
  widthRates = c(6, 6, 12),
  func_left = transportFee_actualUI_left,
  func_right = transportFee_actualUI_right,
  func_bottom = transportFee_actualUI_bottom
)
}
\arguments{
\item{tabTitle}{标题}

\item{colTitles}{主页标题}

\item{widthRates}{左右比例}

\item{func_left}{左函数}

\item{func_right}{右函数}

\item{func_bottom}{下面一栏}
}
\value{
返回值
}
\description{
返利生成生成器界面
}
\examples{
transportFee_actualUI()
}
