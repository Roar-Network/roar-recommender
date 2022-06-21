# Roar Recommender

Recommender has two main methods:

- fit
- predict

Fit function must to receive a csv, with at least `item_id`, `user_id`, & `rating` columns.

## Recommenders implemented

- MostPopular recommender, return a list of a top of `k` items most popular by users.
