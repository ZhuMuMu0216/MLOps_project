# mlops_project

This is project to study code structure in MLOps course.

## 1. Project structure

The directory structure of the project looks like this:
```txt
├── .github/                  # Github actions and dependabot
│   ├── dependabot.yaml
│   └── workflows/
│       └── tests.yaml
├── configs/                  # Configuration files
├── data/                     # Data directory
│   ├── processed
│   └── raw
├── dockerfiles/              # Dockerfiles
│   ├── api.Dockerfile
│   └── train.Dockerfile
├── docs/                     # Documentation
│   ├── mkdocs.yml
│   └── source/
│       └── index.md
├── models/                   # Trained models
├── notebooks/                # Jupyter notebooks
├── reports/                  # Reports
│   └── figures/
├── src/                      # Source code
│   ├── project_name/
│   │   ├── __init__.py
│   │   ├── api.py
│   │   ├── data.py
│   │   ├── evaluate.py
│   │   ├── models.py
│   │   ├── train.py
│   │   └── visualize.py
└── tests/                    # Tests
│   ├── __init__.py
│   ├── test_api.py
│   ├── test_data.py
│   └── test_model.py
├── .gitignore
├── .pre-commit-config.yaml
├── LICENSE
├── pyproject.toml            # Python project file
├── README.md                 # Project README
├── requirements.txt          # Project requirements
├── requirements_dev.txt      # Development requirements
└── tasks.py                  # Project tasks
```


Created using [mlops_template](https://github.com/SkafteNicki/mlops_template),
a [cookiecutter template](https://github.com/cookiecutter/cookiecutter) for getting
started with Machine Learning Operations (MLOps).


## 2. Guidance: Testing Task Scripts (`tasks.py`)

This section provides instructions for testing the task scripts (`tasks.py`) to ensure the defined tasks work correctly.

### Step 2.1: View Available Tasks

Run the following command to list all tasks defined in the `tasks.py` file:

```bash
invoke --list
```

**Sample output:**
```plaintext
Available tasks:

  build-docs         Build documentation.
  create-environment Create a new conda environment for project.
  dev-requirements   Install development requirements.
  docker-build       Build docker images.
  preprocess-data    Preprocess data.
  requirements       Install project requirements.
  serve-docs         Serve documentation.
  test               Run tests.
  train              Train model.
```

---

### Step 2.2: Test Key Tasks

Run the following key tasks to verify they complete successfully:

#### 1. **Preprocess Data**
Run the task to preprocess the data:
```bash
invoke preprocess-data
```

After running, check if the `data/processed` directory contains the processed data files.

#### 2. **Train Model**
Run the task to train the model:
```bash
invoke train
```

Check the logs to ensure the model training starts and completes successfully.

#### 3. **Test Model**
Run the task to test the model:
```bash
invoke test
```
