require("cairo")



function conky_main()
    if not conky_window then return end
    local cs = cairo_xlib_surface_create(conky_window.display,
                                     conky_window.drawable,
                                     conky_window.visual,
                                     conky_window.width,
                                     conky_window.height)
    cr = cairo_create(cs)

    local function drawTime()
        local font, size = "Sans", 12
        local time = conky_parse("${time %I:%M %p}")
        local x = math.floor((conky_window.height/2)-(string.len(time)/2))
        local y = math.floor(conky_window.width/2)

        cairo_select_font_face(cr, font, CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_FACE_NORMAL)
        cairo_set_font_size(size)
        cairo_set_source_rgba(1,1,1,1)
        cairo_move_to(cr, x, y)
        cairo_show_text(cr, text)
        cairo_stroke(cr)

    end

    drawTime()

    cairo_destroy(cr)
    cairo_surface_destroy(cs)
    cr=nil
end

