from django.http import HttpResponse
from django.template import loader
from django.views.generic.base import TemplateView
from django.db import connection
class HomePageView(TemplateView):

    template_name = "index.html"

    some_dict = {}
    def run_sql(self):
        with connection.cursor() as cursor:
            tsql = "SELECT * from doctor;"
            with cursor.execute(tsql):
                row = cursor.fetchone()
                while row:
                    self.some_dict.update({str(row[0]): str(row[1])})
                    row = cursor.fetchone()

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        self.run_sql()
        print(self.some_dict)
        context.update(self.some_dict)
        return context