class MembershipsController < ApplicationController
    def create
        Membership.create(params.permit(:gym_id,:client_id,:charge))
    end
end
