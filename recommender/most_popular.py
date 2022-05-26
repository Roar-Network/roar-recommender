from .recommender import Recommender


class MostPopularRecommender(Recommender):
    def __init__(self):
        self.instances: DataFrame = None

    def fit(self, rating: DataFrame, *args, **kwargs):
        self.instances = rating[['item_id', "rating"]].groupby('item_id').sum().reset_index()
        self.instances = self.instances.sort_values(by=['rating'], ascending=False)
        return self.instances
    
    def predict(self, *args, **kwargs):
        return self.instances[:top]
