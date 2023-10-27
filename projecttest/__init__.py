from pyramid.config import Configurator


def main(global_config, **settings):
    with Configurator(settings=settings) as config:
        config.include('pyramid_jinja2')
        config.scan()
        
        config.add_static_view('static', 'static', cache_max_age=3600)
        # config.add_route('api_data', '/api/data', request_method='GET')
        config.add_route('delete_product', '/delete/product/{id}', request_method='DELETE')
        config.add_route('get_product', '/get/product', request_method='GET')
        config.add_route('post_product', '/post/product', request_method='POST')
    return config.make_wsgi_app()
