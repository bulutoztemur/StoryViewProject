//
//  ContentView.swift
//  StoryViewProject
//
//  Created by bulut.oztemur on 02.03.25.
//

import SwiftUI
import StoryViewFramework

struct ContentView: View {
    
    let sampleData = [
        UserStories(
            username: "Alice",
            profileImage: "https://picsum.photos/300/300",
            stories: [
                Story(
                    url: "https://fastly.picsum.photos/id/305/200/300.jpg?hmac=qqxVDT5GPIxyVNSo9Y_9u_qZSwXU4Cy94gp7VAMVRIw",
                    duration: 3,
                    isViewed: false,
                    type: .image
                ),
                Story(
                    url: "https://v.ftcdn.net/09/85/56/22/700_F_985562226_ahjIJPlBh9J4FJPEotCIAVxpCHVBPtE8_ST.mp4",
                    duration: 10,
                    isViewed: false,
                    type: .video
                ),
                Story(
                    url: "https://fastly.picsum.photos/id/305/200/300.jpg?hmac=qqxVDT5GPIxyVNSo9Y_9u_qZSwXU4Cy94gp7VAMVRIw",
                    duration: 3,
                    isViewed: false,
                    type: .image
                )
            ],
            lastVisitedIndex: 0
        ),
        UserStories(
            username: "Bob",
            profileImage: "https://picsum.photos/400/300",
            stories: [
                Story(
                    url: "https://fastly.picsum.photos/id/485/200/300.jpg?hmac=Kv8DZbgB5jppYcdfZdMVu2LM3XAIt-3fvR8VcmrLYhw",
                    duration: 3,
                    isViewed: false,
                    type: .image
                ),
                Story(
                    url: "https://fastly.picsum.photos/id/305/200/300.jpg?hmac=qqxVDT5GPIxyVNSo9Y_9u_qZSwXU4Cy94gp7VAMVRIw",
                    duration: 3,
                    isViewed: false,
                    type: .image
                ),
                Story(
                    url: "https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/720/Big_Buck_Bunny_720_10s_5MB.mp4",
                    duration: 10,
                    isViewed: false,
                    type: .video
                ),
                Story(
                    url: "https://fastly.picsum.photos/id/485/200/300.jpg?hmac=Kv8DZbgB5jppYcdfZdMVu2LM3XAIt-3fvR8VcmrLYhw",
                    duration: 3,
                    isViewed: false,
                    type: .image
                )
            ],
            lastVisitedIndex: 0
        )
    ]
    
    let config = UserStoryViewConfiguration(profileImageSize: 72.0)
    
    var body: some View {
        UserStoryView(
            list: sampleData,
            config: config
        )
    }
}

#Preview {
    ContentView()
}
