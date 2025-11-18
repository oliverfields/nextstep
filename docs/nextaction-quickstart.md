# NextAction🎬️ Quickstart Guide

## What is NextAction🎬️?

**NextAction🎬️** is a lightweight, narrative-driven framework for tracking project tasks. It helps small teams focus on **the next action** required to move the project forward. By breaking down work into **actionable steps** and updating a shared **narrative** file, teams can stay aligned, track progress, and evolve their project in real time.

This guide will walk you through how to use **NextAction🎬️** in your team.

---

## Why Use NextAction🎬️?

Simple and Flexible: No need for complicated tools or systems. Everything lives in a simple text file that’s easy to update and track.

Focus on What’s Next: The framework always keeps your team aligned on the next action needed, avoiding distractions and ensuring consistent progress.

Collaboration: Everyone can contribute to the project narrative and stay in the loop by reading and updating the shared file.

Track Progress Over Time: By marking actions as DONE and adding freeform notes, you can easily see the evolution of the project.

## Key Benefits:

- Lightweight, text-based tracking that requires minimal onboarding/training.
- Flexible enough for small teams and evolving projects.
- Keeps everyone aligned and focused on the next action.
- Easily integrated into existing shared document tools (text file in git, wiki page or Confluence).


## Core Concepts

- **Narrative**: The story of your project. It evolves as tasks are completed and new ones are added.  
- **ACTION**: A task that needs to be done, marked as **pending**.  
- **DONE**: A task that has been completed, marked with a strikethrough.
- **@assignee**: Tag team members responsible for each action.
- **Narrative session**: Regularly scheduled meeting to update and agree on next actions
- **Commit messages are the ACTION lines**

### Example:

```markdown
# Sports Stats Website


## Phase 1: Research

DONE: Research competitor websites @alic
Reasearched:
- CNN
- EuroSport

DONE Define user personas @bob
See wiki/peronas

DONE Stakeholder meeting @carol
Carol led the meeting with stakeholders to align on branding and target demographics. Notes added to Confluence.


## Phase 2: Design

DONE Wireframe homepage layout @alice
Alice starts with the mobile layout based on Phase 1 research. Share the wireframe with the team for feedback once ready.  

ACTION Product page design @bob

ACTION Review designs with stakeholders @carol


## Notes:

- Alice's homepage wireframe should align with feedback from the stakeholder meeting last week.
- Need to adjust product page layout based on mobile-first strategy discussed.
```

## How to Use NextAction🎬️

###  Create Your Narrative File
Start with a markdown file called project-name.narrative. Each project can have its own narrative file. This file will serve as the living record of your project's progress.

### Define Actions
As tasks come up, write them as ACTION lines with the format:

```
ACTION Task description @assignee
```

These lines are what needs doing to progress. Tasks must start with either ACTION or DONE, be no longer than one line and can optionally have a @assignee.

When a task is done replace **ACTION** with **DONE**.

### The narrative deserves context

Between the tasks, feel free to add notes, thoughts, and observations to provide context or updates on the project.

```
## Phase 2: Design (In Progress)
ACTION Wireframe homepage layout @alice
Alice starts with the mobile layout based on Phase 1 research. Share the wireframe with the team for feedback once ready.

## Notes:
- Alice's homepage wireframe should align with feedback from the stakeholder meeting last week.
- Need to adjust product page layout based on mobile-first strategy discussed.
```

## The Narrative sessions

Hold regular narrative sessions where the team updates the file in-session:
- Review and mark actions as DONE.
- Identify and discuss the new ACTIONS to move forward


**NextAction🎬️ – Keeping teams aligned and moving forward**
