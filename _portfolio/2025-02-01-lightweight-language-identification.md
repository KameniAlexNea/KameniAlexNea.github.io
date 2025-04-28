---
title: "Lightweight Language Identification Model (200 Languages)"
excerpt: "Feb 2025: Lightweight BERT-based model for identifying 200 languages, optimized for CPU and deployment <br/><img src='/images/language-detection.png'>"
collection: portfolio
---

### Project Description: Efficient Multi-Lingual Language Identification

Accurate language identification is a fundamental prerequisite for many Natural Language Processing (NLP) tasks, especially in multilingual environments. However, many existing models are computationally heavy or support a limited number of languages. This project introduces a highly efficient, BERT-based transformer model specifically designed for identifying a wide range of languages (200) while maintaining a small footprint suitable for CPU-bound applications.

#### Objective

The primary goal was to develop and train a compact yet accurate language identification model capable of distinguishing between 200 different languages. Key objectives included optimizing the model for real-time performance on standard CPU hardware and ensuring ease of deployment through quantization and standard export formats like ONNX.

#### Key Features

-   **Compact Architecture**: Utilizes a BERT-based model with only 24.5 million parameters, significantly smaller than many standard BERT variants.
-   **Broad Language Coverage**: Trained to identify 200 distinct languages, covering a vast linguistic landscape.
-   **Large-Scale Training Data**: Trained on a substantial dataset of 121 million sentences, ensuring robustness and exposure to diverse linguistic patterns.
-   **CPU Optimization**: Designed to run efficiently on CPUs, making it suitable for environments without dedicated GPUs.
-   **Real-Time Performance**: Optimized for low-latency inference required in real-time applications.
-   **Deployment Ready**: Supports model quantization to further reduce size and computational cost, and can be easily exported to the ONNX format for cross-platform compatibility and optimized inference.

#### Model Architecture

-   **Base Architecture**: BertForSequenceClassification
-   **Hidden Size**: 384
-   **Number of Layers**: 4
-   **Attention Heads**: 6
-   **Max Sequence Length**: 512
-   **Dropout**: 0.1
-   **Vocabulary Size**: 50,257
-   **Total Parameters**: 24.5 million

#### Methodology / Implementation

-   **Dataset**: Trained on the hac541309/open-lid-dataset containing 121 million sentences across 200 languages, split into 90% training and 10% testing sets.
-   **Tokenizer**: Custom BertTokenizerFast with special tokens for [UNK], [CLS], [SEP], [PAD], [MASK]
-   **Training**: 
    - **Hyperparameters**: Learning rate of 2e-5, batch sizes of 256 (training) and 512 (testing), trained for 1 epoch with cosine scheduler
    - **Framework**: Utilized Hugging Face Trainer API with Weights & Biases for experiment tracking and logging
-   **Data Augmentation**: Implemented custom text augmentation strategies to improve model robustness:
    - Removing digits with random probability
    - Shuffling words to introduce variation
    - Selectively removing words
    - Adding random digits to simulate noise
    - Modifying punctuation to handle different text formats
-   **Optimization**: Post-training quantization techniques (e.g., dynamic or static quantization) were applied to reduce model size and accelerate inference speed.
-   **Export**: The optimized model was converted to the ONNX format, allowing it to be run using various ONNX-compatible runtimes across different platforms and programming languages.
-   **Interface**: A Gradio interface was developed for easy demonstration, testing, and interaction with the model.

#### Evaluation Results

-   **Overall Performance Metrics**:
    - Accuracy: 0.9733
    - Precision: 0.9735
    - Recall: 0.9733
    - F1 Score: 0.9733

-   **Script-Level Performance** (selected examples from evaluation on ~12 million texts):
    - Latin (125 languages): 97.32% precision, 97.22% recall
    - Cyrillic (12 languages): 99.13% precision, 98.97% recall
    - Arabic (21 languages): 90.82% precision, 91.34% recall
    - Devanagari (10 languages): 95.04% precision, 94.28% recall
    - Bengali (3 languages): 99.50% precision, 99.29% recall

#### Tools and Technologies

-   **Core Concepts**: Natural Language Processing (NLP), Language Identification, Text Classification, Model Optimization, Transformer Architecture
-   **Models**: BERT-based Transformer
-   **Frameworks/Libraries**: PyTorch, Hugging Face Transformers, ONNX / ONNX Runtime, Weights & Biases
-   **Optimization**: Quantization libraries (e.g., PyTorch's quantization tools)
-   **Interface**: Gradio
-   **Programming Language**: Python

#### Usage Example

```python
from transformers import AutoTokenizer, AutoModelForSequenceClassification, pipeline

tokenizer = AutoTokenizer.from_pretrained("alexneakameni/language_detection")
model = AutoModelForSequenceClassification.from_pretrained("alexneakameni/language_detection")

language_detection = pipeline("text-classification", model=model, tokenizer=tokenizer)

text = "Hello world!"
predictions = language_detection(text)
print(predictions)
```

#### Applications

-   **Content Filtering/Moderation**: Identifying the language of user-generated content for applying appropriate policies.
-   **Customer Support Routing**: Automatically directing incoming user queries to support agents proficient in the detected language.
-   **Multilingual Data Preprocessing**: Tagging text data with its language before further NLP analysis (e.g., translation, sentiment analysis).
-   **Search Engine Enhancement**: Improving search results by considering the language of the query and documents.
-   **Web Crawling**: Identifying the language of web pages during large-scale crawls.

This project delivers a practical and efficient solution for large-scale language identification, balancing broad language coverage with the computational constraints often present in real-world deployment scenarios. The model is publicly available on Hugging Face Hub under the identifier "alexneakameni/language_detection".
