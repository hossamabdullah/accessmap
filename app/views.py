import json
from app import app
from flask import request, jsonify
from werkzeug.datastructures import FileStorage
import os
from flask import jsonify
from flask_restplus import Api, Resource, fields, reqparse

api = Api(app, version='1.0', title='Access Map API',
    description='API for performing queries on acess map backend services',
)

# from app.Utils import Util

@api.route('/user', endpoint='UserApi')
class UserService(Resource):

    @api.doc(params={'id':'id of the user to search on'})
    def get(self):
        self.parser = reqparse.RequestParser()
        self.parser.add_argument('id', required=True, help="keyword is required")
        args = self.parser.parse_args()
        id = args["keyword"]
        return ("user id = "+id), 200

@api.route('/place', endPoint='PlaceApi')
class PlaceService(Resource):

    @api.doc(params={'id':'id of the place to search on'})
    def get(self):
        self.parser = reqparse.RequestParser()
        self.parser.add_argument('id', required=True, help="keyword is required")
        args = self.parser.parse_args()
        id = args["keyword"]
        return ("user id = "+id), 200


@api.route('/review', endPoint='ReviewApi')
class ReviewService(Resource):

    @api.doc(params={'id':'id of the review to search on'})
    def get(self):
        self.parser = reqparse.RequestParser()
        self.parser.add_argument('id', required=True, help="keyword is required")
        args = self.parser.parse_args()
        id = args["keyword"]
        return ("user id = "+id), 200