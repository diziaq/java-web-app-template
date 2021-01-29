Go through the tree each time you plan to start or significantly change your project.
At each node in the tree ask question "is this true for my project?".
If YES -> expand the node with concrete details based on current state of the project and how they were achieved.
          (so it could be shown that developer understands what is going on, and it is not just a lucky coincidence)
If NO -> create child nodes (two or more) which in summary cover the parent node statement
            and describe a success criteria/goal (statement) in each node

Detalise each joint according with specific of your project.
"Ziggy" - generic name for "any developer on the project".
---

0. My project is healthy \
0.1 Project is easy to contribute to \
0.1.1 Ziggy can build main artifact easily \
0.1.2 Ziggy can run app locally with a single command in terminal \
0.1.2.1 All third party services are mocked by default and require not manual setup \
0.1.2.2 Project describes installation of every necessary tool (i.e. builder, SDK) \
0.1.3 Ziggy can send a bug report recognizable for others \
0.1.3.1 Project describes bug report format (detalisation, reproduction steps, urgency, etc.) \
0.1.3.2 Project describes URL of bug submit page \
0.1.3.3 Project describes expectations and workflow of a bug handling \


0.2 Project is protected from dirty code
0.2.1 Project contains importable formatting rules (codestyle.xml)

0.2.2 Project uses static linters to 
0.2.3 Project preserves 100% test coverage
0.2.3.1 Commit is not allowed to reduce test coverage rate
 

0.3 Project conforms with [12 factors app rules](https://12factor.net)

-----------------------------------

TODO:
  it is better to improve "developer experience"
   
  maybe we need to move from "Stories", "Developer Intentions"
  and leaf nodes give concrete instruction what to do
 
  Ziggy is to add code
     Ziggy is to fix bug     
     Ziggy is to implement new feature
     Ziggy is to refactor
       
  Ziggy is to deploy
  
  Ziggy is to run project locally
