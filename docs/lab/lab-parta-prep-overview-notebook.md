# Lab Part 1: Prepare Notebook and Notebook Overview

In this section, we will begin by uploading the Python notebook and preparing it for execution, which includes adding an API key to the notebook. Afterwards, we will walk through the notebook's environment and demonstrate how to run the notebook effectively. 
_________

#### Navigate to Project and Upload Notebook

1. Open the Navigation menu to the right, select **watsonx** (at the very bottom)
2. Select **Launch** under watsonx.ai 
3. Open the Navigation menu to the right, and select **View all projects**
4. Find your project and select it 
5. Download the notebook
    * Go to this [Github Link](https://github.com/IBM/industry-solns-tech2025-ai-lab/blob/main/jupyter-notebook/NB-ai-agent-loan-risk-tech2025-lab-a.ipynb)
    * You should now see a preview of the notebook on Github
    * Select the triple dot on the upper right hand corner
    * Select **Download**
6. Upload the notebook <br>
    * Select **New asset** in the upper right-hand corner. <br>
    * Scroll to the **Work with models** section and select **Work with data models in Python or R notebooks** <br>
    * Select **Local file** <br>
    * Upload the notebook you downloaded from Github. 

#### Retrieve and Enter API Key in the Notebook

1. At your project level under the asset list, you will see an **Parameter set** named **UPDATE WITH NAME**
2. Open the parameter set in a new window. Keep this window open until you have added the API key to the notebook. To open in a new window:
    * On Mac: hold down the Command (⌘) key + click the parameter set name.
    * On Windows: Ctrl + click the parameter set name.
3. Copy the API key value under the **Default value** column. You will be pasting it in the next couple of steps. 
    * Highlight the keys value
        * On Mac: **Command (⌘) key + C** to copy the key
        * On Windows **Ctrl + C** to copy the key

#### Overview of Notebook UI

1. Inside the notebook, select **Edit** (the pencil) in the upper right-hand corner
2. Now that you are in Edit mode you can run the notebook.
3. Paste the API key you have copied:
    * On Mac: **Command (⌘) key + V** to paste the key
    * On Windows **Ctrl + V** to paste the key
4. You will now need to run each cell in the notebook. **To run a cell:**
    - Select the cell first so that you see a blue box around it.
    - Select the **play button** in the upper-left hand corner. This will run the selected cell and then advance to the next cell. 
    - When a cell is running it will have an asterisk [*] next to it, indicating it is still running. When completed  bracketed number will appear to the right of the cell indicating the order in which the cells have been executed. For example: **[1]**