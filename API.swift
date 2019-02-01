//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreatePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(authorId: Int, authorName: String, messageType: Int, message: Optional<String?> = nil, schoolId: Int, classroomId: Optional<Int?> = nil, userId: Optional<Int?> = nil, mediaType: Optional<Int?> = nil) {
    graphQLMap = ["authorId": authorId, "authorName": authorName, "messageType": messageType, "message": message, "schoolId": schoolId, "classroomId": classroomId, "userId": userId, "mediaType": mediaType]
  }

  public var authorId: Int {
    get {
      return graphQLMap["authorId"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var authorName: String {
    get {
      return graphQLMap["authorName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorName")
    }
  }

  public var messageType: Int {
    get {
      return graphQLMap["messageType"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messageType")
    }
  }

  public var message: Optional<String?> {
    get {
      return graphQLMap["message"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "message")
    }
  }

  public var schoolId: Int {
    get {
      return graphQLMap["schoolId"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "schoolId")
    }
  }

  public var classroomId: Optional<Int?> {
    get {
      return graphQLMap["classroomId"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "classroomId")
    }
  }

  public var userId: Optional<Int?> {
    get {
      return graphQLMap["userId"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var mediaType: Optional<Int?> {
    get {
      return graphQLMap["mediaType"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mediaType")
    }
  }
}

public struct S3ObjectInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(bucket: String, key: String, region: String, localUri: String, mimeType: String) {
    graphQLMap = ["bucket": bucket, "key": key, "region": region, "localUri": localUri, "mimeType": mimeType]
  }

  public var bucket: String {
    get {
      return graphQLMap["bucket"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bucket")
    }
  }

  public var key: String {
    get {
      return graphQLMap["key"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "key")
    }
  }

  public var region: String {
    get {
      return graphQLMap["region"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "region")
    }
  }

  public var localUri: String {
    get {
      return graphQLMap["localUri"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "localUri")
    }
  }

  public var mimeType: String {
    get {
      return graphQLMap["mimeType"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mimeType")
    }
  }
}

public struct UpdatePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, authorId: Optional<Int?> = nil, authorName: Optional<String?> = nil, messageType: Optional<Int?> = nil, message: Optional<String?> = nil, mediaUrl: Optional<String?> = nil, mediaType: Optional<Int?> = nil, schoolId: Optional<Int?> = nil, classroomId: Optional<Int?> = nil, userId: Optional<Int?> = nil) {
    graphQLMap = ["id": id, "authorId": authorId, "authorName": authorName, "messageType": messageType, "message": message, "mediaURL": mediaUrl, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var authorId: Optional<Int?> {
    get {
      return graphQLMap["authorId"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var authorName: Optional<String?> {
    get {
      return graphQLMap["authorName"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorName")
    }
  }

  public var messageType: Optional<Int?> {
    get {
      return graphQLMap["messageType"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messageType")
    }
  }

  public var message: Optional<String?> {
    get {
      return graphQLMap["message"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "message")
    }
  }

  public var mediaUrl: Optional<String?> {
    get {
      return graphQLMap["mediaUrl"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mediaUrl")
    }
  }

  public var mediaType: Optional<Int?> {
    get {
      return graphQLMap["mediaType"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mediaType")
    }
  }

  public var schoolId: Optional<Int?> {
    get {
      return graphQLMap["schoolId"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "schoolId")
    }
  }

  public var classroomId: Optional<Int?> {
    get {
      return graphQLMap["classroomId"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "classroomId")
    }
  }

  public var userId: Optional<Int?> {
    get {
      return graphQLMap["userId"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct DeletePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateCommentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(postId: GraphQLID, authorId: Int, authorName: String, content: String) {
    graphQLMap = ["postId": postId, "authorId": authorId, "authorName": authorName, "content": content]
  }

  public var postId: GraphQLID {
    get {
      return graphQLMap["postId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "postId")
    }
  }

  public var authorId: Int {
    get {
      return graphQLMap["authorId"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var authorName: String {
    get {
      return graphQLMap["authorName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorName")
    }
  }

  public var content: String {
    get {
      return graphQLMap["content"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }
}

public struct UpdateCommentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(postId: Optional<GraphQLID?> = nil, commentId: String, authorId: Optional<Int?> = nil, authorName: Optional<String?> = nil, content: Optional<String?> = nil) {
    graphQLMap = ["postId": postId, "commentId": commentId, "authorId": authorId, "authorName": authorName, "content": content]
  }

  public var postId: Optional<GraphQLID?> {
    get {
      return graphQLMap["postId"] as! Optional<GraphQLID?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "postId")
    }
  }

  public var commentId: String {
    get {
      return graphQLMap["commentId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "commentId")
    }
  }

  public var authorId: Optional<Int?> {
    get {
      return graphQLMap["authorId"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var authorName: Optional<String?> {
    get {
      return graphQLMap["authorName"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorName")
    }
  }

  public var content: Optional<String?> {
    get {
      return graphQLMap["content"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }
}

public struct DeleteCommentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(postId: GraphQLID, commentId: String) {
    graphQLMap = ["postId": postId, "commentId": commentId]
  }

  public var postId: GraphQLID {
    get {
      return graphQLMap["postId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "postId")
    }
  }

  public var commentId: String {
    get {
      return graphQLMap["commentId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "commentId")
    }
  }
}

public struct TablePostFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: Optional<TableIDFilterInput?> = nil, authorId: Optional<TableIntFilterInput?> = nil, authorName: Optional<TableStringFilterInput?> = nil, createdAt: Optional<TableStringFilterInput?> = nil, updatedAt: Optional<TableStringFilterInput?> = nil, messageType: Optional<TableIntFilterInput?> = nil, message: Optional<TableStringFilterInput?> = nil, mediaUrl: Optional<TableStringFilterInput?> = nil, mediaType: Optional<TableIntFilterInput?> = nil, schoolId: Optional<TableIntFilterInput?> = nil, classroomId: Optional<TableIntFilterInput?> = nil, userId: Optional<TableIntFilterInput?> = nil) {
    graphQLMap = ["id": id, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "messageType": messageType, "message": message, "mediaURL": mediaUrl, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId]
  }

  public var id: Optional<TableIDFilterInput?> {
    get {
      return graphQLMap["id"] as! Optional<TableIDFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var authorId: Optional<TableIntFilterInput?> {
    get {
      return graphQLMap["authorId"] as! Optional<TableIntFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var authorName: Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["authorName"] as! Optional<TableStringFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorName")
    }
  }

  public var createdAt: Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["createdAt"] as! Optional<TableStringFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["updatedAt"] as! Optional<TableStringFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var messageType: Optional<TableIntFilterInput?> {
    get {
      return graphQLMap["messageType"] as! Optional<TableIntFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messageType")
    }
  }

  public var message: Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["message"] as! Optional<TableStringFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "message")
    }
  }

  public var mediaUrl: Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["mediaUrl"] as! Optional<TableStringFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mediaUrl")
    }
  }

  public var mediaType: Optional<TableIntFilterInput?> {
    get {
      return graphQLMap["mediaType"] as! Optional<TableIntFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mediaType")
    }
  }

  public var schoolId: Optional<TableIntFilterInput?> {
    get {
      return graphQLMap["schoolId"] as! Optional<TableIntFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "schoolId")
    }
  }

  public var classroomId: Optional<TableIntFilterInput?> {
    get {
      return graphQLMap["classroomId"] as! Optional<TableIntFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "classroomId")
    }
  }

  public var userId: Optional<TableIntFilterInput?> {
    get {
      return graphQLMap["userId"] as! Optional<TableIntFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct TableIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Optional<GraphQLID?> = nil, eq: Optional<GraphQLID?> = nil, le: Optional<GraphQLID?> = nil, lt: Optional<GraphQLID?> = nil, ge: Optional<GraphQLID?> = nil, gt: Optional<GraphQLID?> = nil, contains: Optional<GraphQLID?> = nil, notContains: Optional<GraphQLID?> = nil, between: Optional<[GraphQLID?]?> = nil, beginsWith: Optional<GraphQLID?> = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: Optional<GraphQLID?> {
    get {
      return graphQLMap["ne"] as! Optional<GraphQLID?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Optional<GraphQLID?> {
    get {
      return graphQLMap["eq"] as! Optional<GraphQLID?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Optional<GraphQLID?> {
    get {
      return graphQLMap["le"] as! Optional<GraphQLID?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Optional<GraphQLID?> {
    get {
      return graphQLMap["lt"] as! Optional<GraphQLID?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Optional<GraphQLID?> {
    get {
      return graphQLMap["ge"] as! Optional<GraphQLID?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Optional<GraphQLID?> {
    get {
      return graphQLMap["gt"] as! Optional<GraphQLID?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Optional<GraphQLID?> {
    get {
      return graphQLMap["contains"] as! Optional<GraphQLID?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Optional<GraphQLID?> {
    get {
      return graphQLMap["notContains"] as! Optional<GraphQLID?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: Optional<[GraphQLID?]?> {
    get {
      return graphQLMap["between"] as! Optional<[GraphQLID?]?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: Optional<GraphQLID?> {
    get {
      return graphQLMap["beginsWith"] as! Optional<GraphQLID?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableIntFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Optional<Int?> = nil, eq: Optional<Int?> = nil, le: Optional<Int?> = nil, lt: Optional<Int?> = nil, ge: Optional<Int?> = nil, gt: Optional<Int?> = nil, contains: Optional<Int?> = nil, notContains: Optional<Int?> = nil, between: Optional<[Int?]?> = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between]
  }

  public var ne: Optional<Int?> {
    get {
      return graphQLMap["ne"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Optional<Int?> {
    get {
      return graphQLMap["eq"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Optional<Int?> {
    get {
      return graphQLMap["le"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Optional<Int?> {
    get {
      return graphQLMap["lt"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Optional<Int?> {
    get {
      return graphQLMap["ge"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Optional<Int?> {
    get {
      return graphQLMap["gt"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Optional<Int?> {
    get {
      return graphQLMap["contains"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Optional<Int?> {
    get {
      return graphQLMap["notContains"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: Optional<[Int?]?> {
    get {
      return graphQLMap["between"] as! Optional<[Int?]?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Optional<String?> = nil, eq: Optional<String?> = nil, le: Optional<String?> = nil, lt: Optional<String?> = nil, ge: Optional<String?> = nil, gt: Optional<String?> = nil, contains: Optional<String?> = nil, notContains: Optional<String?> = nil, between: Optional<[String?]?> = nil, beginsWith: Optional<String?> = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: Optional<String?> {
    get {
      return graphQLMap["ne"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Optional<String?> {
    get {
      return graphQLMap["eq"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Optional<String?> {
    get {
      return graphQLMap["le"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Optional<String?> {
    get {
      return graphQLMap["lt"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Optional<String?> {
    get {
      return graphQLMap["ge"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Optional<String?> {
    get {
      return graphQLMap["gt"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Optional<String?> {
    get {
      return graphQLMap["contains"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Optional<String?> {
    get {
      return graphQLMap["notContains"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: Optional<[String?]?> {
    get {
      return graphQLMap["between"] as! Optional<[String?]?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: Optional<String?> {
    get {
      return graphQLMap["beginsWith"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public final class CreatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreatePost($input: CreatePostInput!, $file: S3ObjectInput) {\n  createPost(input: $input, file: $file) {\n    __typename\n    id\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    messageType\n    message\n    mediaFile {\n      __typename\n      bucket\n      key\n      region\n    }\n    mediaType\n    schoolId\n    classroomId\n    userId\n  }\n}"

  public var input: CreatePostInput
  public var file: S3ObjectInput?

  public init(input: CreatePostInput, file: S3ObjectInput? = nil) {
    self.input = input
    self.file = file
  }

  public var variables: GraphQLMap? {
    return ["input": input, "file": file]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createPost", arguments: ["input": GraphQLVariable("input"), "file": GraphQLVariable("file")], type: .object(CreatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createPost: CreatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createPost": createPost.flatMap { $0.snapshot }])
    }

    public var createPost: CreatePost? {
      get {
        return (snapshot["createPost"] as? Snapshot).flatMap { CreatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createPost")
      }
    }

    public struct CreatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("messageType", type: .nonNull(.scalar(Int.self))),
        GraphQLField("message", type: .scalar(String.self)),
        GraphQLField("mediaFile", type: .object(MediaFile.selections)),
        GraphQLField("mediaType", type: .scalar(Int.self)),
        GraphQLField("schoolId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("classroomId", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, messageType: Int, message: String? = nil, mediaFile: MediaFile? = nil, mediaType: Int? = nil, schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "messageType": messageType, "message": message, "mediaFile": mediaFile.flatMap { $0.snapshot }, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var messageType: Int {
        get {
          return snapshot["messageType"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageType")
        }
      }

      public var message: String? {
        get {
          return snapshot["message"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "message")
        }
      }

      public var mediaFile: MediaFile? {
        get {
          return (snapshot["mediaFile"] as? Snapshot).flatMap { MediaFile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "mediaFile")
        }
      }

      public var mediaType: Int? {
        get {
          return snapshot["mediaType"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mediaType")
        }
      }

      public var schoolId: Int {
        get {
          return snapshot["schoolId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "schoolId")
        }
      }

      public var classroomId: Int? {
        get {
          return snapshot["classroomId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "classroomId")
        }
      }

      public var userId: Int? {
        get {
          return snapshot["userId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public struct MediaFile: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }
      }
    }
  }
}

public final class UpdatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdatePost($input: UpdatePostInput!) {\n  updatePost(input: $input) {\n    __typename\n    id\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    messageType\n    message\n    mediaFile {\n      __typename\n      bucket\n      key\n      region\n    }\n    mediaType\n    schoolId\n    classroomId\n    userId\n  }\n}"

  public var input: UpdatePostInput

  public init(input: UpdatePostInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updatePost", arguments: ["input": GraphQLVariable("input")], type: .object(UpdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updatePost: UpdatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updatePost": updatePost.flatMap { $0.snapshot }])
    }

    public var updatePost: UpdatePost? {
      get {
        return (snapshot["updatePost"] as? Snapshot).flatMap { UpdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updatePost")
      }
    }

    public struct UpdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("messageType", type: .nonNull(.scalar(Int.self))),
        GraphQLField("message", type: .scalar(String.self)),
        GraphQLField("mediaFile", type: .object(MediaFile.selections)),
        GraphQLField("mediaType", type: .scalar(Int.self)),
        GraphQLField("schoolId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("classroomId", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, messageType: Int, message: String? = nil, mediaFile: MediaFile? = nil, mediaType: Int? = nil, schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "messageType": messageType, "message": message, "mediaFile": mediaFile.flatMap { $0.snapshot }, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var messageType: Int {
        get {
          return snapshot["messageType"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageType")
        }
      }

      public var message: String? {
        get {
          return snapshot["message"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "message")
        }
      }

      public var mediaFile: MediaFile? {
        get {
          return (snapshot["mediaFile"] as? Snapshot).flatMap { MediaFile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "mediaFile")
        }
      }

      public var mediaType: Int? {
        get {
          return snapshot["mediaType"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mediaType")
        }
      }

      public var schoolId: Int {
        get {
          return snapshot["schoolId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "schoolId")
        }
      }

      public var classroomId: Int? {
        get {
          return snapshot["classroomId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "classroomId")
        }
      }

      public var userId: Int? {
        get {
          return snapshot["userId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public struct MediaFile: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }
      }
    }
  }
}

public final class DeletePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeletePost($input: DeletePostInput!) {\n  deletePost(input: $input) {\n    __typename\n    id\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    messageType\n    message\n    mediaFile {\n      __typename\n      bucket\n      key\n      region\n    }\n    mediaType\n    schoolId\n    classroomId\n    userId\n  }\n}"

  public var input: DeletePostInput

  public init(input: DeletePostInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePost", arguments: ["input": GraphQLVariable("input")], type: .object(DeletePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deletePost: DeletePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deletePost": deletePost.flatMap { $0.snapshot }])
    }

    public var deletePost: DeletePost? {
      get {
        return (snapshot["deletePost"] as? Snapshot).flatMap { DeletePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deletePost")
      }
    }

    public struct DeletePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("messageType", type: .nonNull(.scalar(Int.self))),
        GraphQLField("message", type: .scalar(String.self)),
        GraphQLField("mediaFile", type: .object(MediaFile.selections)),
        GraphQLField("mediaType", type: .scalar(Int.self)),
        GraphQLField("schoolId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("classroomId", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, messageType: Int, message: String? = nil, mediaFile: MediaFile? = nil, mediaType: Int? = nil, schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "messageType": messageType, "message": message, "mediaFile": mediaFile.flatMap { $0.snapshot }, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var messageType: Int {
        get {
          return snapshot["messageType"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageType")
        }
      }

      public var message: String? {
        get {
          return snapshot["message"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "message")
        }
      }

      public var mediaFile: MediaFile? {
        get {
          return (snapshot["mediaFile"] as? Snapshot).flatMap { MediaFile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "mediaFile")
        }
      }

      public var mediaType: Int? {
        get {
          return snapshot["mediaType"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mediaType")
        }
      }

      public var schoolId: Int {
        get {
          return snapshot["schoolId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "schoolId")
        }
      }

      public var classroomId: Int? {
        get {
          return snapshot["classroomId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "classroomId")
        }
      }

      public var userId: Int? {
        get {
          return snapshot["userId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public struct MediaFile: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }
      }
    }
  }
}

public final class CreateCommentMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateComment($input: CreateCommentInput!) {\n  createComment(input: $input) {\n    __typename\n    postId\n    commentId\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    content\n  }\n}"

  public var input: CreateCommentInput

  public init(input: CreateCommentInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createComment", arguments: ["input": GraphQLVariable("input")], type: .object(CreateComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createComment: CreateComment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createComment": createComment.flatMap { $0.snapshot }])
    }

    public var createComment: CreateComment? {
      get {
        return (snapshot["createComment"] as? Snapshot).flatMap { CreateComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createComment")
      }
    }

    public struct CreateComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("postId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("commentId", type: .nonNull(.scalar(String.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(postId: GraphQLID, commentId: String, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, content: String) {
        self.init(snapshot: ["__typename": "Comment", "postId": postId, "commentId": commentId, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "content": content])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var postId: GraphQLID {
        get {
          return snapshot["postId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postId")
        }
      }

      public var commentId: String {
        get {
          return snapshot["commentId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "commentId")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }
    }
  }
}

public final class UpdateCommentMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateComment($input: UpdateCommentInput!) {\n  updateComment(input: $input) {\n    __typename\n    postId\n    commentId\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    content\n  }\n}"

  public var input: UpdateCommentInput

  public init(input: UpdateCommentInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateComment", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateComment: UpdateComment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateComment": updateComment.flatMap { $0.snapshot }])
    }

    public var updateComment: UpdateComment? {
      get {
        return (snapshot["updateComment"] as? Snapshot).flatMap { UpdateComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateComment")
      }
    }

    public struct UpdateComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("postId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("commentId", type: .nonNull(.scalar(String.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(postId: GraphQLID, commentId: String, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, content: String) {
        self.init(snapshot: ["__typename": "Comment", "postId": postId, "commentId": commentId, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "content": content])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var postId: GraphQLID {
        get {
          return snapshot["postId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postId")
        }
      }

      public var commentId: String {
        get {
          return snapshot["commentId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "commentId")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }
    }
  }
}

public final class DeleteCommentMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteComment($input: DeleteCommentInput!) {\n  deleteComment(input: $input) {\n    __typename\n    postId\n    commentId\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    content\n  }\n}"

  public var input: DeleteCommentInput

  public init(input: DeleteCommentInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteComment", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteComment: DeleteComment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteComment": deleteComment.flatMap { $0.snapshot }])
    }

    public var deleteComment: DeleteComment? {
      get {
        return (snapshot["deleteComment"] as? Snapshot).flatMap { DeleteComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteComment")
      }
    }

    public struct DeleteComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("postId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("commentId", type: .nonNull(.scalar(String.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(postId: GraphQLID, commentId: String, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, content: String) {
        self.init(snapshot: ["__typename": "Comment", "postId": postId, "commentId": commentId, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "content": content])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var postId: GraphQLID {
        get {
          return snapshot["postId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postId")
        }
      }

      public var commentId: String {
        get {
          return snapshot["commentId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "commentId")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }
    }
  }
}

public final class GetPostQuery: GraphQLQuery {
  public static let operationString =
    "query GetPost($id: ID!) {\n  getPost(id: $id) {\n    __typename\n    id\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    messageType\n    message\n    mediaFile {\n      __typename\n      bucket\n      key\n      region\n    }\n    mediaType\n    schoolId\n    classroomId\n    userId\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPost", arguments: ["id": GraphQLVariable("id")], type: .object(GetPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getPost: GetPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "getPost": getPost.flatMap { $0.snapshot }])
    }

    public var getPost: GetPost? {
      get {
        return (snapshot["getPost"] as? Snapshot).flatMap { GetPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getPost")
      }
    }

    public struct GetPost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("messageType", type: .nonNull(.scalar(Int.self))),
        GraphQLField("message", type: .scalar(String.self)),
        GraphQLField("mediaFile", type: .object(MediaFile.selections)),
        GraphQLField("mediaType", type: .scalar(Int.self)),
        GraphQLField("schoolId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("classroomId", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, messageType: Int, message: String? = nil, mediaFile: MediaFile? = nil, mediaType: Int? = nil, schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "messageType": messageType, "message": message, "mediaFile": mediaFile.flatMap { $0.snapshot }, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var messageType: Int {
        get {
          return snapshot["messageType"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageType")
        }
      }

      public var message: String? {
        get {
          return snapshot["message"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "message")
        }
      }

      public var mediaFile: MediaFile? {
        get {
          return (snapshot["mediaFile"] as? Snapshot).flatMap { MediaFile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "mediaFile")
        }
      }

      public var mediaType: Int? {
        get {
          return snapshot["mediaType"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mediaType")
        }
      }

      public var schoolId: Int {
        get {
          return snapshot["schoolId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "schoolId")
        }
      }

      public var classroomId: Int? {
        get {
          return snapshot["classroomId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "classroomId")
        }
      }

      public var userId: Int? {
        get {
          return snapshot["userId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public struct MediaFile: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }
      }
    }
  }
}

public final class ListPostsQuery: GraphQLQuery {
  public static let operationString =
    "query ListPosts($filter: TablePostFilterInput, $limit: Int, $nextToken: String) {\n  listPosts(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      authorId\n      authorName\n      createdAt\n      updatedAt\n      messageType\n      message\n      mediaFile {\n        __typename\n        bucket\n        key\n        region\n      }\n      mediaType\n      schoolId\n      classroomId\n      userId\n    }\n    nextToken\n  }\n}"

  public var filter: TablePostFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TablePostFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listPosts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listPosts: ListPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "listPosts": listPosts.flatMap { $0.snapshot }])
    }

    public var listPosts: ListPost? {
      get {
        return (snapshot["listPosts"] as? Snapshot).flatMap { ListPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listPosts")
      }
    }

    public struct ListPost: GraphQLSelectionSet {
      public static let possibleTypes = ["PostConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "PostConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
          GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .scalar(String.self)),
          GraphQLField("messageType", type: .nonNull(.scalar(Int.self))),
          GraphQLField("message", type: .scalar(String.self)),
          GraphQLField("mediaFile", type: .object(MediaFile.selections)),
          GraphQLField("mediaType", type: .scalar(Int.self)),
          GraphQLField("schoolId", type: .nonNull(.scalar(Int.self))),
          GraphQLField("classroomId", type: .scalar(Int.self)),
          GraphQLField("userId", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, messageType: Int, message: String? = nil, mediaFile: MediaFile? = nil, mediaType: Int? = nil, schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "messageType": messageType, "message": message, "mediaFile": mediaFile.flatMap { $0.snapshot }, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var authorId: Int {
          get {
            return snapshot["authorId"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "authorId")
          }
        }

        public var authorName: String {
          get {
            return snapshot["authorName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "authorName")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var messageType: Int {
          get {
            return snapshot["messageType"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "messageType")
          }
        }

        public var message: String? {
          get {
            return snapshot["message"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "message")
          }
        }

        public var mediaFile: MediaFile? {
          get {
            return (snapshot["mediaFile"] as? Snapshot).flatMap { MediaFile(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "mediaFile")
          }
        }

        public var mediaType: Int? {
          get {
            return snapshot["mediaType"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "mediaType")
          }
        }

        public var schoolId: Int {
          get {
            return snapshot["schoolId"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "schoolId")
          }
        }

        public var classroomId: Int? {
          get {
            return snapshot["classroomId"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "classroomId")
          }
        }

        public var userId: Int? {
          get {
            return snapshot["userId"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public struct MediaFile: GraphQLSelectionSet {
          public static let possibleTypes = ["S3Object"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .nonNull(.scalar(String.self))),
            GraphQLField("region", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(bucket: String, key: String, region: String) {
            self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var bucket: String {
            get {
              return snapshot["bucket"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "bucket")
            }
          }

          public var key: String {
            get {
              return snapshot["key"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "key")
            }
          }

          public var region: String {
            get {
              return snapshot["region"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }
        }
      }
    }
  }
}

public final class FetchPostsQuery: GraphQLQuery {
  public static let operationString =
    "query FetchPosts($schoolId: Int!, $classroomId: Int!, $userId: Int!, $limit: Int, $nextToken: String) {\n  fetchPosts(schoolId: $schoolId, classroomId: $classroomId, userId: $userId, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      authorId\n      authorName\n      createdAt\n      updatedAt\n      messageType\n      message\n      mediaFile {\n        __typename\n        bucket\n        key\n        region\n      }\n      mediaType\n      schoolId\n      classroomId\n      userId\n    }\n    nextToken\n  }\n}"

  public var schoolId: Int
  public var classroomId: Int
  public var userId: Int
  public var limit: Int?
  public var nextToken: String?

  public init(schoolId: Int, classroomId: Int, userId: Int, limit: Int? = nil, nextToken: String? = nil) {
    self.schoolId = schoolId
    self.classroomId = classroomId
    self.userId = userId
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["schoolId": schoolId, "classroomId": classroomId, "userId": userId, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("fetchPosts", arguments: ["schoolId": GraphQLVariable("schoolId"), "classroomId": GraphQLVariable("classroomId"), "userId": GraphQLVariable("userId"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(FetchPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(fetchPosts: FetchPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "fetchPosts": fetchPosts.flatMap { $0.snapshot }])
    }

    public var fetchPosts: FetchPost? {
      get {
        return (snapshot["fetchPosts"] as? Snapshot).flatMap { FetchPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "fetchPosts")
      }
    }

    public struct FetchPost: GraphQLSelectionSet {
      public static let possibleTypes = ["PostConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "PostConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
          GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .scalar(String.self)),
          GraphQLField("messageType", type: .nonNull(.scalar(Int.self))),
          GraphQLField("message", type: .scalar(String.self)),
          GraphQLField("mediaFile", type: .object(MediaFile.selections)),
          GraphQLField("mediaType", type: .scalar(Int.self)),
          GraphQLField("schoolId", type: .nonNull(.scalar(Int.self))),
          GraphQLField("classroomId", type: .scalar(Int.self)),
          GraphQLField("userId", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, messageType: Int, message: String? = nil, mediaFile: MediaFile? = nil, mediaType: Int? = nil, schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "messageType": messageType, "message": message, "mediaFile": mediaFile.flatMap { $0.snapshot }, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var authorId: Int {
          get {
            return snapshot["authorId"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "authorId")
          }
        }

        public var authorName: String {
          get {
            return snapshot["authorName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "authorName")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var messageType: Int {
          get {
            return snapshot["messageType"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "messageType")
          }
        }

        public var message: String? {
          get {
            return snapshot["message"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "message")
          }
        }

        public var mediaFile: MediaFile? {
          get {
            return (snapshot["mediaFile"] as? Snapshot).flatMap { MediaFile(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "mediaFile")
          }
        }

        public var mediaType: Int? {
          get {
            return snapshot["mediaType"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "mediaType")
          }
        }

        public var schoolId: Int {
          get {
            return snapshot["schoolId"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "schoolId")
          }
        }

        public var classroomId: Int? {
          get {
            return snapshot["classroomId"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "classroomId")
          }
        }

        public var userId: Int? {
          get {
            return snapshot["userId"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public struct MediaFile: GraphQLSelectionSet {
          public static let possibleTypes = ["S3Object"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .nonNull(.scalar(String.self))),
            GraphQLField("region", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(bucket: String, key: String, region: String) {
            self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var bucket: String {
            get {
              return snapshot["bucket"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "bucket")
            }
          }

          public var key: String {
            get {
              return snapshot["key"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "key")
            }
          }

          public var region: String {
            get {
              return snapshot["region"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }
        }
      }
    }
  }
}

public final class FetchCommentsQuery: GraphQLQuery {
  public static let operationString =
    "query FetchComments($postId: ID!, $limit: Int, $nextToken: String) {\n  fetchComments(postId: $postId, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      postId\n      commentId\n      authorId\n      authorName\n      createdAt\n      updatedAt\n      content\n    }\n    nextToken\n  }\n}"

  public var postId: GraphQLID
  public var limit: Int?
  public var nextToken: String?

  public init(postId: GraphQLID, limit: Int? = nil, nextToken: String? = nil) {
    self.postId = postId
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["postId": postId, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("fetchComments", arguments: ["postId": GraphQLVariable("postId"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(FetchComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(fetchComments: FetchComment? = nil) {
      self.init(snapshot: ["__typename": "Query", "fetchComments": fetchComments.flatMap { $0.snapshot }])
    }

    public var fetchComments: FetchComment? {
      get {
        return (snapshot["fetchComments"] as? Snapshot).flatMap { FetchComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "fetchComments")
      }
    }

    public struct FetchComment: GraphQLSelectionSet {
      public static let possibleTypes = ["CommentConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "CommentConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("postId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("commentId", type: .nonNull(.scalar(String.self))),
          GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
          GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .scalar(String.self)),
          GraphQLField("content", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(postId: GraphQLID, commentId: String, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, content: String) {
          self.init(snapshot: ["__typename": "Comment", "postId": postId, "commentId": commentId, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "content": content])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var postId: GraphQLID {
          get {
            return snapshot["postId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "postId")
          }
        }

        public var commentId: String {
          get {
            return snapshot["commentId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "commentId")
          }
        }

        public var authorId: Int {
          get {
            return snapshot["authorId"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "authorId")
          }
        }

        public var authorName: String {
          get {
            return snapshot["authorName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "authorName")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return snapshot["updatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var content: String {
          get {
            return snapshot["content"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }
      }
    }
  }
}

public final class OnCreatePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreatePost($schoolId: Int!, $classroomId: Int, $userId: Int) {\n  onCreatePost(schoolId: $schoolId, classroomId: $classroomId, userId: $userId) {\n    __typename\n    id\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    messageType\n    message\n    mediaFile {\n      __typename\n      bucket\n      key\n      region\n    }\n    mediaType\n    schoolId\n    classroomId\n    userId\n  }\n}"

  public var schoolId: Int
  public var classroomId: Int?
  public var userId: Int?

  public init(schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
    self.schoolId = schoolId
    self.classroomId = classroomId
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["schoolId": schoolId, "classroomId": classroomId, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreatePost", arguments: ["schoolId": GraphQLVariable("schoolId"), "classroomId": GraphQLVariable("classroomId"), "userId": GraphQLVariable("userId")], type: .object(OnCreatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreatePost: OnCreatePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreatePost": onCreatePost.flatMap { $0.snapshot }])
    }

    /// POST SUBSCRIPTIONS
    public var onCreatePost: OnCreatePost? {
      get {
        return (snapshot["onCreatePost"] as? Snapshot).flatMap { OnCreatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreatePost")
      }
    }

    public struct OnCreatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("messageType", type: .nonNull(.scalar(Int.self))),
        GraphQLField("message", type: .scalar(String.self)),
        GraphQLField("mediaFile", type: .object(MediaFile.selections)),
        GraphQLField("mediaType", type: .scalar(Int.self)),
        GraphQLField("schoolId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("classroomId", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, messageType: Int, message: String? = nil, mediaFile: MediaFile? = nil, mediaType: Int? = nil, schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "messageType": messageType, "message": message, "mediaFile": mediaFile.flatMap { $0.snapshot }, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var messageType: Int {
        get {
          return snapshot["messageType"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageType")
        }
      }

      public var message: String? {
        get {
          return snapshot["message"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "message")
        }
      }

      public var mediaFile: MediaFile? {
        get {
          return (snapshot["mediaFile"] as? Snapshot).flatMap { MediaFile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "mediaFile")
        }
      }

      public var mediaType: Int? {
        get {
          return snapshot["mediaType"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mediaType")
        }
      }

      public var schoolId: Int {
        get {
          return snapshot["schoolId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "schoolId")
        }
      }

      public var classroomId: Int? {
        get {
          return snapshot["classroomId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "classroomId")
        }
      }

      public var userId: Int? {
        get {
          return snapshot["userId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public struct MediaFile: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }
      }
    }
  }
}

public final class OnUpdatePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdatePost($schoolId: Int!, $classroomId: Int, $userId: Int) {\n  onUpdatePost(schoolId: $schoolId, classroomId: $classroomId, userId: $userId) {\n    __typename\n    id\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    messageType\n    message\n    mediaFile {\n      __typename\n      bucket\n      key\n      region\n    }\n    mediaType\n    schoolId\n    classroomId\n    userId\n  }\n}"

  public var schoolId: Int
  public var classroomId: Int?
  public var userId: Int?

  public init(schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
    self.schoolId = schoolId
    self.classroomId = classroomId
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["schoolId": schoolId, "classroomId": classroomId, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdatePost", arguments: ["schoolId": GraphQLVariable("schoolId"), "classroomId": GraphQLVariable("classroomId"), "userId": GraphQLVariable("userId")], type: .object(OnUpdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdatePost: OnUpdatePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdatePost": onUpdatePost.flatMap { $0.snapshot }])
    }

    public var onUpdatePost: OnUpdatePost? {
      get {
        return (snapshot["onUpdatePost"] as? Snapshot).flatMap { OnUpdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdatePost")
      }
    }

    public struct OnUpdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("messageType", type: .nonNull(.scalar(Int.self))),
        GraphQLField("message", type: .scalar(String.self)),
        GraphQLField("mediaFile", type: .object(MediaFile.selections)),
        GraphQLField("mediaType", type: .scalar(Int.self)),
        GraphQLField("schoolId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("classroomId", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, messageType: Int, message: String? = nil, mediaFile: MediaFile? = nil, mediaType: Int? = nil, schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "messageType": messageType, "message": message, "mediaFile": mediaFile.flatMap { $0.snapshot }, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var messageType: Int {
        get {
          return snapshot["messageType"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageType")
        }
      }

      public var message: String? {
        get {
          return snapshot["message"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "message")
        }
      }

      public var mediaFile: MediaFile? {
        get {
          return (snapshot["mediaFile"] as? Snapshot).flatMap { MediaFile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "mediaFile")
        }
      }

      public var mediaType: Int? {
        get {
          return snapshot["mediaType"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mediaType")
        }
      }

      public var schoolId: Int {
        get {
          return snapshot["schoolId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "schoolId")
        }
      }

      public var classroomId: Int? {
        get {
          return snapshot["classroomId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "classroomId")
        }
      }

      public var userId: Int? {
        get {
          return snapshot["userId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public struct MediaFile: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }
      }
    }
  }
}

public final class OnDeletePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeletePost($schoolId: Int!, $classroomId: Int, $userId: Int) {\n  onDeletePost(schoolId: $schoolId, classroomId: $classroomId, userId: $userId) {\n    __typename\n    id\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    messageType\n    message\n    mediaFile {\n      __typename\n      bucket\n      key\n      region\n    }\n    mediaType\n    schoolId\n    classroomId\n    userId\n  }\n}"

  public var schoolId: Int
  public var classroomId: Int?
  public var userId: Int?

  public init(schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
    self.schoolId = schoolId
    self.classroomId = classroomId
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["schoolId": schoolId, "classroomId": classroomId, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeletePost", arguments: ["schoolId": GraphQLVariable("schoolId"), "classroomId": GraphQLVariable("classroomId"), "userId": GraphQLVariable("userId")], type: .object(OnDeletePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeletePost: OnDeletePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeletePost": onDeletePost.flatMap { $0.snapshot }])
    }

    public var onDeletePost: OnDeletePost? {
      get {
        return (snapshot["onDeletePost"] as? Snapshot).flatMap { OnDeletePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeletePost")
      }
    }

    public struct OnDeletePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("messageType", type: .nonNull(.scalar(Int.self))),
        GraphQLField("message", type: .scalar(String.self)),
        GraphQLField("mediaFile", type: .object(MediaFile.selections)),
        GraphQLField("mediaType", type: .scalar(Int.self)),
        GraphQLField("schoolId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("classroomId", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, messageType: Int, message: String? = nil, mediaFile: MediaFile? = nil, mediaType: Int? = nil, schoolId: Int, classroomId: Int? = nil, userId: Int? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "messageType": messageType, "message": message, "mediaFile": mediaFile.flatMap { $0.snapshot }, "mediaType": mediaType, "schoolId": schoolId, "classroomId": classroomId, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var messageType: Int {
        get {
          return snapshot["messageType"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "messageType")
        }
      }

      public var message: String? {
        get {
          return snapshot["message"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "message")
        }
      }

      public var mediaFile: MediaFile? {
        get {
          return (snapshot["mediaFile"] as? Snapshot).flatMap { MediaFile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "mediaFile")
        }
      }

      public var mediaType: Int? {
        get {
          return snapshot["mediaType"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "mediaType")
        }
      }

      public var schoolId: Int {
        get {
          return snapshot["schoolId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "schoolId")
        }
      }

      public var classroomId: Int? {
        get {
          return snapshot["classroomId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "classroomId")
        }
      }

      public var userId: Int? {
        get {
          return snapshot["userId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public struct MediaFile: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }
      }
    }
  }
}

public final class OnCreateCommentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateComment($postId: ID!) {\n  onCreateComment(postId: $postId) {\n    __typename\n    postId\n    commentId\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    content\n  }\n}"

  public var postId: GraphQLID

  public init(postId: GraphQLID) {
    self.postId = postId
  }

  public var variables: GraphQLMap? {
    return ["postId": postId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateComment", arguments: ["postId": GraphQLVariable("postId")], type: .object(OnCreateComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateComment: OnCreateComment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateComment": onCreateComment.flatMap { $0.snapshot }])
    }

    /// COMMENT SUBSCRIPTIONS
    public var onCreateComment: OnCreateComment? {
      get {
        return (snapshot["onCreateComment"] as? Snapshot).flatMap { OnCreateComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateComment")
      }
    }

    public struct OnCreateComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("postId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("commentId", type: .nonNull(.scalar(String.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(postId: GraphQLID, commentId: String, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, content: String) {
        self.init(snapshot: ["__typename": "Comment", "postId": postId, "commentId": commentId, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "content": content])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var postId: GraphQLID {
        get {
          return snapshot["postId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postId")
        }
      }

      public var commentId: String {
        get {
          return snapshot["commentId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "commentId")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }
    }
  }
}

public final class OnUpdateCommentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateComment($postId: ID!) {\n  onUpdateComment(postId: $postId) {\n    __typename\n    postId\n    commentId\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    content\n  }\n}"

  public var postId: GraphQLID

  public init(postId: GraphQLID) {
    self.postId = postId
  }

  public var variables: GraphQLMap? {
    return ["postId": postId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateComment", arguments: ["postId": GraphQLVariable("postId")], type: .object(OnUpdateComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateComment: OnUpdateComment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateComment": onUpdateComment.flatMap { $0.snapshot }])
    }

    public var onUpdateComment: OnUpdateComment? {
      get {
        return (snapshot["onUpdateComment"] as? Snapshot).flatMap { OnUpdateComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateComment")
      }
    }

    public struct OnUpdateComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("postId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("commentId", type: .nonNull(.scalar(String.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(postId: GraphQLID, commentId: String, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, content: String) {
        self.init(snapshot: ["__typename": "Comment", "postId": postId, "commentId": commentId, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "content": content])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var postId: GraphQLID {
        get {
          return snapshot["postId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postId")
        }
      }

      public var commentId: String {
        get {
          return snapshot["commentId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "commentId")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }
    }
  }
}

public final class OnDeleteCommentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteComment($postId: ID!) {\n  onDeleteComment(postId: $postId) {\n    __typename\n    postId\n    commentId\n    authorId\n    authorName\n    createdAt\n    updatedAt\n    content\n  }\n}"

  public var postId: GraphQLID

  public init(postId: GraphQLID) {
    self.postId = postId
  }

  public var variables: GraphQLMap? {
    return ["postId": postId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteComment", arguments: ["postId": GraphQLVariable("postId")], type: .object(OnDeleteComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteComment: OnDeleteComment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteComment": onDeleteComment.flatMap { $0.snapshot }])
    }

    public var onDeleteComment: OnDeleteComment? {
      get {
        return (snapshot["onDeleteComment"] as? Snapshot).flatMap { OnDeleteComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteComment")
      }
    }

    public struct OnDeleteComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("postId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("commentId", type: .nonNull(.scalar(String.self))),
        GraphQLField("authorId", type: .nonNull(.scalar(Int.self))),
        GraphQLField("authorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .scalar(String.self)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(postId: GraphQLID, commentId: String, authorId: Int, authorName: String, createdAt: String, updatedAt: String? = nil, content: String) {
        self.init(snapshot: ["__typename": "Comment", "postId": postId, "commentId": commentId, "authorId": authorId, "authorName": authorName, "createdAt": createdAt, "updatedAt": updatedAt, "content": content])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var postId: GraphQLID {
        get {
          return snapshot["postId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postId")
        }
      }

      public var commentId: String {
        get {
          return snapshot["commentId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "commentId")
        }
      }

      public var authorId: Int {
        get {
          return snapshot["authorId"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorId")
        }
      }

      public var authorName: String {
        get {
          return snapshot["authorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "authorName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return snapshot["updatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }
    }
  }
}


//S3 WRAPING
extension S3ObjectInput: AWSS3ObjectProtocol, AWSS3InputObjectProtocol {
    public func getLocalSourceFileURL() -> URL? {
        return URL(string: self.localUri)
    }
    
    public func getMimeType() -> String {
        return self.mimeType
    }
    
    public func getBucketName() -> String {
        return self.bucket
    }
    
    public func getKeyName() -> String {
        return self.key
    }
    
    public func getRegion() -> String {
        return self.region
    }
    
}

import AWSS3
extension AWSS3PreSignedURLBuilder: AWSS3ObjectPresignedURLGenerator  {
    public func getPresignedURL(s3Object: AWSS3ObjectProtocol) -> URL? {
        let request = AWSS3GetPreSignedURLRequest()
        request.bucket = s3Object.getBucketName()
        request.key = s3Object.getKeyName()
        var url : URL?
        self.getPreSignedURL(request).continueWith { (task) -> Any? in
            url = task.result as URL?
            }.waitUntilFinished()
        return url
    }
}

extension AWSS3TransferUtility: AWSS3ObjectManager {
    
    public func download(s3Object: AWSS3ObjectProtocol, toURL: URL, completion: @escaping ((Bool, Error?) -> Void)) {
        
        let completionBlock: AWSS3TransferUtilityDownloadCompletionHandlerBlock = { task, url, data, error  -> Void in
            if let _ = error {
                completion(false, error)
            } else {
                completion(true, nil)
            }
        }
        let _ = self.download(to: toURL, bucket: s3Object.getBucketName(), key: s3Object.getKeyName(), expression: nil, completionHandler: completionBlock)
    }
    
    public func upload(s3Object: AWSS3ObjectProtocol & AWSS3InputObjectProtocol, completion: @escaping ((_ success: Bool, _ error: Error?) -> Void)) {
        let completionBlock : AWSS3TransferUtilityUploadCompletionHandlerBlock = { task, error  -> Void in
            if let _ = error {
                completion(false, error)
            } else {
                completion(true, nil)
            }
        }
        let _ = self.uploadFile(s3Object.getLocalSourceFileURL()!, bucket: s3Object.getBucketName(), key: s3Object.getKeyName(), contentType: s3Object.getMimeType(), expression: nil, completionHandler: completionBlock).continueWith { (task) -> Any? in
            if let err = task.error {
                completion(false, err)
            }
            return nil
        }
    }
}
