.class public abstract Lyads/oh6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;II)Lw74;
    .locals 0

    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result p0

    add-int/2addr p2, p1

    if-eqz p0, :cond_0

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, p1}, Lkx6;->k(II)Lw74;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lkx6;->n(II)Ly74;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/view/View;)Z
    .locals 1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Landroid/view/View;)Z
    .locals 1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
