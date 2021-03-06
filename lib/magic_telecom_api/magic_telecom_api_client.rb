# This file was automatically generated by APIMATIC v2.0 on 06/23/2016

# Require controllers
require 'controllers/users_controller.rb'
require 'controllers/accounts_controller.rb'
require 'controllers/dids_controller.rb'
require 'controllers/dids_products_controller.rb'

module MagicTelecomApi
  class MagicTelecomAPIClient
    # Singleton access to users controller
    # @return [UsersController] Returns the controller instance
    def users
      UsersController.instance
    end

    # Singleton access to accounts controller
    # @return [AccountsController] Returns the controller instance
    def accounts
      AccountsController.instance
    end

    # Singleton access to dids controller
    # @return [DidsController] Returns the controller instance
    def dids
      DidsController.instance
    end

    # Singleton access to dids_products controller
    # @return [DidsProductsController] Returns the controller instance
    def dids_products
      DidsProductsController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(x_auth_token: '123abcqwerty')
      Configuration.x_auth_token = x_auth_token
    end
  end
end
