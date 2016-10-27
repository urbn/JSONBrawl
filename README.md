# JSONCageMatch
### Ready, FIGHT!

*The purpose of this repo is to put several JSON parsing libraries in the cage and let em fight till the death.*

### Tests that all projects need to pass:
- Basic parsing (strings, ints, floats, bools)
- Optional & Non-optional parsing where non-optional fails initialization
- Parsing sub models
- Parsing arrays of objects & throw out invalid objects
- Parse to Enums
- Parse nested keys (“address.name” or “address” => “name” or other)
- Default values (via nil coalescing or defaults or other)
- Some good errors for failed parsing (MissingKey, TypeMismatch, other) with good data
- Tests!!!!

### The Rules
- Create a branch to enter the cage match
- Add the parsing library contender to the project via a cocoapod
- Write an extension for each model to show what parsing is like utilizing the library
- Add unit tests that run the models through the standard testing suite after going through parsing
- Add contender to the README with any notes or considerations (include link to project)
- Submit a PR with added contender

---

### Nike Elevate: https://github.com/Nike-Inc/Elevate
- More operators
- Different operators for arrays vs everything else?
- Extremely verbose
- Good bit of repeated code
- Doesn’t seem to have typer inference

### JASON: https://github.com/delba/JASON
- Interesting path syntax & subscripts
- Type casting feature is nice with the default values (might steal that)
- Only seems to have optional types & default types. Nothing failable
- Not very active

### Mapper: https://github.com/lyft/mapper
- Actively developed by Lyft. Though not sure how actively
- Uses NSDictionary/NSArray
- Convertible is a nice protocol to transfer types from JSON (CLCoordinate)
- from is non-optional parsing, optionalFrom is optional parsing
- Concise syntax

### Marshal: https://github.com/utahiosmac/Marshal
- Protocol oriented
- Seems super lightweight
- Not very active (stars & commits)
- No operators
- Operators with no reference???
- Protocol for adding custom value decoding
- Maybe a little light on the documentation, need to dig in

### Decodable: https://github.com/Anviking/Decodable
- Operators, ugh
- Some operators not set up right, needs work
- Seems pretty convoluted and hard to contribute to
- Operators work in the happy path but need additional non-intuitive code for anything beyond basics
- Widely supported and developed
