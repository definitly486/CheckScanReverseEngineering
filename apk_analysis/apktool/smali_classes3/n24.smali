.class public final Ln24;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lx04;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p0, Lgs2;

    if-eqz v0, :cond_0

    check-cast p0, Lgs2;

    iget-object p0, p0, Lgs2;->a:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    instance-of v0, p0, Ldj0;

    if-eqz v0, :cond_1

    check-cast p0, Ldj0;

    iget-object p0, p0, Ldj0;->a:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_1
    new-instance p1, Lj14;

    invoke-direct {p1, p0}, Lj14;-><init>(Lx04;)V

    return-object p1
.end method

.method public static final b(Landroid/graphics/drawable/Drawable;)Lx04;
    .locals 1

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Ldj0;

    invoke-direct {v0, p0}, Ldj0;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    new-instance v0, Lgs2;

    invoke-direct {v0, p0}, Lgs2;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
