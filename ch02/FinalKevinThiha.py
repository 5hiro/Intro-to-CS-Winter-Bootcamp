def first_duplicate_letter_index(input):
    tracker = {}
    for i in range(len(input)):
        if input[i] not in tracker.values():
            tracker[str(i)] = input[i]
        else:
            return i
    return (-1)


    #sort and set
