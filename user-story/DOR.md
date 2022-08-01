# Definition of Ready Best Practices based on Tiago's experience

Usually teams struggles with SDLC and rework, most part of it is because of a poor
definition about what need to be done and lack of understanding by the dev team. In some cases QE end up validating
things that was not previuosly mentioned based on his experience and again, all of this is a waste of time and money
because of rework.

In this list I captured a checklist of items based on my experience to ask the team before considering it as a sprint item candidate
to eliminate any doubt about what needs to be done, this list will be updated over time.

A user story must have:

- Title
- User story well written (As a, I want, So that...)
- Business motivation and Goal described clearly with any relevant metrics (or future success metrics if any)
- Interactive prototype or mockups (web/mobile)
- Any diagram chart flow (when needed)
- Solution adopted and other solution proposals
  - Usually when working on a big feature teams might have different approaches on how to implement/solve the problem
    and to keep a record about decisions made, it's really important to keep it documented somehow (as a Jira comment, a RFC doc or even in the code)
- Acceptance criteria (including any non functional requirement)
- Story points
- How to test it (brand new test cases, what will be automated what won't in which layer: unit, integration, e2e etc.)
  - Thinking about **shift left testing** approach, QE along side team members can specify the scope of testing needed
    so that, anyone can help with the tests (whether adding automated tests or running manual tests)
- Any cross team dependency (requiring cross collaboration)
- Deployment strategy (in case of many services involved, data migration, cache cleanup etc.)
- Delivery strategy (feature flag, canary deployment, A/B testing)
