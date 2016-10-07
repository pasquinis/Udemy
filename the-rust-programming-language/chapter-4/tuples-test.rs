fn main() {
    let (x, y) = (1, "hello");
    println!("x value {}, y value {}", x, y);

    let tuples = ("pippo", "pluto", "paperino");
    println!("a value {}", tuples.0) // tuple indexing
}
