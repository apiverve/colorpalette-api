from setuptools import setup, find_packages

setup(
    name='apiverve_colorpalettegenerator',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Color Palette Generator produces harmonious color schemes from any HEX base color. It returns color codes in HEX and RGB formats, naming matches, dark-mode flags, and recommended text colors.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/colorpalette?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
