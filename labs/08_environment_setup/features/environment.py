"""
Environment for Behave Testing
"""
#Example : MESSAGE = getenv('MESSAGE', 'Hello')
#This code returns the value of the env var MESSAGE or, if it doesn’t exist, the string Hello.

from os import getenv
from selenium import webdriver

BASE_URL = getenv("BASE_URL", "http://localhost:8080")
WAIT_SECONDS = getenv("WAIT_SECONDS", "60")

def before_all(context):
    """ Executed once before all tests """
    context.base_url = BASE_URL
    context.wait_seconds = WAIT_SECONDS

def after_all(context):
    """ Executed after all tests """
