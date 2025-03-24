# Notebook Walkthrough Exercise 2 and 3

In this section, you will see the results of the steps outlined in the previous section. First, you will explore a base model's lack of ability to answer questions about IBM Cloud for Financial Services. 

Then you will interact with a fine-tuned model, which has been trained on synthetic generated data (SDG), allowing it to provide more accurate and detailed responses related to IBM Cloud for Financial Services.

## Exercise 2

**Cell 8: Set the endpoint for VSI instance serving base model and chat with the model**

**Action required**: Chat with the base model with the same prompts to learn more about IBM Cloud for Financial Services. The base model is not trained on IBM Cloud for financial services and starts to hallucinate. Try out some of the sample prompts provided in ine notebook.

**Explanation**: <br>
In this cell, we define the URL of the base model server that is being served on a RHEL AI VSI using 
InstructLab. We then use the function defined in Cell 3 to initiate a conversation with the base model.

## Exercise 3

**Cell 9: Chat with fine-tuned model**

**Action required**: Chat with the fine-tuned model with the same prompts from cell 8 to learn more about IBM Cloud for Financial Services. You can re-run this cell as many times as you want with different prompts.

**Explanation**: <br>
In this cell, we define the URL of a fine-tuned model that has been trained on synthetic generated data 
(SGD). We then use the function defined in Cell 3 to initiate a conversation with this fine-tuned model. The 
goal is to highlight some limitations of the base mistral7b model by comparing its performance to the 
fine-tuned one.

View the `qna.yaml` used to train the model on IBM Cloud for Financial Services [here](https://github.com/IBM/industry-solns-tech2025-ai-lab/blob/main/taxonomy/knowledge/technology/fscloud/qna.yaml).
