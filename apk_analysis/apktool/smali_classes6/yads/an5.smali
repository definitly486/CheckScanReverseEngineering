.class public final Lyads/an5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;ILyads/cw5;)V
    .locals 5

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p2, v0

    iget v2, p0, Lyads/an5;->b:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v0, p2

    iget v3, p0, Lyads/an5;->b:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    invoke-virtual {p3, v1, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    if-eqz p5, :cond_2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p5, Lyads/cw5;->b:Lyads/bw5;

    iput-object p3, p4, Lyads/bw5;->d:Ljava/lang/String;

    iget-object v0, p4, Lyads/bw5;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p4, Lyads/bw5;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p3, p4, Lyads/bw5;->c:Landroid/graphics/Paint;

    iget-object v0, p4, Lyads/bw5;->d:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iput p3, p4, Lyads/bw5;->e:F

    iget-object p3, p4, Lyads/bw5;->b:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    iput p3, p4, Lyads/bw5;->f:F

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p5}, Lyads/cw5;->getIntrinsicWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p4, p2, p3

    iget v0, p0, Lyads/an5;->b:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p5}, Lyads/cw5;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr p2, p3

    iget p0, p0, Lyads/an5;->b:I

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p5}, Lyads/cw5;->getIntrinsicHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p0

    invoke-virtual {p5, p4, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p5, p1}, Lyads/cw5;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method
