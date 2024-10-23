from datetime import datetime

now = datetime.now()
print('Today is {}.{}.{}    Current time is {}:{}'.format(now.day, now.month, now.year, now.hour, now.minute))