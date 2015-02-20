class steven::stack::js {
    notice '---> Installing JS stack : NodeJS, Gulp and Bower.'

    include steven::wrapper::wrap_nodejs
    include steven::wrapper::wrap_gulp
    include steven::wrapper::wrap_bower
}