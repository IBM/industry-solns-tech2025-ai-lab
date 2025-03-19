## **Exercise 1A**

**Cell 1: Install prerequisite libraries (requests, json, getpass)**

**No action required**.

**Explanation**: <br>
In this cell, we install the necessary Python packages required to interact with the model server. These 
libraries include `requests` for making HTTP requests, `json` for parsing JSON data, and `getpass` for 
securely handling passwords or API keys.

-----

**Cell 2: Set the variables for accessing the model server**

**No action required**.

**Explanation**: <br>
In this cell, we define the model server URL and any necessary authentication credentials. This step is crucial for 
establishing a connection with the model server.

-----

**Cell 3: Define function to chat with model using request package**

**No action required**.

**Explanation**: <br>
This cell defines a Python function that uses the `requests` library to send a POST request to the model 
server, initiating a conversation with the AI agent. The function takes in a prompt as input and returns the 
response from the model.

-----

**Cell 4: Provide a prompt to chat with the served model**

**Action required**: Type a question or statement when prompted, and press Enter to initiate the 
conversation. To exit the chat loop, type `exit` or `quit`. <br>

**Explanation**: <br>
In this cell, we test the AI's functionality by interacting with it using natural language questions or 
statements. The model will process our input and respond accordingly.

## **Exercise 1B**

## CODE SNIPPET INSTRUCTIONS NEED TO BE ADDED

**Cell 5: Insert code snippet to read data**

**No action required**.

**Explanation**: <br>
This cell reads in some sample data from a file stored in IBM Cloud Object Storage. This data is used as an 
external asset for the document summarization use case later on.

-----

**Cell 6: Review the document contents**

**No action required**.

**Explanation**: <br>
In this cell, we review the contents of the document that was just read in from the file.

-----

**Cell 7: Chat with the documents**

**No action required**.

**Action required**: Review the document's content and ask the AI agent questions about it. <br>

**Explanation**: <br>
This cell allows us to interact with the AI using the external asset (document) we just reviewed. We can ask 
questions, get summaries, or even use the document as input for other tasks.

## **Exercise 2**

**Cell 8: Set the endpoint for VSI instance serving base model and chat with the model**

**Action required**: Chat with the base model with the same prompts to learn more about IBM Cloud for Financial Services. The base model is not trained on IBM Cloud for financial services and starts to hallucinate. Try out some of the sample prompts provided in ine notebook.

**Explanation**: <br>
In this cell, we define the URL of the base model server that is being served on a RHEL AI VSI using 
InstructLab. We then use the function defined in Cell 3 to initiate a conversation with the base model.

-----

## **Exercise 3**

**Cell 9: Chat with fine-tuned model**

**Action required**: Chat with the fine-tuned model with the same prompts from cell 8 to learn more about IBM Cloud for Financial Services.

**Explanation**: <br>
In this cell, we define the URL of a fine-tuned model that has been trained on synthetic generated data 
(SGD). We then use the function defined in Cell 3 to initiate a conversation with this fine-tuned model. The 
goal is to highlight some limitations of the base mistral7b model by comparing its performance to the 
fine-tuned one.