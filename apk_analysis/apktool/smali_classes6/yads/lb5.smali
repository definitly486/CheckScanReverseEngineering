.class public final Lyads/lb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/gl5;


# instance fields
.field public final a:Lyads/cg3;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lyads/cg3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lb5;->a:Lyads/cg3;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lyads/lb5;->b:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lyads/lb5;->c:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lyads/lb5;->d:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;FFLyads/yf3;IFI)V
    .locals 5

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, Lyads/xf3;

    iget-object v0, p0, Lyads/lb5;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p5, p0, Lyads/lb5;->d:Landroid/graphics/RectF;

    iget v0, p4, Lyads/xf3;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v2, p2, v0

    iput v2, p5, Landroid/graphics/RectF;->left:F

    iget v3, p4, Lyads/xf3;->b:F

    div-float/2addr v3, v1

    sub-float v4, p3, v3

    iput v4, p5, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p5, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p3

    iput v3, p5, Landroid/graphics/RectF;->bottom:F

    const/4 p2, 0x0

    cmpl-float p3, p6, p2

    if-lez p3, :cond_0

    div-float p3, p6, v1

    add-float/2addr v2, p3

    iput v2, p5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, p3

    iput v4, p5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iput v0, p5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, p3

    iput v3, p5, Landroid/graphics/RectF;->bottom:F

    :cond_0
    iget p3, p4, Lyads/xf3;->c:F

    iget-object v0, p0, Lyads/lb5;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p3, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p7, :cond_2

    cmpg-float p2, p6, p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lyads/lb5;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lyads/lb5;->d:Landroid/graphics/RectF;

    iget p3, p4, Lyads/xf3;->c:F

    iget-object p0, p0, Lyads/lb5;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 5

    .line 85
    iget-object v0, p0, Lyads/lb5;->a:Lyads/cg3;

    .line 86
    iget-object v0, v0, Lyads/cg3;->b:Lyads/bg3;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lyads/ag3;

    .line 88
    iget-object v1, v0, Lyads/ag3;->b:Lyads/xf3;

    .line 89
    iget-object v2, p0, Lyads/lb5;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lyads/lb5;->a:Lyads/cg3;

    .line 90
    iget-object v3, v3, Lyads/cg3;->b:Lyads/bg3;

    .line 91
    invoke-virtual {v3}, Lyads/bg3;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget v2, v1, Lyads/xf3;->c:F

    .line 93
    iget-object v3, p0, Lyads/lb5;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 94
    iget v2, v0, Lyads/ag3;->d:I

    if-eqz v2, :cond_1

    .line 95
    iget v3, v0, Lyads/ag3;->c:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v3, p0, Lyads/lb5;->c:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget v0, v0, Lyads/ag3;->c:F

    .line 99
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget v0, v1, Lyads/xf3;->c:F

    .line 101
    iget-object p0, p0, Lyads/lb5;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method
