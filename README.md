# Реализация приоритетной очереди на основе кучи (PriorityQueueHeap)

Этот код представляет собой реализацию приоритетной очереди на основе кучи (binary heap) на языке Ruby. 
Приоритетная очередь предоставляет структуру данных, в которой элементы имеют определенный приоритет, и при извлечении из очереди извлекается элемент с наивысшим приоритетом.

## Описание класса PriorityQueueHeap

### Методы
- initialize: Инициализирует пустую приоритетную очередь.
- push(value): Добавляет элемент в приоритетную очередь и перестраивает кучу вверх.
- pop: Извлекает элемент с наивысшим приоритетом из очереди.
- top: Возвращает элемент с наивысшим приоритетом, не удаляя его из очереди.
- empty?: Проверяет, пуста ли приоритетная очередь.
- size: Возвращает количество элементов в приоритетной очереди.
- merge(other): Объединяет текущую приоритетную очередь с другой приоритетной очередью.
- assign(array): Присваивает элементы из массива текущей приоритетной очереди и перестраивает кучу вниз.
- to_s: Возвращает строковое представление элементов в приоритетной очереди.

### Приватные методы
- heapify_up: Перестраивает кучу вверх, чтобы сохранить свойства кучи после добавления нового элемента.
- heapify_down(index): Перестраивает кучу вниз, чтобы сохранить свойства кучи после удаления элемента.

## Использование
```ruby
pq = PriorityQueueHeap.new
pq.push(3)
pq.push(5)
pq.push(7)
puts pq.top  # Вывод: 3
pq.pop
puts pq.top  # Вывод: 5
puts pq.size  # Вывод: 2
```
## Функция read_words_from_file
Этот код также содержит функцию read_words_from_file, которая читает слова из файла и добавляет их в приоритетную очередь. Она принимает имя файла, массив для сохранения слов и объект приоритетной очереди.
```ruby
words = []
pq = PriorityQueueHeap.new
read_words_from_file("filename.txt", words, pq)
puts pq.top  # Вывод: слово с наивысшим приоритетом из файла```
