def selection_sort(lista)
    tamanho = len(lista)
    for j in range(tamanho-1)
        min_index = j
        for i in range(j, tamanho):
            if lista[i] < lista[min_index]:
                min_index = i
        if lista[j] > lista[min_index]:
            aux = lista[j]
            lista[j] = lista[min_index]
            lista[min_index] = aux
pr