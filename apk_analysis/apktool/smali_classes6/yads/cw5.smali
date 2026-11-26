.class public final Lyads/cw5;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Lyads/dn5;

.field public final b:Lyads/bw5;

.field public final c:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lyads/dn5;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lyads/cw5;->a:Lyads/dn5;

    new-instance v0, Lyads/bw5;

    invoke-direct {v0, p1}, Lyads/bw5;-><init>(Lyads/dn5;)V

    iput-object v0, p0, Lyads/cw5;->b:Lyads/bw5;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lyads/cw5;->c:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lyads/cw5;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lyads/cw5;->b:Lyads/bw5;

    iget-object v1, p0, Lyads/cw5;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p0, p0, Lyads/cw5;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    iget-object v2, v0, Lyads/bw5;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v3, v0, Lyads/bw5;->e:F

    sub-float/2addr v1, v3

    iget-object v3, v0, Lyads/bw5;->a:Lyads/dn5;

    iget v4, v3, Lyads/dn5;->d:F

    add-float/2addr v1, v4

    iget v4, v0, Lyads/bw5;->f:F

    add-float/2addr p0, v4

    iget v3, v3, Lyads/dn5;->e:F

    add-float/2addr p0, v3

    iget-object v0, v0, Lyads/bw5;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, p0, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object p0, p0, Lyads/cw5;->a:Lyads/dn5;

    iget v0, p0, Lyads/dn5;->a:F

    iget p0, p0, Lyads/dn5;->e:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lyads/cw5;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object p0, p0, Lyads/cw5;->a:Lyads/dn5;

    iget p0, p0, Lyads/dn5;->d:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
