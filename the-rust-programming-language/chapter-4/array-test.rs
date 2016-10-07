fn main() {
    let a = [0; 20];

    println!("a elements {}, first element {}", a.len(), a[0]);


    let a = [0, 1, 2, 3, 4];
    println!("a elements {}, first element {}", a.len(), a[0]);

    let complete_slice = &a[..];
    println!("complete_slice elements {}, first element {}", complete_slice.len(), complete_slice[0]);

    let middle_slice = &a[0..2];
    println!("middle_slice elements {}, first element {}", middle_slice.len(), middle_slice[0]);
}
