.class public final Lcom/warefly/checkscan/markdownparser/BulletCircleSpan;
.super Landroid/text/style/BulletSpan;
.source "SourceFile"


# virtual methods
.method public final drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr p7, p5

    div-int/lit8 p7, p7, 0x2

    add-int/2addr p7, p5

    if-eqz p11, :cond_0

    int-to-float p0, p3

    const/4 p3, 0x0

    add-float/2addr p0, p3

    int-to-float p4, p7

    invoke-virtual {p1, p0, p4, p3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final getLeadingMargin(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
