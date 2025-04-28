---
title: "Fine-Tuning GLiNER for Location Mention Recognition (LMR)"
excerpt: "Sept 2024: Fine-Tuning GLiNER for Enhanced Location Mention Recognition in User-Generated Content <br/><img src='/images/gliner-arch.webp'>"
collection: portfolio
---
### Project Description: Improving Location Detection in Text with Fine-Tuned NER

Named Entity Recognition (NER) is crucial for extracting structured information from unstructured text. Location Mention Recognition (LMR), a specific subtask of NER, focuses on identifying geographical locations mentioned in text. This project enhances LMR capabilities, particularly in noisy user-generated content like social media posts, by fine-tuning GLiNER, a state-of-the-art generative NER model. Accurate LMR is vital for applications such as disaster response, event tracking, and location-based services.

#### Objective

The primary objective is to significantly improve the performance (precision, recall, F1-score) of Location Mention Recognition by fine-tuning the GLiNER model on datasets relevant to user-generated content and disaster scenarios. The goal is to create a model adept at identifying location entities even in informal, abbreviated, or misspelled text common in social media.

#### Key Features

- **Advanced NER Model**: Leverages GLiNER (Generalist Linking NER), a powerful generative model capable of recognizing arbitrary entity types without predefined labels during inference.
- **Fine-Tuning for LMR**: Adapts the pre-trained GLiNER model specifically for the task of identifying location mentions, enhancing its specialization.
- **Focus on User-Generated Content**: Trains and evaluates the model on datasets containing noisy text (e.g., tweets, forum posts) to ensure robustness in real-world scenarios.
- **Application-Driven**: Tailored to improve downstream tasks like mapping disaster reports, tracking population movements, or enhancing location-aware recommendations.

#### Methodology

1. **Data Understanding and Preparation:**

   - Select and preprocess relevant datasets containing location mentions, particularly from social media or disaster-related corpora.
   - The dataset used follows the format:
     ```json
     [
         {
             "tokens": [...],
             "ner": [[start_index, end_index, "LOC"]],
             "label": ["location"]
         }
     ]
     ```
   - Pre-processing ensured all entries were clean, well-formatted, and ready for model ingestion.
2. **Model Selection and Fine-Tuning:**

   - **Model Choice:** Fine-tuned a large GLiNER model, specifically the `urchade/gliner_large-v2.1`, which is well-suited for NER tasks involving location detection.
   - Set up the GLiNER model architecture using Hugging Face Transformers.
   - Implement a fine-tuning strategy, involving supervised fine-tuning with labeled LMR data.
   - Experiment with different hyperparameters and training techniques to optimize performance.
3. **Training Setup:**

   - **Training Configuration:**
     - The model was trained for **5 epochs**, using a **constant learning rate** of **1e-6** and batch size of **8**.
     - Regular evaluation checkpoints monitored performance on the test dataset.
     - Model checkpoints were saved periodically, with the best-performing model loaded at the end.
   - **Optimization Techniques:**
     - **Weight Decay:** Applied during fine-tuning to prevent overfitting.
     - **Gradient accumulation** was used to manage memory on a **CUDA-enabled GPU**.
4. **Evaluation and Performance Monitoring:**

   - Evaluate the fine-tuned model rigorously against baseline GLiNER and other NER models on LMR benchmark datasets, focusing on metrics relevant to location extraction accuracy.
   - The training progress and metrics were logged using **Weights and Biases (W&B)** for detailed analysis.
   - Analyze model errors to identify areas for further improvement, particularly concerning informal language and ambiguity.

#### Tools and Technologies

- **Core Concepts**: Named Entity Recognition (NER), Location Mention Recognition (LMR), Natural Language Processing (NLP), Generative AI, Fine-Tuning
- **Models**: GLiNER (and potentially other baseline NER models like spaCy, BERT-NER)
- **Frameworks/Libraries**: Hugging Face Transformers, PyTorch, Weights and Biases (W&B)
- **Datasets**: Publicly available NER/LMR datasets (e.g., CoNLL, WNUT) or custom datasets curated from social media APIs (e.g., Twitter API).

#### Outcome

- **Improved Entity Recognition:** After fine-tuning, the GLiNER model showed significant improvement in recognizing location mentions in noisy and structured datasets.
- **Efficiency in Resource Utilization:** The model was trained on a **CUDA-enabled GPU**, allowing it to process large amounts of data without running into memory constraints.

#### Applications

- **Disaster Response**: Rapidly identifying locations mentioned in emergency calls or social media posts to map affected areas and direct aid.
- **Geospatial Analysis**: Extracting place names from text documents (news articles, reports) for geographic information systems (GIS).
- **Event Detection**: Monitoring social media for mentions of events happening at specific locations.
- **Location-Based Services**: Enhancing recommendation systems or targeted advertising based on locations discussed by users.

#### Future Work

1. **Expand Dataset Coverage:**
   - Include more diverse text sources, such as news articles and forum posts, to improve the model's versatility.
2. **Model Enhancement for Ambiguity Handling:**
   - Further fine-tuning to reduce errors related to ambiguous location names (e.g., "Paris" as a city versus a person's name) by incorporating context-aware training techniques.

**Code:**
The full implementation can be found in the repository linked [here](https://github.com/KameniAlexNea/location_mention_recognition).
