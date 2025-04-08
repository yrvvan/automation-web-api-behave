
# Automation with Python

This automation will be covered :
- UI Web Automation
- API Automation

## Prerequisite

Install **python** first in your computer, [here](https://www.python.org/) 

### Installation

And install all of package

run command in your IDE terminal to install **behave**
```bash
  pip install behave
```

run command in your IDE terminal to install **dependencies**
```bash
  pip install -r requirement.txt
```

### Directory Tree
```
My Project
├── config
│   └── endpoints.py
├── features
│   ├── api
│   │   └── file_api.feature
│   ├── web
│   │   └── file_web.feature
│   └── steps
│       ├── step_def_api.py
│       └── step_def_web.py  
├── schemas
│   └── schema.json
├── .env
└── locator.py  
```
    
### How to Run

run all in behave

```
behave
```

run by tagging all
```
behave --tags=all
```


run by specific tagging
```
behave --tags={tag}
```

### Run and Generate the report

```
behave -f allure_behave.formatter:AllureFormatter -o allure-results
```
then
```
allure generate allure-results -o allure-report --clean
```

### Open the report

```
allure serve allure-results
```
![Screenshot 2025-04-08 141332](https://github.com/user-attachments/assets/2a888223-f8cb-4869-ba6e-13bb14297b23)
