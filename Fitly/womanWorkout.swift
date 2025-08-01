//
//  womanWorkout.swift
//  Fitly
//
//  Created by Mili S on 7/30/25.
//

import SwiftUI

struct womanWorkout: View {
    let womanWorkoutText = """
                            • Day 1 – Lower Body
                     
                            • Day 2 - Upper Body
                    
                            • Day 3 - Lower Body
                    
                            • Day 4 – Upper Body
                    
                            • Day 5 – Lower Body
                    
                        • Day 6 – Full Body
                    
                                    • Day 7 – Mobility Workout
    
    """
        
        var body: some View {
            ZStack {
                Color(hue: 0.13, saturation: 0.109, brightness: 0.95)
                    .ignoresSafeArea()

                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                            
                            Text("        6 Week Muscle Building Workout for Women")
                                .multilineTextAlignment(.center)
                                .font(.title)
                                .foregroundColor(.red)
                                .bold()
                            
                            Image("ww")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 400, height: 300)
                                .clipped()
                            
                            
                            Text("                                Schedule")
                                .font(.system(size:20))
                                .foregroundColor(Color.red)
                                .multilineTextAlignment(.center)
                                .bold()
                            Text (womanWorkoutText)
                                .foregroundStyle(Color.primary)
                                .multilineTextAlignment(.center)
                            
                            Text("                                Instructions")
                                .font(.system(size:20))
                                .foregroundColor(Color.red)
                                .multilineTextAlignment(.center)
                                .bold()
                            
                            Text("                                Days 1, 3, 5: Lower Body").bold()
                                .multilineTextAlignment(.center)
                            Text("""
            • Sumo Deadlift — 3 sets (12, 10, 8 reps)
            • Bulgarian Split Squats — 3 sets (12, 10, 8 reps each leg)
            • Barbell Hip Thrust — 3 sets (12, 10, 8 reps)
            • Glute Cable Kickback — 3 sets (12, 10, 8 reps each leg)
            • Leg Press — 3 sets (12, 10, 8 reps)
            • Seated Leg Curl — 3 sets (12, 10, 8 reps)
            • Hip Abduction Machine — 3 sets (12, 10, 8 reps)
            • Hip Adduction Machine — 3 sets (12, 10, 8 reps)
            • Seated Calf Raise — 3 sets (12, 10, 8 reps)
            """)
                            .multilineTextAlignment(.center)
                            Text("                                Days 2, 4: Upper Body").bold()
                                .multilineTextAlignment(.center)
                            Text("""
            • Seated Dumbbell Press — 3 sets (15, 12, 10 reps)
            • Seated Lateral Raise — 3 sets (15, 12, 10 reps)
            • Reverse Pec-Deck — 3 sets (15, 12, 10 reps)
            • Seated Row — 3 sets (15, 12, 10 reps)
            • Lat Pull Down — 3 sets (15, 12, 10 reps)
            • Incline Dumbbell Bench Press — 3 sets (15, 12, 10 reps)
            • Cable Crossover — 3 sets (15, 12, 10 reps)
            • Preacher Curl — 2 sets (15 reps)
            • Triceps Push Down — 2 sets (15 reps)
            """)
                            .multilineTextAlignment(.center)
                            Text("                                         Day 6: Full Body").bold()
                                .multilineTextAlignment(.center)
                            Text("""
                        • Sumo Squat — 2 sets (12, 10 reps)
                        • Romanian Deadlift — 2 sets (12, 10 reps)
                        • Walking Lunge — 2 sets (12, 10 reps each leg)
                        • Lying Leg Raise — 2 sets (12, 10 reps)
                        • Weighted Crunch — 2 sets (12, 10 reps)
                        • Dumbbell Pullover — 2 sets (12, 10 reps)
                        • Upright Row — 2 sets (12, 10 reps)
                        • Dumbbell Bench Press — 2 sets (12, 10 reps)
                        • Cable Curl — 2 sets (15 reps)
                        • Overhead Triceps Extension — 2 sets (15 reps)
            """)
                            .multilineTextAlignment(.center)
                            Text("                                  Day 7: Mobility / Recovery").bold()
                                .multilineTextAlignment(.center)
                            Text("""
                    • World's Greatest Stretch — 2 sets (30 sec)
                    • Squat to Stand — 2 sets (30 sec)
                    • Hip Circles — 2 sets (15 reps each side)
                    • Leg Swings — 2 sets (15 reps each leg)
                    • Prone Quad Stretch — 2 sets (30 sec each leg)
                    • Superman — 2 sets (30 sec)
                    • 90/90 Hip Crossover — 2 sets (5–10 reps each side)
                    • Arm Circles Clockwise — 2 sets (30 sec)
                    • Arm Circles Counter Clockwise — 2 sets (30 sec)
                    • Push Up — 2 sets (10–12 reps)
                    • Dead Bug — 2 sets (30 sec)
                    • Plank — 2 sets (60–90 sec)
                    • Side Plank — 2 sets (60–90 sec each side)
            """)
                        }
                    
                        .font(.system(size: 14))
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 40)
                        
                    
                    Text ("A gym membership can cost $30–$60 per month, totaling over $700 a year. This workout uses mostly bodyweight and affordable equipment, making it a budget-friendly alternative that saves you hundreds annually.")
                        .multilineTextAlignment(.center)
                        .font(.system(size:20))
                        .foregroundColor(Color.red)
                        .background(Color(hue: 0.525, saturation: 0.133, brightness: 0.953))
                        .bold()
                        .cornerRadius(10)
                    }
                    .padding()
                            
                    
                }
        }
    }


#Preview {
    womanWorkout()
}
