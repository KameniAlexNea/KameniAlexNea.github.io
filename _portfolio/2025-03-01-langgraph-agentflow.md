---
title: "LangGraph AgentFlow: Orchestrating Complex AI Agent Workflows"
excerpt: "Mar 2025: LangGraph AgentFlow - Python library for automating multi-step AI agent workflows using LangGraph <br/><img src='/images/langgraph-agentflow.jpg'>" # Updated image path
collection: portfolio
---

# LangGraph AgentFlow

**GitHub Repository:** [KameniAlexNea/langgraph-agentflow](https://github.com/KameniAlexNea/langgraph-agentflow)
**PyPI Package:** [pypi.org/langgraph-agentflow/](https://pypi.org/project/langgraph-agentflow/) (Assuming it's published)

AgentFlow is a Python library that automates the orchestration of multi-step agent workflows by integrating intelligent planning, routing, and execution of specialized operations.

## Features

-   **Single-Step Agents**: Create hierarchical agent systems with a router that delegates to specialized agents
-   **Multi-Step Workflows**: Dynamically decompose complex tasks into sequences of steps executed by specialized agents
-   **Tool Integration**: Seamlessly integrate external tools with agents
-   **Planning & Synthesis**: Automatically plan task execution and synthesize results
-   **Built on LangGraph**: Leverages LangGraph for efficient agent orchestration

## Installation

```bash
pip install langgraph-agentflow
```

## Quick Start

### Single-Step Agent

Create a hierarchical agent system with a router that delegates to specialized agents:

```python
from langchain_core.tools import Tool
from langchain_ollama import ChatOllama
from langgraph_agentflow import create_hierarchical_agent

# Initialize LLM
llm = ChatOllama(model="llama3")

# Define agent configurations (assuming tools and descriptions are defined elsewhere)
# news_tools, NEWS_TOOL_DESCRIPTION, sector_tools, SECTOR_TOOL_DESCRIPTION, etc.
agent_config = [
    {
        "name": "news",
        # "tools": news_tools,
        # "description": NEWS_TOOL_DESCRIPTION,
    },
    {
        "name": "sector",
        # "tools": sector_tools,
        # "description": SECTOR_TOOL_DESCRIPTION,
    },
    {
        "name": "ticker",
        # "tools": ticker_tools,
        # "description": TICKER_TOOL_DESCRIPTION,
    },
    {
        "name": "general",
        "description": "Handles general information and queries not specific to other domains",
    },
]

# Create the agent
graph, config, stream_fn, interactive_loop = create_hierarchical_agent(llm, agent_config)

# Use the agent
# stream_fn("What's the latest news about Tesla?")
```

![Single Step Agent Architecture](https://github.com/KameniAlexNea/langgraph-agentflow/blob/main/examples/single.png?raw=true)

### Multi-Step Agent

Create a multi-step agent that breaks complex tasks into simpler subtasks:

```python
from langchain_core.tools import Tool
from langchain_ollama import ChatOllama
from langgraph_agentflow import create_multi_step_agent, invoke_multi_step_agent

# Initialize LLM
llm = ChatOllama(model="llama3.3") # Note: Model name might differ based on availability

# Create the multi-step agent (assuming tools and descriptions are defined elsewhere)
agent = create_multi_step_agent(
    llm=llm,
    agent_tools=[
        {
            "name": "news",
            # "tools": news_tools,
            # "description": NEWS_TOOL_DESCRIPTION,
        },
        {
            "name": "sector",
            # "tools": sector_tools,
            # "description": SECTOR_TOOL_DESCRIPTION,
        },
        {
            "name": "ticker",
            # "tools": ticker_tools,
            # "description": TICKER_TOOL_DESCRIPTION,
        },
        {
            "name": "general",
            "description": "Handles general information and queries not specific to other domains",
        },
    ]
)

# Use the agent
# response = invoke_multi_step_agent(
#     agent,
#     "Compare the recent performance of Tesla and the overall EV market based on news"
# )
```

![Multi Step Agent Architecture](https://github.com/KameniAlexNea/langgraph-agentflow/blob/main/examples/multi.png?raw=true)

## Architecture

AgentFlow is built on two main architectural patterns:

1.  **Single-Step Agents**: Router-based delegation to specialized agents
    *   Router analyzes user requests and delegates to the most appropriate specialized agent
    *   Each agent can access tools relevant to its domain
    *   Useful for clear-cut, domain-specific tasks
2.  **Multi-Step Workflows**: Sequential execution of agent-based subtasks
    *   Planner breaks complex tasks into subtasks
    *   Each subtask is routed to the appropriate specialized agent
    *   Results are synthesized into a comprehensive response
    *   Useful for complex tasks requiring multiple capabilities

## Examples

See the [examples directory on GitHub](https://github.com/KameniAlexNea/langgraph-agentflow/tree/main/examples) for full working examples.

## License

This project is licensed under the MIT License - see the [LICENSE file on GitHub](https://github.com/KameniAlexNea/langgraph-agentflow/blob/main/LICENSE) for details.
