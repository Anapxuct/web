from django.http import HttpResponseNotFound, HttpResponse


def not_found(request):
    return HttpResponseNotFound("Not Found!")


def found(request):
    return HttpResponse('Found!')
