PPV <- function(sensitivity, specificity, prevalence){
    numerator <- sensitivity * prevalence
    denominator <- numerator + (1 - specificity) * (1 - prevalence)
    numerator / denominator
}
PPV(.997, .985, .001)

NPV <- function(sensitivity, specificity, prevalence){
    numerator <- specificity * (1 - prevalence)
    denominator <- numerator + (1 - sensitivity) * prevalence
    numerator / denominator
}
NPV(.93, .88, .05)

positiveDLR <- function(sensitivity, specificity){
    sensitivity / (1 - specificity)
}
positiveDLR(.997, .985) # should be large

negativeDLR <- function(sensitivity, specificity){
    (1 - sensitivity) / specificity
}
negativeDLR(.997, .985) # should be small
