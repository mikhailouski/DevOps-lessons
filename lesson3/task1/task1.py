def UpCaseCount(str):
    count = 0
    upcasestr = ''  
    for char in str:
        if char.isupper():
            count += 1
            upcasestr += char
    return count, upcasestr

input_string = input('Type your string: ')
upper_case_count, upper_case_string = UpCaseCount(input_string)
print('Number of upper case letters in your string is:', upper_case_count)
print('Your upper case letters are:', upper_case_string)