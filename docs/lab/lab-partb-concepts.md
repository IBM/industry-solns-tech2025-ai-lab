# Lab Part B Concepts

In this lab, we will explore how a chatbot interacts with a machine learning model served on a RHEL AI VSI (Virtual Server Instance). The chatbot can summarize documents and answer domain-specific questions. 

We will also investigate the impact of fine-tuning a model on and specialized knowledge, such as IBM Cloud for Financial Services. 

## Lab Concepts Dictionary

### Python Notebook (Jupyter Notebook)

A web-based interactive computing environment that allows users to create and share documents containing live code, equations, visualizations, and narrative text. Jupyter Notebooks are widely used for data science, scientific computing, and education.

### Function (Python programming)

A block of code that performs a specific task or set of tasks. Functions in Python are defined using the `def` keyword and can take arguments and return values.

### Large Language Model (LLM)

A type of artificial intelligence (AI) model that is trained on vast amounts of text data to generate human-like language. LLMs are capable of understanding and responding to natural language inputs.

### InstructLab 

 InstructLab is an open-source project designed to facilitate contributions to Large Language Models (LLMs), allowing developers to create, fine-tune, and experiment with AI models. It sets the groundwork for scalable AI by enabling collaborative development and model enhancement.

 ### Taxonomy (InstructLab topic)

 A taxonomy is a hierarchical structure that categorizes knowledge into "skills" (performative actions) and "knowledge" (fact-based information). This organized data is crucial for generating synthetic data that can be used to improve LLMs.

 ### Synthetic Generated Data (InstructLab topic)

 Synthetic data generation is a key component of InstructLab. It involves using pre-existing models and a series of prompts to generate new, structured data that can be used to fine-tune LLMs.

 ### Teacher Model (InstructLab topic)

 An LLM designed to generate synthetic data and assess the quality of instructions and responses. This process enables the evaluation and refinement of other LLMs through fine-tuning and improvement.

### RHEL AI

Built on top of InstructLab, RHEL AI brings these models to a production-ready environment for individual developers and small teams. RHEL AI simplifies deployment with a single-server setup and integrates InstructLab, creating an efficient platform for testing and deploying generative AI models in real-world use cases without requiring high availability.

### Virtual Server Instance (VSI)

A customizable, on-demand computing environment within IBM Cloud, providing users with dedicated access to virtualized servers, storage, and networking resources.

### Base Model

A pre-trained LLM serving as a foundation for further training, fine-tuning, and adaptation, having developed generalizable knowledge and skills through extensive prior training on various tasks and datasets.

### Fine-tuned Model

A modified version of a pre-trained LLM that has been adapted to a specific task or domain through additional training on relevant data resulting in improved performance and accuracy on the targeted objective.