#  Uses


// For Initialize data, inherit 'ObservableObject' in class and variable as 'Published var'

// Just for showing, use @EnvironmentObject var. And for preview provider, need to use ".environmentObject(ObservableClass())"

// For change, use @StateObject var and at the end ".environmentObject(state var)". We also can changed in the same process of showing view. It shows on ScoreView2 View.


# In this project-
1. contentView: Just Increase the environment object value by 1

2. ScoreView1: Just show the environment object value

3. ScorView2: Show and increase both have done in this view

In the ScoreView2: I just use     @EnvironmentObject var settings: GameSettings and end of the previewProvider, used .environmentObject(GameSettings())

We need to use .environmentObject(objectName) once. either it's contentView body, neither it's @main view.

MARK: - 1 About: These step should be taken when we use to update value as like Showing view (creating instance)
