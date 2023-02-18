use std::collections::HashMap;

pub fn can_construct_note(magazine: &[&str], note: &[&str]) -> bool {
    let mut map = HashMap::new();
    for word in magazine {
        *map.entry(word).or_insert(0) += 1;
    }
    for word in note {
        let entry = map.entry(word).or_insert(0);
        match *entry {
            0 => return false,
            _ => *entry -= 1,
        }
    }
    true
}