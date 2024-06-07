/*
    Author - HoverGuy
    Website - https://northernimpulse.com
*/

sounds[] = 
{
	hg_lock,hg_unlock,sswindloop,sswindintro,sswindoutro
};

class hg_lock
{
	name = "Lock";
	sound[] = {"HG\Sounds\lock.ogg",1,1};
	titles[] = {};
};

class hg_unlock
{
	name = "Unlock";
	sound[] = {"HG\Sounds\unlock.ogg",1,1};
	titles[] = {};
};

class sswindloop 
{
	name="sswindloop";
	sound[]={ROS\sound\sswindloop.ogg, 1,1};
	titles[] = {};
};	

class sswindintro 
{
	name="sswindintro";
	sound[]={ROS\sound\sswindintro.ogg, 1,1};
	titles[] = {};
};

class sswindoutro 
{
	name="sswindoutro";
	sound[]={ROS\sound\sswindoutro.ogg, 1,1};
	titles[] = {};
};