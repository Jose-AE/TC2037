Implementation of Computational Methods


# Device Interconnection<!-- omit in toc -->

## Table of contents:<!-- omit in toc -->

- [Set Theory](#set-theory)
  - [Sets](#sets)
    - [Explicit Sets](#explicit-sets)
    - [Implicit Sets](#implicit-sets)
    - [Empty Set](#empty-set)
    - [Power Set](#power-set)
  - [Symbols](#symbols)
    - [Set Cardinality](#set-cardinality)
    - [Equality](#equality)
    - [Relation: Membership](#relation-membership)
    - [Subsets](#subsets)
    - [Proper Subsets](#proper-subsets)
    - [Union](#union)
    - [Intersection](#intersection)
    - [Difference](#difference)
    - [Complement](#complement)




## Set Theory

### Sets

<blockquote>

#### Explicit Sets

- A = `{3, 6, 9, 12}`
- B = `{Juan, Luis, Pedro}`
- C = `{0, 1}`

</blockquote>

<blockquote>

#### Implicit Sets

*Symbols:*

`∋`/`|` = such that

`∧` = and

`V` = or

*Examples:*

- D = `{x ∋ x/2 = 0 }`
- E = `{x ∋ x is a planet}`
- F = `{x | x is natural number ∧ x es even}`

</blockquote>


<blockquote>

#### Empty Set

`{}` = `∅`




</blockquote>

<blockquote>

#### Power Set

For set A, its power set is the set whose elements are each of the possible subsets of A.

`A = {a, b, c}`


`P(A) = {∅, {a}, {b}, {c}, {a,b}, {a,c}, {b,c}, {a,b,c}}`
</blockquote>





### Symbols 

<blockquote>

#### Set Cardinality  


The number of elements in a set:


`A = {2, 5, 7, 9}`

`|A| = 4`

Cardinality is always a natural number.
</blockquote>

<blockquote>

#### Equality

Equal sets have the same elements:

`A = {2, 5, 7, 9}`

`B = {5, 2, 9, 7}`

`A = B`

</blockquote>



<blockquote>

#### Relation: Membership

a belongs to A:

`a ∈ A`

b does not belong to A:
`b ∉ A`

Examples:

`'a' ∈ {'a', 'e', 'i', 'o', 'u'}`

`0 ∉ {1, 2, 3, 4}`


</blockquote>



<blockquote>

#### Subsets


A subset is a set that contains only elements that are also in another set:

B is a subset of A:
`B ⊆ A`

C is not a subset of A:
`C ⊈ A`

![alt text](https://i.imgur.com/yKZID8Q.png)

</blockquote>


<blockquote>

#### Proper Subsets

A proper subset is a subset that contains some, but not all, of the elements of another set:

C is a proper subset of A:
`C ⊂ A`

D is not a proper subset of A:
`D ⊄ A`


![alt text](https://i.imgur.com/yKZID8Q.png)

</blockquote>




<blockquote>

#### Union


`A ∪ B = {x ∍ x ∈ A ∨ x ∈ B}`

Example:

`A = {1, 3, 5} `

`B= {2, 4, 5, 6} `

`A∪B={1, 2, 3, 4, 5, 6}`

Properties:

- Idempotence: `A∪A = A `

- Commutativity: `A∪B = B∪A `

- Associativity: `(A∪B)∪C = A∪(B∪C) `

- Identity: `A∪U = U` 

- Null: `A∪∅ = A`


</blockquote>


<blockquote>

#### Intersection

`A ∩ B = {x ∍ x∈A ∧ x∈B}`


Example:

`A = {1, 3, 5}`

`B = {2, 4, 5, 6}`

`A ∩ B = {5}`

Properties:
- Idempotence: `A ∩ A = A `
- Commutativity: `A ∩ B = B ∩ A `
- Associativity: `(A∩B)∩C = A∩(B∩C) `
- Identity: `A ∩ U = A` 
- Neutral: `A ∩ ∅ = ∅` 

</blockquote>




<blockquote>

#### Difference

`A-B = {x ∍ x∈A ∧ x∉B}`

Example:

`A = {1, 3, 5} `

`B = {2, 4, 5, 6} `

`A-B = {1, 3} `

`B-A = {2, 4, 6}`


</blockquote>

<blockquote>

#### Complement 

`A^c  = {x ∍ x∈U ∧ x∉A}` 


Example:

`U = ℤ` 

`A = {x ∍ x is even} `

`A^c = {x ∍ x is odd}`



</blockquote>

