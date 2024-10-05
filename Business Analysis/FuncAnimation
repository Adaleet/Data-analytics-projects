import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

# Parameters
sample_size = 10
sample_amount = 1000
sample = [56, 101, 78, 67, 93, 87, 64, 72, 80, 69]
result = []

# Create a figure and axis
fig, ax = plt.subplots()
ax.set_xlim(50, 110)
ax.set_ylim(0, 200)
ax.set_title('Updating Histogram of Bootstrap Sample Means')
ax.set_xlabel('Mean Value')
ax.set_ylabel('Frequency')

# Function to update the histogram
def update(frame):
    # Generate a random sample with replacement
    randomized_sample = np.random.choice(sample, sample_size, replace=True)
    randomized_sample_mean = np.mean(randomized_sample)
    result.append(randomized_sample_mean)
    
    # Clear the axis and create a new histogram
    ax.clear()
    ax.hist(result, bins=30, color='skyblue', edgecolor='black', alpha=0.7)
    ax.set_xlim(50, 110)
    ax.set_ylim(0, 200)
    ax.set_title('Updating Histogram of Bootstrap Sample Means')
    ax.set_xlabel('Mean Value')
    ax.set_ylabel('Frequency')

# Create an animation
ani = FuncAnimation(fig, update, frames=100, interval=500)  # Update every 500 milliseconds

plt.show()
