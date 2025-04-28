---
title: "GraphRAG-Tagger: Toolkit for Topic Extraction and Graph Visualization"
excerpt: "Feb 2025: GraphRAG-Tagger - End-to-end toolkit for extracting topics from PDFs and visualizing connections for GraphRAG <br/><img src='/images/graphrag-tagger.jpg'>" # Optional: Add a relevant image path
collection: portfolio
---

### Project Description: GraphRAG-Tagger - Bridging RAG and GraphRAG

GraphRAG-Tagger is a lightweight, end-to-end Python toolkit designed to streamline the process of extracting key topics from PDF documents and visualizing the relationships between these topics as a graph. This tool is particularly useful for those transitioning from traditional Retrieval-Augmented Generation (RAG) systems to more structured GraphRAG approaches, where understanding the connections between information chunks is essential.

#### Objective

The primary objective of GraphRAG-Tagger is to automate the creation of knowledge graphs from unstructured text data (PDFs). By extracting topics and mapping their similarities or connections, the toolkit aims to provide the structural foundation needed for effective GraphRAG implementation, leading to more context-aware and accurate information retrieval.

#### Key Features

-   **Automated Topic Extraction**: Processes PDF documents to identify and extract salient topics or themes within the text using multiple modeling approaches.
-   **PDF Processing**: Efficiently extracts text from PDFs using PyMuPDF.
-   **Text Segmentation**: Splits extracted text into manageable chunks with configurable size and overlap.
-   **Flexible Topic Modeling**: Supports two methods:
    - Scikit-learn: Classic Latent Dirichlet Allocation (LDA) for topic extraction
    - ktrain: A deep-learning-based approach with vocabulary filtering
-   **LLM-Powered Refinement**: Uses language models to clean and classify extracted topics for improved accuracy.
-   **Graph Construction**: Builds a graph where nodes represent extracted topics and edges represent their similarity or co-occurrence, providing a visual map of the document's conceptual structure.
-   **Graph Visualization**: Offers capabilities to visualize the constructed topic graph, allowing users to explore the relationships between different concepts.
-   **RAG to GraphRAG Facilitation**: Simplifies the definition of interactions between data chunks, a crucial step when moving towards graph-based retrieval architectures.
-   **Enhanced Retrieval Workflows**: Enables the creation of structured knowledge bases that can power more sophisticated, context-aware RAG systems.

#### Methodology / How It Works

1.  **PDF Ingestion**: Takes one or more PDF documents as input.
2.  **Text Processing**: Extracts text content from the PDFs using PyMuPDF and preprocesses it (cleaning, chunking with configurable size and overlap).
3.  **Topic Modeling/Extraction**: Applies NLP techniques through either:
    - Scikit-learn's LDA implementation with customizable parameters
    - ktrain's deep learning approach with vocabulary filtering
4.  **LLM-Based Refinement**: Processes extracted topics through language models to clean and improve classification.
5.  **Relationship Identification**: Determines relationships between topics based on similarity metrics.
6.  **Graph Building**: Constructs a graph representation using NetworkX with topics as nodes and relationships as edges.
7.  **Visualization**: Generates a visual representation of the graph where nodes represent text chunks and edges represent topic similarities.

#### Tools and Technologies

-   **Core Concepts**: Retrieval-Augmented Generation (RAG), GraphRAG, Topic Modeling, Information Extraction, Knowledge Graphs, Graph Visualization, Natural Language Processing (NLP)
-   **Programming Language**: Python
-   **Core Dependencies**:
    - PyMuPDF: For extracting text from PDF files
    - scikit-learn & ktrain: For performing topic modeling
    - LLM Client: For enhancing and refining extracted topics
    - NetworkX: For constructing and analyzing graphs
    - Visualization libraries: For rendering the topic graphs
-   **Development Practices**: Designed with CI/CD considerations for potential integration into larger workflows.

#### Installation and Usage

**Installation:**
```bash
pip install graphrag-tagger
```

**Extract Topics from PDFs:**
```bash
python -m graphrag_tagger.tagger \
    --pdf_folder /path/to/pdfs \
    --output_folder /path/to/output \
    --chunk_size 512 \
    --chunk_overlap 25 \
    --n_features 512 \
    --min_df 2 \
    --max_df 0.95 \
    --llm_model ollama:phi4 \
    --model_choice sk
```

**Build a Topic Similarity Graph:**
```bash
python -m graphrag_tagger.build_graph \
    --input_folder /path/to/output \
    --output_folder /path/to/graph \
    --threshold_percentile 97.5
```

#### Applications

-   **Knowledge Management**: Transforming document repositories into structured knowledge graphs for easier navigation and querying.
-   **Research Assistance**: Helping researchers quickly understand the thematic structure and key concepts within large volumes of literature.
-   **Enhanced RAG Systems**: Providing the graph structure needed to build advanced GraphRAG systems for question answering or summarization.
-   **Content Analysis**: Visualizing the main topics and their interconnections within reports, articles, or books.

GraphRAG-Tagger serves as a practical utility for developers and researchers aiming to leverage the power of graph structures in their information retrieval and analysis pipelines.

#### Contributing

Contributions to GraphRAG-Tagger are welcome! Feel free to submit issues or pull requests to help improve the toolkit.
