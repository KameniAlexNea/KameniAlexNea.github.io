---
title: "Medivocate – Exploring African History and Culture with AI"
excerpt: "An AI-powered platform exploring African history, culture, and traditional medicine, fostering understanding and appreciation of the continent's rich heritage.
 <br/><img src='/images/medivocate.jpg'>"
collection: portfolio
---
# [Medivocate](https://huggingface.co/spaces/alexneakameni/medivocate)

An AI-driven platform empowering users with trustworthy, personalized history guidance to combat misinformation and promote equitable history.

## Project Overview

Medivocate is an AI-powered platform designed to provide an engaging and informative experience in exploring African history, culture, and traditional medicine. By combining Retrieval-Augmented Generation (RAG) techniques with state-of-the-art AI models, the platform enables users to delve into Africa's rich heritage through accurate, contextually relevant insights. The application is deployed as a Hugging Face Space and showcases the intersection of technology and cultural preservation.

## Project Objectives

1. **Promote Understanding of African Heritage:**
   * Provide users with accurate and accessible information about African history, culture, and traditional knowledge systems.
   * Highlight the role of traditional African medicine as a key aspect of cultural identity.
2. **Leverage Advanced AI Techniques:**
   * Employ Retrieval-Augmented Generation (RAG) for precise and context-aware responses.
   * Utilize Optical Character Recognition (OCR) to process historical documents and enrich the knowledge base.
3. **Engage a Diverse Audience:**
   * Create an interactive and inclusive platform for researchers, educators, and enthusiasts.
   * Combat misinformation about Africa's history and promote accurate narratives.

## Methodology

The project integrates several components to achieve its goals:

1. **Data Understanding and Preparation:**
   * Curated datasets covering African history, cultural milestones, and traditional medicinal practices.
   * Preprocessed documents and texts using OCR tools like EasyOCR, PyMuPDF, and pdf2image for seamless digitization.
2. **Knowledge Retrieval and Interaction:**
   * **Retrieval-Augmented Generation (RAG):**
     Combined language models with ChromaDB and BM25 ranking for effective document retrieval and context-driven answers.
   * **Keyphrase Extraction:**
     Used KeyBERT to extract key themes and phrases, enhancing query relevance and document indexing.
3. **Interactive User Interface:**
   * Built with **Gradio**, offering an intuitive interface for users to ask questions and receive AI-generated insights.

## Project Structure

```
📦 ./
├── 📁 docs/
├── 📁 src/
│   ├── 📁 ocr/
│   ├── 📁 preprocessing/
│   ├── 📁 chunking/
│   ├── 📁 vector_store/
│   ├── 📁 rag_pipeline/
│   ├── 📁 llm_integration/
│   └── 📁 prompt_engineering/
├── 📁 tests/
│   ├── 📁 unit/
│   └── 📁 integration/
├── 📁 examples/
├── 📁 notebooks/
├── 📁 config/
├── 📄 README.md
├── 📄 CONTRIBUTING.md
├── 📄 requirements.txt
├── 📄 .gitignore
└── 📄 LICENSE
```

## Tools and Technologies

* **AI Frameworks and Libraries:**
  * **LangChain:** A framework for developing applications powered by large language models (LLMs), simplifying the entire application lifecycle with open-source components and third-party integrations.
  * **LangSmith:** Helps debug, evaluate, and monitor language models and intelligent agents, working with any LLM Application.
  * **Ollama and ChromaDB** for RAG and model orchestration.
  * **Hugging Face** for deploying the application and accessing pre-trained language models.
  * **Groq:** Provides access to high-performance LLM APIs with free-tier support for RAG applications, ideal for quick prototyping and testing.
  
* **OCR and Text Processing:**
  * EasyOCR, PyMuPDF, pdf2image, and Pillow for extracting text from historical documents.
  
* **Search and Indexing:**
  * **Hugging Face + Chroma, BM25** for efficient document retrieval and search indexing.
  * **🤗 Datasets:** A lightweight library providing one-line dataloaders for many public datasets and efficient data pre-processing capabilities.
  
* **Development and Deployment Tools:**
  * Gradio for the user interface.
  * Python and key libraries like tqdm and rank_bm25 for backend processing.

## Project Report

Medivocate provides a seamless experience for users to explore African history, leveraging AI to enhance educational outreach. The platform effectively integrates traditional knowledge systems, making them accessible to modern audiences. Detailed documentation is available, outlining the methodologies, challenges, and solutions implemented in the project.

## Outcome and Future Work

* **Cultural Impact:**
  Medivocate enriches understanding of African heritage, fostering global appreciation for its history and traditions.
* **Educational Outreach:**
  The platform serves as a resource for schools, universities, and independent researchers, promoting accurate knowledge about Africa.
* **Continuous Development:**
  Future plans include expanding datasets, incorporating additional languages, and enhancing interactivity for broader reach.

## Explore Medivocate

* **GitHub:** [Medivocate Repository](https://github.com/KameniAlexNea/medivocate)
* **Deployed Application:** [Medivocate on Hugging Face](https://huggingface.co/spaces/alexneakameni/medivocate)
