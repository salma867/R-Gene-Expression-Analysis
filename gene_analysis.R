# Gene Expression Filtering
# Control vs Treated Samples

#  Gene names
# ---------------------------------
gene_names <- c("BRCA1", "TP53", "EGFR", "MYC", "PTEN", "KRAS")



#  Expression data


control <- c(5.2, 7.8, 3.1, 9.4, 6.0, 4.5)
treated <- c(8.9, 7.6, 6.7, 12.1, 2.3, 9.8)



#  Named vectors


names(control) <- gene_names
names(treated) <- gene_names



# Vector arithmetic
# Calculate fold change

fold_change <- round(treated / control,3) 



#  Conditional subsetting
# Genes with fold change > 1.5

high_fold_change <- fold_change[fold_change > 1.5]



#  Matrix creation
# Genes x Conditions
expression_matrix <- rbind(
  Control = control,
  Treated = treated
)

expression_matrix <- t(expression_matrix)

dimnames(expression_matrix) <- list(
  gene_names,
  c("Control", "Treated")
)



#  Matrix arithmetic
# Row means without a loop

mean_expression <- round(rowMeans(expression_matrix),3)


# Classification using ifelse()


classification <- ifelse(
  fold_change > 1.2,
  "upregulated",
  ifelse(
    fold_change < 0.8,
    "downregulated",
    "stable"
  )
)



# Convert classification to factor


classification <- factor(
  classification,
  levels = c(
    "upregulated",
    "downregulated",
    "stable"
  )
)


#  Create final results table
 results<- data.frame(
   Gene = gene_names,
  Control = control,
  Treated = treated,
  Fold_Change = fold_change,
  Mean_Expression = mean_expression,
  Classification = classification
)

rownames(results) <- NULL

# Print results


print(results,row.names = FALSE)

cat("\nGenes with fold change > 1.5:\n")
print(high_fold_change)


# Save results

write.table(
  results,
  file = "results.txt",
  sep = "\t",
  row.names = FALSE,
  quote = FALSE
)