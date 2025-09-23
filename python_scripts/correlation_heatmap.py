# Python Notebook - Delta Air Lines Customer Satisfaction Analysis

"""
Correlation Heatmap
"""

import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt


# Load SQL result into dataframe
df = pd.read_csv('data/category_rating_by_class.csv')   # Load CSV file into DataFrame

# Split economy vs non-economy
economy = df[df['SEAT_TYPE'] == 'Economy Class'].drop(columns=['SEAT_TYPE'])
non_economy = df[df['SEAT_TYPE'] != 'Economy Class'].drop(columns=['SEAT_TYPE'])

# Compute correlations
corr_economy = economy.corr()
corr_non_economy = non_economy.corr()

# Plot Economy heatmap 
fig1, ax1 = plt.subplots(figsize=(8,6))
sns.heatmap(corr_economy, annot=True, cmap="coolwarm", vmin=0.4, vmax=1, fmt=".2f", ax=ax1)
ax1.set_title("Correlation Heatmap - Economy Class")
plt.show()
fig1.savefig("/tmp/corr_heatmap_economy.png", dpi=180, bbox_inches="tight")

# Plot Non-Economy heatmap
plt.figure(figsize=(8,6))
sns.heatmap(corr_non_economy, annot=True, cmap="coolwarm", vmin=0.4, vmax=1, fmt=".2f")
plt.title("Correlation Heatmap - Non Economy Class")
plt.show()


