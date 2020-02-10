/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32l0xx_hal.h"
#include "stm32l0xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */
void enter_stop_mode(void);
void HAL_RTC_AlarmAEventCallback(RTC_HandleTypeDef *hrtc);
void set_rtc_alarm(void);
/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define VBAT_ON_Pin GPIO_PIN_15
#define VBAT_ON_GPIO_Port GPIOC
#define EINK_CS_Pin GPIO_PIN_0
#define EINK_CS_GPIO_Port GPIOA
#define EINK_RESET_Pin GPIO_PIN_1
#define EINK_RESET_GPIO_Port GPIOA
#define EINK_DC_Pin GPIO_PIN_4
#define EINK_DC_GPIO_Port GPIOA
#define SPI_SCK_Pin GPIO_PIN_5
#define SPI_SCK_GPIO_Port GPIOA
#define EINK_BUSY_Pin GPIO_PIN_6
#define EINK_BUSY_GPIO_Port GPIOA
#define SPI_SDI_Pin GPIO_PIN_7
#define SPI_SDI_GPIO_Port GPIOA
#define VBAT_Pin GPIO_PIN_1
#define VBAT_GPIO_Port GPIOB
#define I2C_SCL_Pin GPIO_PIN_9
#define I2C_SCL_GPIO_Port GPIOA
#define I2C_SDA_Pin GPIO_PIN_10
#define I2C_SDA_GPIO_Port GPIOA
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
