use std::io;

fn main() {
    println!("Guess the number!");

    println!("Please, enter your try:");

    let mut try = String::new();

    io::stdin().read_line(&mut try)
        .expect("I can not read the line");

    println!("You entered: {}", try);
}
