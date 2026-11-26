.class public Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lw57;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 2

    iget p0, p5, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget p5, p5, Landroid/graphics/Point;->y:I

    int-to-float p5, p5

    sget-object v0, Lcom/dlazaro66/qrcodereaderview/Orientation;->PORTRAIT:Lcom/dlazaro66/qrcodereaderview/Orientation;

    if-ne p3, v0, :cond_1

    iget p3, p4, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    div-float/2addr p3, p5

    iget v0, p4, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, p0

    new-instance p0, Landroid/graphics/PointF;

    iget v1, p1, Lw57;->b:F

    sub-float/2addr p5, v1

    mul-float/2addr p5, p3

    iget p1, p1, Lw57;->a:F

    mul-float/2addr p1, v0

    invoke-direct {p0, p5, p1}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p2, :cond_0

    iget p1, p4, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget p2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->y:F

    :cond_0
    return-object p0

    :cond_1
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/Orientation;->LANDSCAPE:Lcom/dlazaro66/qrcodereaderview/Orientation;

    if-ne p3, v0, :cond_3

    iget p3, p4, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    div-float/2addr p3, p0

    iget p0, p4, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr p0, p5

    new-instance p5, Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p1, Lw57;->a:F

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    iget p3, p4, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    iget p1, p1, Lw57;->b:F

    mul-float/2addr p1, p0

    sub-float/2addr p3, p1

    invoke-direct {p5, v0, p3}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p2, :cond_2

    iget p0, p4, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget p1, p5, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p1

    iput p0, p5, Landroid/graphics/PointF;->x:F

    :cond_2
    return-object p5

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public transform([Lw57;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)[Landroid/graphics/PointF;
    .locals 10

    .line 85
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 86
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v5, p1, v2

    move-object v4, p0

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 87
    invoke-virtual/range {v4 .. v9}, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;->transform(Lw57;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p0

    .line 88
    aput-object p0, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object p0, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
