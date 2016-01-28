class User < ActiveRecord::Base
	acts_as_ordered_taggable_on :skills, :languages, :frameworks, :tools, :strages, :servers, :devises, :apis, :libraries 
end
