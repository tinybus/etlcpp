<!-- SPDX-FileCopyrightText: Copyright 2025 Clever Design (Switzerland) GmbH ;
SPDX-License-Identifier: MIT -->
# Using Embedded Template Library (ETL) 

C++ is a great language to use for embedded applications and templates are a powerful aspect. The standard library can offer a great deal of well tested functionality, but there are some parts of the standard library that do not fit well with deterministic behaviour and limited resource requirements. These limitations usually preclude the use of dynamically allocated memory and containers with open ended sizes.

What is needed is a template library where the user can declare the size, or maximum size of any object upfront. Most embedded compilers do not currently support the standard beyond C++ 03, therefore excluding the programmer from using the enhanced features of the later library.

Documentation: [ETLCPP](https://www.etlcpp.com/)

This repository provides **ESP-IDF** and **Zephyr** implementations.  

## Installing

### ESP-IDF

You can use the component from the Component Registry, or clone the repository to your `components` folder
- Espressif Component Registry: [marcel-cd/etlcpp](https://components.espressif.com/components/marcel-cd/etlcpp/)

### Zephyr / Nordic Connect SDK
Clone the repository to your local `MODULE_EXT_ROOT` directory, have a look at [Zephyr Modules](https://docs.zephyrproject.org/latest/develop/modules.html)

## Using ETL

Have a look at the example code: [hello_world](https://github.com/tinybus/etlcpp/tree/main/examples/hello_world)

## Contributing

We welcome contributions in the form of code, bug reports, and feedback.

- See [CONTRIBUTING.md](https://github.com/tinybus/etlcpp/blob/main/CONTRIBUTING.md) for guidelines.

## Contact

Join the conversation on:
- **[GitHub Discussions](https://github.com/tinybus/etlcpp/discussions)** – For general chat or questions.
- **[GitHub Issues](https://github.com/tinybus/etlcpp/issues)** – To report bugs or suggest features.
