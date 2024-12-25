-- Declare variables
local studs
local metres
local result
local choice

-- main function
print("Please enter whether you'd like to convert metres to studs (1) or to convert studs to meters (2):")
choice = io.read("*n")
if choice < 1 or choice > 2 then
    repeat
        print("Value invalid. Please try again.")
        choice = io.read("*n")
    until choice == 1 or choice == 2
end
if choice == 1 then
    print("Please enter the amount of metres you'd like to convert:")
    metres = io.read("*n")
    if metres < 0 then
        repeat
            print("Value invalid. Please try again.")
            metres = io.read("*n")
        until type(metres) == "number" and metres >= 0
    end 
    studs = metres / 0.28
    print(metres .. " metres is equal to " .. studs .. " studs.")
elseif choice == 2 then
    print("Please enter the amount of studs you'd like to convert:")
    studs = io.read("*n")
    if studs < 0 then
        repeat
            print("Value invalid. Please try again.")
            studs = io.read("*n")
        until type(studs) == "number" and studs >= 0
    end
    metres = studs * 0.28
    print(studs .. " studs is equal to " .. metres .. " metres.")
else
    print("Written by Renewings!")      -- Will this happen? I don't know...
end 