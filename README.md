## AWS Lambda Machine Learning Skeleton (AML)

A skeleton application for machine learning on the AWS Lambda compute engine written in Python 2.7.

AWS Lambda lets you run code without provisioning or managing servers. You pay only for the compute time you consume - there is no charge when your code is not running. With Lambda, you can run code for virtually any type of application or backend service - all with zero administration.

Unfortunately out of the box Lambda and Python have severe compatibility issues. All packages have to be compiled on an Amazon EC2 AMI and bundled alongside the rest of your code. This repository alleviates some of that pain by including the packages you are likely to need on a machine learning project with the binaries already compiled for the AWS Lambda environment. 


What's Inside?*
=====================================

* **Numpy** NumPy is the fundamental package for scientific computing with Python.

* **Pandas** is a Python package providing fast, flexible, and expressive data structures designed to make working with "relational" or "labeled" data both easy and intuitive. It aims to be the fundamental high-level building block for doing practical, real world data analysis in Python. Additionally, it has the broader goal of becoming the most powerful and flexible open source data analysis / manipulation tool available in any language. It is already well on its way toward this goal.

* **Scikit-learn** Simple and efficient tools for data mining and data analysis.


*Compiled for Amazon Linux AMI


Installation
------------

To install, simply:



    $ zip from root and upload to AWS Lambda


Static library versions
------------
- numpy (1.10.4)
- pandas (0.18.0)
- Quandl (2.8.9)
- requests (2.9.1)
