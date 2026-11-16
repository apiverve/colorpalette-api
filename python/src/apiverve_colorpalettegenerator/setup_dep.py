from setuptools import setup, find_packages

setup(
    name='apiverve_colorpalettegenerator',
    version='1.2.6',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Color Palette Generator is a color palette API that builds a harmonious color scheme from one HEX base color. Every plan returns each color's HEX code, closest color name, a dark flag and a legible black or white text color; paid plans add RGB, HSL, WCAG contrast checks, CSS variables and a PNG of the palette.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/colorpalette?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
