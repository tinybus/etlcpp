// SPDX-FileCopyrightText: Copyright 2025 Clever Design (Switzerland) GmbH
// SPDX-License-Identifier: Apache-2.0

#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <etl/string.h>

#define LOG_MODULE_NAME main
LOG_MODULE_REGISTER(main);

extern "C" int main()
{
    etl::string<20> text1 = "Hello";
    etl::string<20> text2 = " World!!!";
    text1 += text2;
    LOG_INF("%s (len: %zu, capacity: %zu)", text1.c_str(), text1.size(), text1.capacity());
    return 0;
}
