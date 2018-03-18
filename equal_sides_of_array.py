def find_index_value(int_list):
  results = [0]
  current_value = 0
  for index in range(0, (len(int_list) - 1)):
    current_value += int_list[index]
    results.append(current_value)
  return results

def find_even_index(int_list):
  left_values = find_index_value(int_list)
  index = len(int_list) - 1
  matches = []
  current_value = 0
  while index >= 0:
    if current_value == left_values[index]:
      matches.append(index)
    current_value += int_list[index]
    index -= 1
  if len(matches) > 0:
    return matches[-1]
  else:
    return  -1

