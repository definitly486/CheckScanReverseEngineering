.class public final Lv14;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lx04;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 8

    instance-of v0, p0, Ldj0;

    if-eqz v0, :cond_0

    check-cast p0, Ldj0;

    iget-object p0, p0, Ldj0;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->asImageBitmap(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move v5, p2

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/painter/BitmapPainterKt;->BitmapPainter-QZhYCtY$default(Landroidx/compose/ui/graphics/ImageBitmap;JJIILjava/lang/Object;)Landroidx/compose/ui/graphics/painter/BitmapPainter;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p2, p0, Lgs2;

    if-eqz p2, :cond_1

    new-instance p2, Lks2;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p0, p1}, Ln24;->a(Lx04;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p2, p0}, Lks2;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_1
    new-instance p1, Lu14;

    invoke-direct {p1, p0}, Lu14;-><init>(Lx04;)V

    return-object p1
.end method
