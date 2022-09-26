# Machine Learning Trading Bot

The firm constantly competes with the other major firms to manage and automatically trade assets in a highly dynamic environment. In recent years, the firm has heavily profited by using computer algorithms that can buy and sell faster than human traders.

The speed of these transactions gave the firm a competitive advantage early on. But, people still need to specifically program these systems, which limits their ability to adapt to new data. This notebook is planning to improve the existing algorithmic trading systems and maintain the firm’s competitive advantage in the market. To do so, the notebook will enhance the existing trading signals with machine learning algorithms that can adapt to new data.

It will do this by reading in the CSV file(emerging_markets_ohlcv.csv) and running the original algorithm. From there the notebook will adjust the baseline algorithm to see if a new outlook might perform better. It will then test a different classifier to see if this can improve performance.

All three methods will be evaluated and reported upon in an accompanying report (EvaluationReport.md).

---

## Technologies

This project utilizes a lot of different add ons, please make sure you have all these and they are up to date:

* [JupyterLab 3.4.4](https://jupyter.org/) - For the notebook creation and running of the code.

* [pandas 1.4.3](https://github.com/pandas-dev/pandas/blob/main/README.md) - For reading the csv files and other operations.

* [numpy 1.21.5](https://https://numpy.org/) - Loaded in, used in a few the operations...maybe?

* [scikit-learn v1.1.1](https://scikit-learn.org/stable/index.html) - For scaling the data, classification reports, and machine learning models.

---

## Installation Guide

All of the above items should be installed from previous notebooks.

---

## Usage

To access the credit risk notebook, please begin by typing jupyter lab in your terminal. 

```python
jupyter lab
```

Next, find the folder with the notebook(machine_learning_trading_biot.ipynb) and double click it to open the notebook in a new launcher. Then, begin running through each section of the application to get the appropriate data.

Once in the notebook it will take you through a step-by-step process as it Collects the Data, Prepares the Data, and Analyzes the Data.
Graphs will be plotted of the data to give a visual idea of how it is working. These graphs will be saved to .png files in the Plots folder. They will be evaluated and explained in the evaluation report (EvaluationReport.md) that will be accompanying this notebook.

We do believe everything is thoroughly explained, but please let us know if you have any further questions.

---
## Contributors

### Matthew Stream
m.stream3663@gmail.com

[LinkedIn](https://www.linkedin.com/in/matthew-stream-mba-215634102/)

---

## License

MIT