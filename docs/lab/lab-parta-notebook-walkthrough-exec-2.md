# Notebook Walkthrough Exercise 2

UPDATE INTRO 

-----

**Cell 9: Add tool that determines the interest rate for a customer**

**No action required**.

**Explanation**: <br>

This cell introduces a new function, `get_interest_rate`, which calculates the interest rate based on the customer’s overall risk. The function takes in the overall risk (as a string, such as "low", "medium", or "high") and returns an interest rate that corresponds to that risk level.

This addition expands the AI agent’s capabilities, allowing it to not only assess risk but also recommend an interest rate based on that risk.

-----

**Cell 10: Re-bind the model configuration with new tools**

**No action required**.

**Explanation**: <br>

This cell re-configures the AI model by binding it with the newly added tool, `get_interest_rate`. It ensures that the agent is aware of and can utilize the new tool.

-----

**Cell 11: Re-define the function that determines whether to continue or not**

**No action required**.

**Explanation**: <br>

This cell updates the logic used by the agent to decide whether it should continue processing a request or not. It incorporates the new tool and redefines the conditions under which the AI should stop or proceed with further actions. This ensures smooth integration of the new interest rate functionality within the existing structure.

-----

**Cell 12: Re-define a new graph with new tools**

**No action required**.

**Explanation**: <br>

In this step, the agent’s operational flow is updated to include the newly added interest rate tool. A new graph is defined that incorporates all the current tools (such as risk assessment and customer data tools) along with the new function for determining interest rates. This ensures the AI can process more complex queries that involve both risk assessment and interest rate determination. 

-----

**Cell 13: Write the query in the box and hit Enter**

**Action required**: Interact with the AI agent by posing a question when prompted. Find example questions in the notebook.

**Explanation**: <br>

 In this cell, you will test the AI’s functionality by asking natural language questions. The AI will process the question, determine the necessary tools to use, and provide a response based on the customer’s data.

-----

**Cell 14: Review the response from the AI agent**

**No action required**.

**Explanation**: <br>

The response will incorporate the new functionality for determining interest rates, alongside the risk analysis. Review the output to confirm that the AI has correctly integrated the new tool and provided a logical answer based on the customer’s risk level. This will validate that the system is working as expected after the updates.