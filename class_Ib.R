

dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")

data <- read.csv(file.choose())
view(patient_info)


str(patient_info)
patient_info$gender_fac <- as.factor(patient_info$gender)
str(patient_info)


patient_info$diagnosis_fac <- as.factor(patient_info$diagnosis)
str(patient_info)

patient_info$smoker_fac <- as.factor(patient_info$smoker)
str(patient_info)


patient_info$smoker_binary_fac <- ifelse(patient_info$smoker_fac== "yes",1,0)
str(patient_info)

patient_info$age_int <- as.integer(patient_info$age)
str(patient_info)


View(patient_info)

write.csv(patient_info, file = "clean_data/patient_info_clean.csv")


