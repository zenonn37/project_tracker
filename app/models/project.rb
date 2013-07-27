class Project < ActiveRecord::Base
   attr_accessible :project_name,:project_type,:project_deploy,:project_sdk,
   :project_languages,:project_frameworks,:project_end,:complete,
   :project_details
end
