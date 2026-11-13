# RSM Assignment: AI-assisted chest radiography
# Simulated data - not real patient data

set.seed(123)

# Simulate 200 patients
n <- 200

data <- data.frame(
  patient_id = 1:n,
  ai_finding = sample(c("Yes", "No"), n,
                      replace = TRUE, prob = c(0.3, 0.7))
)

# Simulate follow-up CT investigations
data$followup_CT <- ifelse(
  data$ai_finding == "Yes",
  rbinom(n, 1, 0.4),
  rbinom(n, 1, 0.1)
)

# Calculate follow-up rates
rates <- aggregate(followup_CT ~ ai_finding,
                   data = data, FUN = mean)

# Create a plot
barplot(
  rates$followup_CT * 100,
  names.arg = rates$ai_finding,
  col = c("steelblue", "orange"),
  ylim = c(0, 50),
  ylab = "Follow-up CT rate (%)",
  xlab = "Additional AI finding",
  main = "Simulated follow-up CT investigations"
)

# Save plot
png("outputs/followup_CT.png", width = 800, height = 600)

barplot(
  rates$followup_CT * 100,
  names.arg = rates$ai_finding,
  col = c("steelblue", "orange"),
  ylim = c(0, 50),
  ylab = "Follow-up CT rate (%)",
  xlab = "Additional AI finding",
  main = "Simulated follow-up CT investigations"
)

dev.off()

