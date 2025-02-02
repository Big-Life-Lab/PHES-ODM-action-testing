% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/files-validation.R
\name{validate_files_sheet}
\alias{validate_files_sheet}
\title{Validate files sheet}
\usage{
validate_files_sheet(dictionary_name, version, dictionary_path)
}
\arguments{
\item{dictionary_name}{string containing the file dictionary name.}

\item{version}{string containing the dictionary version.}

\item{dictionary_path}{string containing path to the dictionary directory.}
}
\value{
2 lists containing csvs to export and another list containing excels to export.
}
\description{
Validate files sheet and its internal content for proper file creation.
}
