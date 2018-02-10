rm(list=ls(all=TRUE))

N = 500;

dirSrc <- "/Users/miroslav/ndethcmml/ScSPM/image/patch/0"
dirDst <- "/Users/miroslav/ndethcmml/ScSPM/image/patch_1k_1/0"

# check if the directory exists and create one if not
dir.create(dirDst, recursive = T, showWarnings = F) # file.path(mainDir, subDir)
fSrcList <- list.files(dirSrc, pattern = "\\.jpg$", ignore.case = T, full.names = T)

# randomly sample N files without repetition
fSrcListSelected <- fSrcList[sample(1:length(fSrcList), N, replace = F)] 

# clear the destination directory first
do.call(file.remove, list(list.files(dirDst, full.names = TRUE)))

# copy selected files to the destination directory
file.copy(fSrcListSelected, dirDst)