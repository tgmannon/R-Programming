#####     LEARN R IN A DAY

##1.1 creating simple objects

x<-10     #the value 10 is assigned to object x
x         #print value of x

a<-"y"   #the character value "y" is assigned to object a
a        #print value of a

a<-x     #the value of x is assigned to a
a        #print value of a

##1.2 Simple sums using simple objects

g<-5    # assign value to g
x+g     #print value of x+g

##1.3 Functions

divider<-function(x,y){     # create function called divider that divides x/y
        result<-x/y
        print(result)
}                           #invoke function      

divider(50,25)              #assign values (50,25) to the objects(x,Y) in function

divider(g,a)                #assign values (g,a) to the objects(x,Y) in function

divider(a+x,g)             #assign values (a+x,g) to the objects(x,Y) in function

##1.4 Concatenation and Arrays

f<-c(1,2,3,4,5)      #create an array
f

#add a number to each member of an array
f+4 

#divide each memeber of an array
d<-f/4
d

#arrays can also be added on an element by elment basis
f+d

        ##1.5 listing and deleting objects

#list function
ls()

#remove list
rm(a)

#remove all objects (not undoable!!)
rm(list=ls())

        #1.6 Adding Comments










