<!-- SPDX-FileCopyrightText: Copyright 2025 Clever Design (Switzerland) GmbH ;
SPDX-License-Identifier: MIT -->
# Using Embedded Template Library (ETL) on ESP32

C++ is a great language to use for embedded applications and templates are a powerful aspect. The standard library can offer a great deal of well tested functionality, but there are some parts of the standard library that do not fit well with deterministic behaviour and limited resource requirements. These limitations usually preclude the use of dynamically allocated memory and containers with open ended sizes.

What is needed is a template library where the user can declare the size, or maximum size of any object upfront. Most embedded compilers do not currently support the standard beyond C++ 03, therefore excluding the programmer from using the enhanced features of the later library.

This is what the ETL attempts to achieve.

Documentation: [ETLCPP](https://www.etlcpp.com/)

## Using ETL

Have a look at the example code: [hello_world](https://github.com/marcel-cd/etlcpp.esp/tree/main/examples/hello_world)

## Contributing

We welcome contributions in the form of code, bug reports, and feedback.

- See [CONTRIBUTING.md](https://github.com/marcel-cd/etlcpp.esp/blob/main/CONTRIBUTING.md) for guidelines.

## Contact

Join the conversation on:
- **[GitHub Discussions](https://github.com/marcel-cd/etlcpp.esp/discussions)** – For general chat or questions.
- **[GitHub Issues](https://github.com/marcel-cd/etlcpp.esp/issues)** – To report bugs or suggest features.
