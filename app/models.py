from enum import Enum


class Place:
    def __init__(placeId, locationId, placeShortName, placeLongName, placeAddress, placeRate, placeIcon, addressUrl, placeWebsite, placePhotoId, placeGeometryId, dateCreated, dateModified):
        self.placeId = placeId
        self.locationId = locationId
        self.placeShortName = placeShortName
        self.placeLongName = placeLongName
        self.placeAddress = placeAddress
        self.placeRate = placeRate
        self.placeIcon = placeIcon
        self.addressUrl = addressUrl
        self.placeWebsite = placeWebsite
        self.placePhotoId = placePhotoId
        self.placeGeometryId = placeGeometryId
        self.dateCreated = dateCreated
        self.dateModified = dateModified

class User:
    def __init__(userId, firstName, lastName, phoneNumber, password, email, userRate, userPhotoId, isActive, notes, dateCreated, dateModified):
        self.userId = userId
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.password = password
        self.email = email
        self.userRate = userRate
        self.userPhotoId = userPhotoId
        self.isActive = isActive
        self.notes = notes
        self.dateCreated = dateCreated
        self.dateModified = dateModified
    
class UserPhotos:
    def __init__(userPhotoId, userPhoto, dateCreated, dateModified):
        self.userPhotoId = userPhotoId
        self.userPhoto = userPhoto
        self.dateCreated = dateCreated
        self.dateModified = dateModified

class Visit:
    def __init__(visitId, placeId, userId, reviewId):
        self.visitId = visitId
        self.placeId = placeId
        self.userId = userId
        self.reviewId = reviewId

class Review:
    def __init__(reviewId, reviewUserId, placeId, reviewPhotoId, reviewRating, reviewComment, dateCreated, dateModified):
        self.reviewId = reviewId
        self.reviewUserId = reviewUserId
        self.placeId = placeId
        self.reviewPhotoId = reviewPhotoId
        self.reviewRating = reviewRating
        self.reviewComment = reviewComment
        self.dateCreated = dateCreated
        self.dateModified = dateModified

class LocationGeometry:
    def __init__(geometryId, latitude, longitude):
        self.geometryId = geometryId
        self.latitude = latitude
        self.longitude = longitude

class PlacePhoto:
    def __init__(placePhotoId, placePhoto, dateCreated, dateModified):
        self.placePhotoId = placePhotoId
        self.placePhoto = placePhoto
        self.dateCreated = dateCreated
        self.dateModified = dateModified

class ReviewPhoto:
    def __init__(reviewPhotoId, reviewPhoto, dateCreated, dateModified):
        self.reviewPhotoId = reviewPhotoId
        self.reviewPhoto = reviewPhoto
        self.dateCreated = dateCreated
        self.dateModified = dateModified