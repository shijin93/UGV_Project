#include <ros/ros.h>
#include<stdio.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Float32.h>
#include <ugv/UGV_message.h>
#include "geometry_msgs/Twist.h"
#include "sensor_msgs/Joy.h"
 

float RPM_R;
float RPM_L;
float x; 
float y;
int DL;
int DR;
int R_FR;
int R_FL;
int R_RR;
int R_RL;
int BR;
int BL;
int BA;
int turbo;
float ramp_factor;

void velCallback(const geometry_msgs::Twist& vel)
{
     x = vel.linear.x; // Assign Linear to x
     y = vel.angular.z; // Assign Angular to y
     
     if (turbo ==1)
     {
     ramp_factor = 3000;
 	 }
 	 else
 	 {
 	 ramp_factor = 1287;
 	 }

     while(x>0) // joystick forward
          {
       while(RPM_R >= 0 && RPM_L >= 0) // checking ugv moving fwd/bck
           {
             if (R_FR==1 && R_FL==1)
             {

             }
             
             else 
             {
             	R_FR =1;
             	R_RL =1;
            // 	ros::Duration(0.3).sleep();
             }
             

             while(y==0) // joystick left/rigth
            {
              DR = ((x*ramp_factor)+1300);
              DL = ((x*ramp_factor)+1300);
            
              break;
            }

                    
          while(y>0) //left
          {
             DR = ((x*ramp_factor)+1300);
             DL = (((x*ramp_factor)+1300)*(1-y));
      
            break;
          }

          while(y<0) //right
          {
             DR = (((x*ramp_factor)+1300)*(1+y));
             DL = ((x*ramp_factor)+1300);
       
            break;
          }
          break;
          }
          break;
          }
          
          
          while(x<0)  // joystick reverse
          {
            while(RPM_R <= 0 && RPM_L <= 0) // checking ugv moving fwd/bck
            {
            
              if (R_RR==1 && R_RL==1)
               {

               }
               
               else 
               {
               	R_RR = 1;
              	R_RL = 1;
              //	ros::Duration(0.3).sleep();
               }
            
                while(y==0) //joystick left/right
                {
                  DR = ((-x*ramp_factor)+1300);
                  DL = ((-x*ramp_factor)+1300);
                  break;
                }
         
              while(y>0) //left
              {
                DR = ((-x*ramp_factor)+1300);
                DL = (((-x*ramp_factor)+1300)*(1-y));
                break;
              }
          
             while(y<0) //right
              {
               DR = (((-x*ramp_factor)+1300)*(1+y));
               DL = ((-x*ramp_factor)+1300);
                break;
              }
             break;
            }
          break;
          }
          
          
          while(x==0 && y>0 && RPM_L ==0 && RPM_R ==0) // turn left on a point
          {
            
            if (R_RL==1)
             {

             }
             
             else 
             {
             	R_RL = 1;
            // 	ros::Duration(0.3).sleep();
             }

            DR = ((1750*y)+1300);
            DL = ((1750*y)+1300);
           
            break;
          }

          while(x==0 && y<0 && RPM_L ==0 && RPM_R ==0) // turn right on a point
          {
             if (R_RR==1)
             {

             }
             else 
             {
             	R_RR = 1;
            // 	ros::Duration(0.3).sleep();
             }

            DR = ((1750*-y)+1300);
            DL = ((1750*-y)+1300);
            break;
          }
          
          
          while(x>0 && (RPM_R < 0 || RPM_L < 0)) // back to forward switch
          {
           //activate pulse braking
            BR= 1; 
            BL= 1;
            break;
          }
          
          while(x<0 && (RPM_R > 0 || RPM_L > 0)) // forward to back switch
          {
           //activate pulse braking
            BR= 1; 
            BL= 1;
            break;
          }
            

          while(x== 0 && y== 0) // idle joystick
          {
             R_FR=1;
             R_FL=1;
             DR = 1000;
             DL = 1000;
             
             if (BA == 1)
              {
                BR = 1;
                BL = 1;
                }
                else 
                {
                  BR = 0;
                  BL = 0;
              }

             if(RPM_R ==0 && RPM_L ==0) // release relays only if ugv is stationary
             {
              R_RR = 0;
              R_RL = 0;
             }

            break;
          }
       
}



void GetRPMRight(const std_msgs::Float32& msg)
{
  
  RPM_R = msg.data;
  
}


void GetRPMLeft(const std_msgs::Float32& msg)
{
  
 RPM_L = msg.data;
 //ROS_INFO("subfunction");
}


void Brake(const sensor_msgs::Joy& msg) // sensor_msgs/Joy.msg
{
  
  turbo = msg.buttons[5];
  BA = msg.buttons[4];
  if (BA == 1 && DR ==1000 && DL == 1000)
  {
  BR = 1;
  BL = 1;
  }
  else 
  {
    BR = 0;
    BL = 0;
  }
}



int main(int argc, char ** argv)
{


 //Initialize and start the node
 
     ros::init(argc, argv, "ugv");
     ros::NodeHandle nh;
 


ros::Publisher MotorController = nh.advertise<ugv::UGV_message>("Motor_Controller", 100);
  

//Define and create some messages
    
      ugv::UGV_message msg;
 /*     
      msg.Forward_Right = 0;
      msg.Reverse_Right = 0;
      msg.Forward_Left= 0;
      msg.Reverse_Left = 0;
      msg.DAC_Right = 100.0;
      msg.DAC_Left = 100.0;
      msg.Brake_Right =0;
      msg.Brake_Left =0;
*/

      ros::Rate rate(10);


//subscribers
ros::Subscriber sub = nh.subscribe("cmd_vel", 1000, velCallback);
ros::Subscriber Enc_Right = nh.subscribe("Encoder_Right", 10, GetRPMRight);
ros::Subscriber Enc_Left = nh.subscribe("Encoder_Left", 10, GetRPMLeft);
ros::Subscriber Brakebutton = nh.subscribe("joy", 10, Brake);

    while(ros::ok())
   	 {

   
		  msg.DAC_Right = DR;
		  msg.DAC_Left = DL;
   		msg.Forward_Right = R_FR;
    	msg.Forward_Left= R_FL;
    	msg.Reverse_Right = R_RR;
    	msg.Reverse_Left = R_RL;
    	msg.Brake_Right = BR;
      msg.Brake_Left = BL;
	
	//	ROS_INFO("I heard this data: %f ",RPM_L);

  	 	//publish data
  		MotorController.publish(msg);
	

    	ros::spinOnce();   
           
   		rate.sleep();
 
     }

  return 0;
 }
