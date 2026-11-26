.class public final Lyads/td3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/rd3;Ljava/util/Map;)Z
    .locals 2

    iget-object v0, p0, Lyads/rd3;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lyads/rd3;->f:Z

    if-nez p0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
