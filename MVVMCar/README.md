# TestCar 
# Description: 
In this sample project there are 2 main classes Person and Car. Any peson can buy the Car of type Sedan or SUV from the 
Car Show Room and that person can drive the car which he has purchased. 
So as per this idea, the classes and protocol are designed in Swift programming language are:

Classes
1. Person
2. Sedan
3. SUV
4. CarShowRoom

protocol: 
1. Car

Car is designed as protocol, which will work as interface for the different types of Car as Sedan, SUV etc.

# Test the Classes by creationg the instances and accessing the methods using these instances.


        //Tom has purchased the Sedan type Car, so Tom drive a Sedan
        let Tom = Person("Tom")
        print("Person name:\(Tom.personName)")
        Tom.buyCar(type: .sedan)
        Tom.drive()
        
        
        //David has purchased the SUV type Car, so David drive a SUV
        let David = Person("David")
        print("Person name:\(David.personName)")
        David.drive()
        
        //If any one buy Sedan Car from the Car Show Room , he can drive a Sedan
        let sedan = CarShowRoom.buyCar(type: .sedan)
        print("Car Model:\(sedan.carModel)")
        sedan.drive()
        
        //If any one buy SUV Car from the Car Show Room , he can drive a SUV
        let suv = CarShowRoom.buyCar(type: .suv)
        print("Car Model:\(suv.carModel)")
        suv.drive()
