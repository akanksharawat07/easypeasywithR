 parent_folder <- "~/path to the directory where multiple folders are present"

# to assign the name of the file you want to copy to a variable

file_name <- "file.txt"
new_folder <- "~/path of the folder you want to copy the files to"
dir.create(new_folder)
subfolders <- list.dirs(parent_folder, recursive = FALSE)
for (subfolder in subfolders) {
  file_path <- file.path(subfolder, file_name)
  if (file.exists(file_path)) {
   file.copy(from=file_path, to=paste0(new_folder,"/",sub(".*SNPs/", "", subfolder), ".txt"), recursive = TRUE)
  }
}
