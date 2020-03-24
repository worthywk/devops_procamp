import psutil as info


def get_os_info():

    system_info_commands = {
        'cpu': (info.cpu_percent(),info.cpu_times()),
        'ram': info.virtual_memory(),
        'swap': info.swap_memory(),
        'exit': 'Program ends'
    }


    def get_keys(dict):
        return list(dict.keys()) 
    
   
    while True:
        
        argument = input(f"\nWhat OS information do you want to get (type command without any quotes)? {get_keys(system_info_commands)}\n\n").lower()
        if argument == 'exit' or argument == '0':
            print(system_info_commands['exit'])
            break
        elif argument in system_info_commands.keys():
            print("\n{}: {}".format(argument, system_info_commands[argument]))
            print("\nContinue...")
        else:
            print("\nWrong argument")

            
get_os_info()
