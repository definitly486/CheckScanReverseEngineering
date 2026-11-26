.class public final Lyads/h05;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lyads/rd3;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-eqz p0, :cond_6

    iget p0, p2, Lyads/rd3;->a:I

    if-eqz p0, :cond_6

    iget p0, p2, Lyads/rd3;->b:I

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    iget v0, p2, Lyads/rd3;->b:I

    mul-int/2addr p0, v0

    iget v0, p2, Lyads/rd3;->a:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    if-ne p0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p0, Lyads/ql5;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lyads/ql5;-><init>(II)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p2, Lyads/rd3;->a:I

    if-eqz v0, :cond_5

    iget v0, p2, Lyads/rd3;->b:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p2, Lyads/rd3;->a:I

    const/16 v2, 0x64

    mul-int/2addr v1, v2

    iget v3, p2, Lyads/rd3;->b:I

    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Ly74;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lw74;-><init>(III)V

    invoke-virtual {v1}, Lw74;->b()Lx74;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :cond_3
    :goto_0
    iget-boolean v3, v0, Lx74;->d:Z

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lx74;->nextInt()I

    move-result v3

    iget v4, p2, Lyads/rd3;->b:I

    mul-int/2addr v4, v3

    iget v5, p2, Lyads/rd3;->a:I

    rem-int v6, v4, v5

    if-nez v6, :cond_4

    div-int/2addr v4, v5

    new-instance p0, Lyads/ql5;

    invoke-direct {p0, v3, v4}, Lyads/ql5;-><init>(II)V

    goto :goto_1

    :cond_4
    int-to-double v6, v4

    int-to-double v4, v5

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lw65;->a(D)I

    move-result v4

    int-to-double v8, v4

    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    div-double v5, v8, v6

    cmpg-double v7, v5, v1

    if-gez v7, :cond_3

    new-instance p0, Lyads/ql5;

    invoke-direct {p0, v3, v4}, Lyads/ql5;-><init>(II)V

    move-wide v1, v5

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lyads/ql5;->b:I

    mul-int v2, v1, v0

    div-int/2addr v2, p2

    new-instance v3, Lyads/ql5;

    invoke-direct {v3, v1, v2}, Lyads/ql5;-><init>(II)V

    iget v1, p0, Lyads/ql5;->c:I

    mul-int/2addr p2, v1

    div-int/2addr p2, v0

    new-instance v0, Lyads/ql5;

    invoke-direct {v0, p2, v1}, Lyads/ql5;-><init>(II)V

    invoke-static {v3, v0}, Lpp1;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Lyads/ql5;

    iget v0, p2, Lyads/ql5;->b:I

    iget p2, p2, Lyads/ql5;->c:I

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget p2, p0, Lyads/ql5;->b:I

    sub-int/2addr p1, p2

    div-int/lit8 v3, p1, 0x2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v6, p0, Lyads/ql5;->c:I

    sub-int/2addr p1, v6

    div-int/lit8 v4, p1, 0x2

    iget v5, p0, Lyads/ql5;->b:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    return-object p1
.end method
