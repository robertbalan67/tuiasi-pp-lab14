from pyswip import Prolog

class Family:
    def __init__(self):
        self.prolog = Prolog()
        self.prolog.consult("prolog/family.pl")

    def query_matusa(self, nume):
        rezultate = self.prolog.query(f"matusa(X, '{nume}')")
        return [rez["X"] for rez in rezultate]

    def query_bunic(self, nume):
        rezultate = self.prolog.query(f"bunic(X, '{nume}')")
        return [rez["X"] for rez in rezultate]

    def query_sora_lui(self, nume):
        rezultate = self.prolog.query(f"sora_lui(X, '{nume}')")
        return [rez["X"] for rez in rezultate]

    def query_var(self, nume):
        rezultate = self.prolog.query(f"var(X, '{nume}')")
        return [rez["X"] for rez in rezultate]
