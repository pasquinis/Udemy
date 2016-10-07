fn main() {
    //let result: fn(i32) -> i32 = add_one(4);
    let result = add_one(4);

    println!("The result is {}", result)
}

fn add_one(x: i32) -> i32 {
    x + 1
}
