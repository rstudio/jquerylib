# jQuery libraries

## Adding a new library

jQuery stopped linking the sourcemap file in jQuery 1.11 and it must be added by hand.

[Source](https://blog.jquery.com/2014/01/24/jquery-1-11-and-2-1-released/)
> but you will need to add the appropriate sourcemap comment at the end of the minified file

### Actions

1. Copy in `.js`, `.min.js`, and `.min.map` files into folder `X.Y.Z`
2. Append the line `//# sourceMappingURL=jquery-X.Y.Z.min.map` to the `X.Y.Z/jquery-X.Y.Z.min.js` file

A `{jquerylib}` test will confirm if this extra step has been performed.
