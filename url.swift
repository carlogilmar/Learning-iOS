import Foundation

let url = URL(string: "https://api.myjson.com/bins/vi56v")
print("Hola!")
URLSession.shared.dataTask(with: url!) {(data, response, error) in
    print("Iniciando request")

    guard error == nil else {
        print("returning error")
        return
    }

    guard let content = data else {
        print("not returning data")
        return
    }


    guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
        print("Not containing JSON")
        return
    }

    if let array = json["companies"] as? [String] {
      print("Hay datos!!")
      print(array)
    }
}.resume()

