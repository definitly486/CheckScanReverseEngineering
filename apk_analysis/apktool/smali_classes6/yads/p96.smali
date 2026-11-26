.class public final Lyads/p96;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public b:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v1, "ClipBoundsTop"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lyads/p96;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    iget p0, p0, Lyads/p96;->b:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final set(Landroid/view/View;F)V
    .locals 5

    iput p2, p0, Lyads/p96;->b:F

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/4 v2, 0x0

    if-gez v1, :cond_0

    iget-object v0, p0, Lyads/p96;->a:Landroid/graphics/Rect;

    neg-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, p2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    cmpl-float p2, p2, v0

    iget-object v0, p0, Lyads/p96;->a:Landroid/graphics/Rect;

    if-lez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v1, p0, Lyads/p96;->b:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v2, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v2, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p0, p0, Lyads/p96;->a:Landroid/graphics/Rect;

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lyads/p96;->set(Landroid/view/View;F)V

    return-void
.end method
