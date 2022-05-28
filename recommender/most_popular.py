from .recommender import Recommender
from pandas import DataFrame, read_csv


class MostPopularRecommender(Recommender):
    def __init__(self):
        self.instances: DataFrame = None

    def fit(self, rating: DataFrame, *args, **kwargs):
        rating = self.validate(rating)
        self.instances = rating[['item_id', "rating"]].groupby('item_id').sum().reset_index()
        self.instances = self.instances.sort_values(by=['rating'], ascending=False)
        return self.instances
    
    def predict(self, *args, **kwargs):
        top = kwargs['top']
        return self.instances[:top]["item_id"].to_numpy()
