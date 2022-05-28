from abc import ABCMeta, abstractmethod
from pandas import DataFrame

class Recommender(metaclass=ABCMeta):
    @abstractmethod
    def fit(self, rating: DataFrame, *args, **kwargs):
        pass

    @abstractmethod
    def predict(self, *args, **kwargs):
        pass

    def validate(self, rating: DataFrame) -> DataFrame:
        if len(rating.columns) != 3:
            raise Exception("Invalid rating dataset")
        rating.columns = ["user_id", "item_id", "rating"]
        return rating
