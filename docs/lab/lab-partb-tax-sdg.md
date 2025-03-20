# Lab B: InstructLab: Taxonomy Creation, and Synthetic Data Generation

InstructLab is a framework that leverages synthetic data generation to fine-tune large language models (LLMs). It uses taxonomies to structure data in a way that aligns with specific skills and knowledge. The following process outlines how the taxonomy is created and how synthetic data is generated. Please note that these steps are provided for informational purposes only. You will not perform these steps in this lab.

#### 1. Taxonomy Creation

InstructLab’s taxonomy structure serves as the foundation for the model’s fine-tuning process. A taxonomy is a hierarchical structure that categorizes knowledge into "skills" (performative actions) and "knowledge" (fact-based information). This organized data is crucial for generating synthetic data that can be used to improve LLMs.

To create a taxonomy, the process starts with cloning the taxonomy repository from a designated Git link. The taxonomy is stored in a specific directory:

```
/root/.local/share/instructlab/taxonomy/
```

Within this directory, the taxonomy is organized into various subdirectories, such as `compositional_skills`, `foundational_skills`, and `knowledge`. These directories represent different categories of skills and knowledge, and the structure is crucial for how synthetic data will be generated later.

A command like `ilab taxonomy diff` is used to list the files that have been added or changed within the taxonomy repository. This helps track updates and new contributions to the taxonomy.

Example:
```
ilab taxonomy diff
compositional_skills/grounded/linguistics/inclusion/qna.yaml
knowledge/science/animals/birds/black_capped_chickadee/qna.yaml
```

Each `qna.yaml` file within the taxonomy contains question-and-answer pairs that represent the knowledge and skills for a particular task or domain.

#### 2. Generating Synthetic Data

Synthetic data generation is a key component of InstructLab. It involves using pre-existing models and a series of prompts to generate new, structured data that can be used to fine-tune LLMs.

##### 2.1 Setting Up the Teacher Model

The first step in generating synthetic data is to download a teacher model. In this case, the `Mistral-7B-Instruct-v0.3` model is used, which is a large-scale LLM pre-trained for instruction-following tasks. The model is downloaded using the `ilab model download` command:

```
ilab model download --repository mistralai/Mistral-7B-Instruct-v0.3
```

##### 2.2 Serving the Teacher Model

Once the model is downloaded, it must be served to generate data. This is done using the `ilab model serve` command, which hosts the model and makes it available for generating responses:

```
ilab -v model serve --model-path /root/.cache/instructlab/models/mistralai/Mistral-7B-Instruct-v0.3 --backend vllm --gpus 2 -- --served-model-name teacher
```

##### 2.3 Generating Synthetic Data

With the teacher model running, the next step is to generate synthetic data using the `ilab data generate` command. This command sends data requests to the teacher model, which produces synthetic examples based on the provided taxonomy and prompt templates:

```
ilab data generate --endpoint-url http://127.0.0.1:8000/v1 --sdg-scale-factor 1 --pipeline simple --model teacher --output-dir /root/generated
```

This command generates new synthetic data and saves it to the `/root/generated` directory. The generated data can then be reviewed to ensure that the synthetic examples align with the desired skills and knowledge.

#### 3. Key Components of Synthetic Data Generation

- **Skills Recipes**: These are templates that define input-output pairs for a specific skill. They are used to generate new examples based on the taxonomy and existing knowledge.
  
- **Teacher Model**: A pre-trained LLM that generates responses and instruction data based on input prompts. InstructLab uses models like `Mistral-7B-Instruct-v0.3` for this purpose.

- **SDG (Synthetic Data Generation)**: The process of using a teacher model to generate new data examples that can be used for model fine-tuning. The data is generated based on the taxonomy and structured templates, ensuring it fits within the organized knowledge system.

#### 4. Iterative Model Tuning

After generating synthetic data, InstructLab uses the LAB (Large-Scale Alignment for ChatBots) method to fine-tune the model. The synthetic data is used to update and improve the base model, ensuring it retains existing knowledge while incorporating new capabilities.

-----

In summary, InstructLab's approach to model fine-tuning involves creating a structured taxonomy, generating synthetic data from it, and using that data to iteratively improve an LLM.