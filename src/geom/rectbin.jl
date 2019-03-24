"""
    Geom.rectbin

Draw equal sizes rectangles centered at `x` and `y` positions.  Optionally
specify their `color`.
"""
function rectbin()
    RectangularGeometry(Gadfly.Stat.rectbin())
end

"""
    Geom.histogram2d[(; xbincount=nothing, xminbincount=3, xmaxbincount=150,
                        ybincount=nothing, yminbincount=3, ymaxbincount=150)]

Draw a heatmap of the `x` and `y` aesthetics by binning into rectangles and
indicating density with color.  This geometry is equivalent to
[`Geom.rect`](@ref) with [`Stat.histogram2d`](@ref);  see the latter for more
information.
"""
function histogram2d(; xbincount=nothing, xminbincount=3, xmaxbincount=150,
                       ybincount=nothing, yminbincount=3, ymaxbincount=150)
    RectangularGeometry(
        Gadfly.Stat.histogram2d(xbincount = xbincount,
                                xminbincount = xminbincount,
                                xmaxbincount = xmaxbincount,
                                ybincount = ybincount,
                                yminbincount = yminbincount,
                                ymaxbincount = ymaxbincount))
end