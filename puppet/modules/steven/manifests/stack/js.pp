class steven::stack::js {
    notice '---> JS stack will be installed :'
    notice '       * NodeJS'
    notice '       * Gulp'
    notice '       * Bower'

    include steven::wrapper::wrap_nodejs
    include steven::wrapper::wrap_gulp
    include steven::wrapper::wrap_bower
}