from setuptools import setup, find_packages

setup(
    name='apiverve_colorpalettegenerator',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Color Palette is a powerful tool for generating harmonious color palettes. Generate color schemes (mono, contrast, triade, tetrade, analogic) with accessibility data, CSS exports, and palette images.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/colorpalette?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
