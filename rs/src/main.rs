fn main() {
    // 1.3
    let x = sum_of_two_largest_squares(1, 2, 3);
    if x == 13 {
        println!("success!");
    } else {
        println!("wrong!");
    }
}

fn sum_of_two_largest_squares(x: i32, y: i32, z: i32) -> i32 {
    if x <= y && x <= z {
        (y * y) + (z * z)
    } else if y <= x && y <= z {
        (x * x) + (z * z)
    } else {
        (x * x) + (y * y)
    }
}
