/* 
 * File:   camera.h
 * Author: Kolijn
 *
 * Created on August 3, 2015, 9:36 AM
 */

#ifndef CAMERA_H
#define	CAMERA_H

void setup_camera();
void capture_camera();

#define COM3 0x0C
#define COM3_ENABLE_SCALING 0x04
#define COM3_DCW_ENABLE 0x02


#define COM7 0x12
#define COM7_SCCB_RESET 0x80
#define COM7_SELECT_CIF 0x20
#define COM7_SELECT_QVGA 0x10
#define COM7_SELECT_QCIF 0x08
#define COM7_ENABLE_COLOR_BAR 0x10
#define COM7_YUV 0x00
#define COM7_RGB 0x04
#define COM7_BAYER_RAW 0x01
#define COM7_PROCESSED_BAYER 0x05
/* About the resolutions:
 *  CIF  is 352 x 240
 *  QVGA is 320 x 240
 *  QCIF is 176 x 144
 */

#define COM15 0x40
#define COM15_RANGE0 0x00
#define COM15_RANGE1 0x80
#define COM15_RANGE2 0xC0
#define COM15_RGB_565 0x10
#define COM15_RGB_555 0x30

#define COM10 0x15
#define COM10_SELECT HSYNC 0x40
#define COM10_PCLK_STILL 0x20
#define COM10_PCLK_REVERS 0x10
#define COM10_HREF_REVERSE 0x08
#define COM10_CHANGE_VSYNC 0x04
#define COM10_VSYNC_NEGATIVE 0x02
#define COM10_HSYNC_NEGATIVE 0x01

#define SCALING_XSC 0x3A
#define SXSC_SHIFTING1 0x40
#define SXSC_8_BAR 0x80
#define SXSC_FADE 0xC0

#define SCALING_YSC 0x3A
#define SYSC_SHIFTING1 0x40
#define SYSC_8_BAR 0x80
#define SYSC_FADE 0xC0

#define COM8 0x13
#define COM8_FAST_AGC 0x80
#define COM8_AEC_LIMIT_STEP_SIZE 0x40
#define COM8_BANDING_FILTER 0x20
#define COM8_AGC_ENABLE 0x04
#define COM8_AWB_ENABLE 0x20
#define COM8_AEC_ENABLE 0x01

#endif	/* CAMERA_H */

