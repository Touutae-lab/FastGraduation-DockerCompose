from setuptools import setup


def readme():
    with open("README.md") as f:
        return f.read()


def requirements():
    with open("requirements.txt") as f:
        return [pkg.strip() for pkg in f.readlines() if pkg]


setup(
    name="Fast Graduation for CS CMU - Backend",
    version="0.0.1",
    author="Saksinkarn Petchkuljinda, Pantakan Kanprawet",
    author_email="dward.the.2nd@gmail.com",
    description="This is the backend part of Fast Graduation for CS CMU project.",
    license="MIT",
    url="https://github.com/Touutae-lab/fast-graduation-BackEnd",
    install_requires=requirements(),
    long_description=readme(),
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Topic :: Utilities",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python",
        "Programming Language :: Python :: 3 :: Only",
    ],
)
