# Bird Watcher

Welcome to Bird Watcher on Exercism's C# Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

## Arrays

In C#, data structures that can hold zero or more elements are known as _collections_. An **array** is a collection that has a fixed size/length and whose elements must all be of the same type. Elements can be assigned to an array or retrieved from it using an index. C# arrays are zero-based, meaning that the first element's index is always zero:

```csharp
// Declare array with explicit size (size is 2)
int[] twoInts = new int[2];

// Assign second element by index
twoInts[1] = 8;

// Retrieve the second element by index
twoInts[1] == 8; // => true
```

Arrays can also be defined using a shortcut notation that allows you to both create the array and set its value. As the compiler can now tell how many elements the array will have, the length can be omitted:

```csharp
// Three equivalent ways to declare and initialize an array (size is 3)
int[] threeIntsV1 = new int[] { 4, 9, 7 };
int[] threeIntsV2 = new[] { 4, 9, 7 };
int[] threeIntsV3 = { 4, 9, 7 };
```

Arrays can be manipulated by either calling an array instance's methods or properties, or by using the static methods defined in the `Array` class.

## For Loops

A `for` loop allows one to repeatedly execute code in a loop until a condition is met.

```csharp
for (int i = 0; i < 5; i++)
{
    System.Console.Write(i);
}

// => 01234
```

A `for` loop consists of four parts:

1. The initializer: executed once before entering the loop. Usually used to define variables used within the loop.
2. The condition: executed before each loop iteration. The loop continues to execute while this evaluates to `true`.
3. The iterator: execute after each loop iteration. Usually used to modify (often: increment/decrement) the loop variable(s).
4. The body: the code that gets executed each loop iteration.

## Foreach Loops

The fact that an array is also a _collection_ means that, besides accessing values by index, you can iterate over _all_ its values using a `foreach` loop:

```csharp
char[] vowels = new [] { 'a', 'e', 'i', 'o', 'u' };

foreach (char vowel in vowels)
{
    // Output the vowel
    System.Console.Write(vowel);
}

// => aeiou
```

## Instructions

You're an avid bird watcher that keeps track of how many birds have visited your garden in the last seven days.

You have six tasks, all dealing with the numbers of birds that visited your garden.

## 1. Check what the counts were last week

For comparison purposes, you always keep a copy of last week's counts nearby, which were: 0, 2, 5, 3, 7, 8 and 4. Implement the (_static_) `BirdCount.LastWeek()` method that returns last week's counts:

```csharp
BirdCount.LastWeek();
// => [0, 2, 5, 3, 7, 8, 4]
```

## 2. Check how many birds visited today

Implement the `BirdCount.Today()` method to return how many birds visited your garden today. The bird counts are ordered by day, with the first element being the count of the oldest day, and the last element being today's count.

```csharp
int[] birdsPerDay = { 2, 5, 0, 7, 4, 1 };
var birdCount = new BirdCount(birdsPerDay);
birdCount.Today();
// => 1
```

## 3. Increment today's count

Implement the `BirdCount.IncrementTodaysCount()` method to increment today's count:

```csharp
int[] birdsPerDay = { 2, 5, 0, 7, 4, 1 };
var birdCount = new BirdCount(birdsPerDay);
birdCount.IncrementTodaysCount();
birdCount.Today();
// => 2
```

## 4. Check if there was a day with no visiting birds

Implement the `BirdCount.HasDayWithoutBirds()` method that returns `true` if there was a day at which zero birds visited the garden; otherwise, return `false`:

```csharp
int[] birdsPerDay = { 2, 5, 0, 7, 4, 1 };
var birdCount = new BirdCount(birdsPerDay);
birdCount.HasDayWithoutBirds();
// => true
```

## 5. Calculate the number of visiting birds for the first number of days

Implement the `BirdCount.CountForFirstDays()` method that returns the number of birds that have visited your garden from the start of the week, but limit the count to the specified number of days from the start of the week.

```csharp
int[] birdsPerDay = { 2, 5, 0, 7, 4, 1 };
var birdCount = new BirdCount(birdsPerDay);
birdCount.CountForFirstDays(4);
// => 14
```

## 6. Calculate the number of busy days

Some days are busier that others. A busy day is one where five or more birds have visited your garden.
Implement the `BirdCount.BusyDays()` method to return the number of busy days:

```csharp
int[] birdsPerDay = { 2, 5, 0, 7, 4, 1 };
var birdCount = new BirdCount(birdsPerDay);
birdCount.BusyDays();
// => 2
```

## Source

### Created by

- @ErikSchierboom

### Contributed to by

- @yzAlvin