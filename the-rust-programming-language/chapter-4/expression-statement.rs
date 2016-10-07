fn main() {
    let result = add_one(4);

    println!("The result is {}", result)
}

fn add_one(x: i32) -> i32 {
    x + 1
}
