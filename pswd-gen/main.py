import random
import string

class makePwd:
    def __init__(self, length, secret):
        self.length = length
        self.keyword = secret
        self.final = None

    def generate_password(self):

        password = self.keyword

        # We import first all possible characters from the PyLib and build a list
        characters = string.ascii_letters + string.digits + string.punctuation 
        
        for i in range(self.length - len(self.keyword)):
            password += random.choice(characters)
        
        self.final = password
        
        self.screen()

    def screen(self):
        print('Your private generated password is:', self.final)
    


new_password = makePwd(24, 'happi')
new_password.generate_password()
