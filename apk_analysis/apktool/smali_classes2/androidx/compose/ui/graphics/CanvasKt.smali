.class public final Landroidx/compose/ui/graphics/CanvasKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final Canvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->ActualCanvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method

.method public static final rotate(Landroidx/compose/ui/graphics/Canvas;FFF)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p2, p3}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/Canvas;->rotate(F)V

    neg-float p1, p2

    neg-float p2, p3

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public static final rotateRad(Landroidx/compose/ui/graphics/Canvas;FFF)V
    .locals 0

    invoke-static {p1}, Landroidx/compose/ui/graphics/DegreesKt;->degrees(F)F

    move-result p1

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/CanvasKt;->rotate(Landroidx/compose/ui/graphics/Canvas;FFF)V

    return-void
.end method

.method public static synthetic rotateRad$default(Landroidx/compose/ui/graphics/Canvas;FFFILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/CanvasKt;->rotateRad(Landroidx/compose/ui/graphics/Canvas;FFF)V

    return-void
.end method

.method public static final scale(Landroidx/compose/ui/graphics/Canvas;FFFF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    cmpg-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p3, p4}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->scale(FF)V

    neg-float p1, p3

    neg-float p2, p4

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public static synthetic scale$default(Landroidx/compose/ui/graphics/Canvas;FFFFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    move p2, p1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/CanvasKt;->scale(Landroidx/compose/ui/graphics/Canvas;FFFF)V

    return-void
.end method

.method public static final withSave(Landroidx/compose/ui/graphics/Canvas;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    throw p1
.end method

.method public static final withSaveLayer(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/ui/graphics/Paint;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->saveLayer(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    throw p1
.end method
