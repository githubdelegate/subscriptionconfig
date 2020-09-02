import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    
    app.get("config") { req -> String in
        return "{\"open\":true,\"singleProduct\":{\"id\":\"cleaner_week_premium\"},\"mutliProducts\":[{\"id\":\"cleaner_week_premium\",\"open\":true,\"freeDay\":3,\"period\":\"week\"},{\"id\":\"cleaner_month_premium\",\"open\":true,\"freeDay\":3,\"period\":\"month\"},{\"id\":\"cleaner_year_premium\",\"open\":true,\"freeDay\":3,\"period\":\"year\"}],\"homeScene\":{\"open\":true,\"useSingle\":true},\"setScene\":{\"open\":true,\"useSingle\":false},\"launchScene\":{\"open\":true,\"useSingle\":true,\"maxShowCount\":5},\"smartCleanScene\":{\"open\":true,\"useSingle\":false}}"
    }
}
