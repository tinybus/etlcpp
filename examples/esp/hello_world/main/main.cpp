/*
 *  ETL HelloWorld
 *
 *  SPDX-FileCopyrightText: Copyright 2025 Clever Design (Switzerland) GmbH
 *  SPDX-License-Identifier: MIT
 */

#include <esp_log.h>
#include <freertos/FreeRTOS.h>
#include <freertos/task.h>

#include <etl/string.h>

const char *TAG = "main";

extern "C" void app_main() {
  etl::string<20> text1 = "Hello";
  etl::string<20> text2 = " World!!!";
  text1 += text2;
  ESP_LOGI(TAG, "%s (len: %zu, capacity: %zu)", text1.c_str(), text1.size(),
           text1.capacity());
}
