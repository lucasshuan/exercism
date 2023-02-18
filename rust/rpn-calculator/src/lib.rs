#[derive(Debug)]
pub enum CalculatorInput {
    Add,
    Subtract,
    Multiply,
    Divide,
    Value(i32),
}

pub fn evaluate(inputs: &[CalculatorInput]) -> Option<i32> {
    let mut vec: Vec<i32> = vec![];
    if inputs.is_empty() {
        return None;
    }
    for input in inputs {
        match *input {
            CalculatorInput::Add => {
                let n1 = vec.pop();
                if n1.is_none() {
                    return None;
                }
                let n2 = vec.pop();
                if n2.is_none() {
                    return None;
                }
                vec.push(n2.unwrap() + n1.unwrap());
            }
            CalculatorInput::Subtract => {
                let n1 = vec.pop();
                if n1.is_none() {
                    return None;
                }
                let n2 = vec.pop();
                if n2.is_none() {
                    return None;
                }
                vec.push(n2.unwrap() - n1.unwrap());
            }
            CalculatorInput::Multiply => {
                let n1 = vec.pop();
                if n1.is_none() {
                    return None;
                }
                let n2 = vec.pop();
                if n2.is_none() {
                    return None;
                }
                vec.push(n2.unwrap() * n1.unwrap());
            }
            CalculatorInput::Divide => {
                let n1 = vec.pop();
                if n1.is_none() {
                    return None;
                }
                let n2 = vec.pop();
                if n2.is_none() {
                    return None;
                }
                vec.push(n2.unwrap() / n1.unwrap());
            }
            CalculatorInput::Value(n) => {
                vec.push(n);
            }
        }
    }
    match *vec {
        [n] => return Some(n),
        _ => return None,
    }
}
