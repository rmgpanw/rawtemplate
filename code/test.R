# writeLines(
#   text = "*",
#   con = "data/.gitignore"
# )
#
# writeLines(
#   text = "*",
#   con = "output/.gitignore"
# )

# gitignore
usethis::use_git_ignore(c("_targets/*",
                          "data/*",
                          "output/*"))


# change workflowr `data` dir to `raw_data`
file.remove("data/README.md")
dir.create("raw_data")

# add folders to .Rbuildignore
# individual files
usethis::use_build_ignore(c("_workflowr.yml"))

# multiple files (note, add both `public` and `docs` directories to cover either
# github or gitlab usage)
usethis::use_build_ignore(c("^_targets*",
                            "^raw_data*",
                            "^output*",
                            "^code*",
                            "^analysis*",
                            "^public*",
                            "^docs*"), escape = FALSE)
