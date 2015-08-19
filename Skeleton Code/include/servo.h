/* 
 * File:   servo.h
 * Author: Kolijn
 *
 * Created on July 26, 2015, 6:34 PM
 */

#ifndef SERVO_H
#define	SERVO_H

#define MOT_FORWARDS 0
#define MOT_REVERSE 1
#define MOT_BRAKE 2

#define MIN_PWM_VALUE 1875
#define MAX_PWM_VALUE 3750

void setup_pwm();
void set_servo_1(int value);
void set_servo_2(int value);
void set_motor_1(int direction, int speed);
void set_motor_2(int direction, int speed);

#endif	/* SERVO_H */

