from pyswip import Prolog

class Einstein:
    def __init__(self):
        self.prolog = Prolog()
        self.prolog.consult("prolog/einstein.pl")

    def solve(self):
        rezultate = list(self.prolog.query("einstein(Owner)"))
        return rezultate

    def get_solution(self):
        results = self.solve()
        if results:
            return results[0]["Owner"]
        return None
