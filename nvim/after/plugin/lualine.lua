require('lualine').setup{
    options = {
        theme  = 'oxocarbon',
        --theme  = 'oxocarbon-lualine',
        component_separators = '',
        section_separators = '',
    },
    sections = {
        lualine_x = {'encoding', 'filetype'}
    },

}
