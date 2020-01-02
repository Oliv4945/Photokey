#ifndef __eeprom_H
#define __eeprom_H
#ifdef __cplusplus
extern "C"
{
#endif

#include <stdint.h>
#include "main.h"

#define EEPROM_I2C_ADDRESS 0xA0
#define EEPROM_PAGE_SIZE 64
#define EEPROM_TIMEOUT 1000

    void eeprom_write_byte(uint16_t address, uint8_t data);
    void eeprom_read_bytes(uint16_t address, uint8_t *data, uint8_t size);

#ifdef __cplusplus
}
#endif
#endif /* __eeprom_H */