from abc import ABCMeta, abstractmethod

class Recommender(metaclass=ABCMeta):
    @abstractmethod
    def fit(self, rating: DataFrame, *args, **kwargs):
        pass

    @abstractmethod
    def predict(self, *args, **kwargs):
        pass