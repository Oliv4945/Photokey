#include "eeprom.h"
#include "i2c.h"

void eeprom_write_byte(uint16_t address, uint8_t data)
{
    if (HAL_I2C_Mem_Write(&hi2c1, EEPROM_I2C_ADDRESS, address, I2C_MEMADD_SIZE_16BIT, &data, 1, EEPROM_TIMEOUT) != HAL_OK)
    {
        Error_Handler();
    }
    // Wait until not busy thanks to a "selective read"
    // TODO: Make it work without the delay
    HAL_Delay(10);
    eeprom_read_bytes(0x00, &data, 1);
}

void eeprom_read_bytes(uint16_t address, uint8_t *data, uint8_t size)
{
    if (HAL_I2C_Mem_Read(&hi2c1, EEPROM_I2C_ADDRESS, address, I2C_MEMADD_SIZE_16BIT, data, size, EEPROM_TIMEOUT) != HAL_OK)
    {
        Error_Handler();
    }
}