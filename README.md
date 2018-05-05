# Salmonella-Data-Analysis

### COSC 3570 -- Intro to Data Science Group Project

**Project Title:** Examining Salmonella Data from CDC

**Creators:** Nathan Lang, Shoun Abraham, Quinn Furumo, Xavier Gomez

## File Explanation
Files | Explanation
---- | ----
**CODE**
Preliminary Analysis | Viewing our dataset and simply analyzing what we have; some restructuring
Population  Analysis |Seeing how each state compares to its population
Choro of Hospitalizations | Choropleth Map of US showing each states Hospitalizations from 2009-2016
**MODELING**
Logistic Regression (no RFE) | Human chose attributes to train Log Reg model, 10-fold crossvalidation
Logistic Regression (RFE)    | Feature Selection Algorithm used to pick 10 best attributes to train Log Reg model, 10-fold crossvalidation
**CSVS**
CDC_Salmonella_Data | original dataset
Salmonella_updated | cleaned dataset 
salm_up  | same as Salmonella_updated renamed
salm_up2 | drop columns, added dummy variables for descriptive columns, changed Hospitalizations from numerical to binary, NaN values to 0
df_state | salm_up grouped by State used for choropleth
pop | State populations averaged over 2009-2016
Food Groups (excel) | grouped Illnesses by Food Groups 



## Git Tips
- use `git clone https://github.com/Nathanlang14/Salmonella-Data-Analysis` to download repository

- once you have made changes to files, use `git add <filename>` to add files to be committed, i.e. `git add index.html README.md`

- use `git add -A` to add all changed files

- use `git commit -m "commit message blah blah"` to commit the files you have added, including an appropriate commit message explaining what you have done

- use `git push`to sync your commits with the remote version of the repository

- use `git pull` to sync your local repository with the current version of the remote

- use `git reset --hard` to discard local changes so you can pull from github without conflicts

- use `git log --oneline` to show condensed commit history
