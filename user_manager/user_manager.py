from typing import *
from .categories import GRAPH, IMPORTANCE_CATEGORY
from numpy.random import uniform as U
from numpy import zeros

class UserManager:
    def get_preference_graph(self, categories: List[int]) -> List[int]:
        categories = categories[:4] if len(categories) >= 4 else categories[:len(categories)] # ? get first 4th categories

        preference = zeros(10) # ? init preferences

        for i in range(len(categories)):
            # ? update preference with a uniform likes for this category
            preference += GRAPH[categories[i]] * U(IMPORTANCE_CATEGORY[i][0], IMPORTANCE_CATEGORY[i][1])

        # ? Normalizing preference
        preference /= 4
        return preference