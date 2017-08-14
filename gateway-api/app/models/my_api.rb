module MyApi
  class Base < JsonApiClient::Resource
    self.site = 'http://localhost:3000'
  end

  class User < Base
  end

  class SourceProvider < Base
    self.site = 'http://localhost:3010'
    def self.table_name
      "source-providers"
    end
  end

  class CourseResult < Base
    self.site = 'http://localhost:3010'
    def self.table_name
      "courses"
    end
  end

  class CourseResultHistory < Base
    self.site = 'http://localhost:3010'
    def self.table_name
      "courses/history"
    end
  end
end
