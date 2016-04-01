AWS Lambda Machine Learning Skeleton Microservice (AML)
========================================================

A skeleton application for machine learning on the AWS Lambda compute engine written in Python 2.7.

AWS Lambda lets you run code without provisioning or managing servers. You pay only for the compute time you consume - there is no charge when your code is not running. With Lambda, you can run code for virtually any type of application or backend service - all with zero administration.

Unfortunately out of the box Lambda and Python have severe compatibility issues. This skeleton application includes pre-compiled the binaries you are most likely to need on a machine learning project with the compatibility issues already resolved.


What's Inside?
=====================================
**AWS Lambda** lets you run code without provisioning or managing servers. You pay only for the compute time you consume - there is no charge when your code is not running. With Lambda, you can run code for virtually any type of application or backend service - all with zero administration. Just upload your code and Lambda takes care of everything required to run and scale your code with high availability. You can set up your code to automatically trigger from other AWS services or call it directly from any web or mobile app.

**Numpy** NumPy is the fundamental package for scientific computing with Python.

**Pandas** is a Python package providing fast, flexible, and expressive data structures designed to make working with "relational" or "labeled" data both easy and intuitive. It aims to be the fundamental high-level building block for doing practical, real world data analysis in Python. Additionally, it has the broader goal of becoming the most powerful and flexible open source data analysis / manipulation tool available in any language. It is already well on its way toward this goal.

**Scikit-learn** Simple and efficient tools for data mining and data analysis.


As well as the required libraries necessary to run these tools on an amazon linux ami.


Installation
------------

To install, simply:

..

    $ zip from root and upload to AWS Lambda


Static library versions
------------
- numpy (1.10.4)
- pandas (0.18.0)
- Quandl (2.8.9)
- requests (2.9.1)
