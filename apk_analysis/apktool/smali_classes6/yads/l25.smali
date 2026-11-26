.class public final Lyads/l25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wx3;


# instance fields
.field public final a:F

.field public final b:Lyads/vx3;

.field public final c:Lyads/uj;


# direct methods
.method public constructor <init>(F)V
    .locals 2

    new-instance v0, Lyads/vx3;

    invoke-direct {v0}, Lyads/vx3;-><init>()V

    new-instance v1, Lyads/uj;

    invoke-direct {v1, p1}, Lyads/uj;-><init>(F)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/l25;->a:F

    iput-object v0, p0, Lyads/l25;->b:Lyads/vx3;

    iput-object v1, p0, Lyads/l25;->c:Lyads/uj;

    return-void
.end method


# virtual methods
.method public final a(II)Lyads/vx3;
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_2

    if-eq v1, v4, :cond_0

    if-nez v1, :cond_2

    :cond_0
    iget-object p2, p0, Lyads/l25;->c:Lyads/uj;

    int-to-float v0, v2

    iget p2, p2, Lyads/uj;->a:F

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-ne v1, v4, :cond_1

    int-to-double v0, v3

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p2, v0

    :cond_1
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_2
    if-ne v1, v5, :cond_5

    if-eq v0, v4, :cond_3

    if-nez v0, :cond_5

    :cond_3
    iget-object p1, p0, Lyads/l25;->c:Lyads/uj;

    int-to-float v1, v3

    iget p1, p1, Lyads/uj;->a:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ne v0, v4, :cond_4

    int-to-double v0, v2

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p1, v0

    :cond_4
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_5
    if-ne v1, v4, :cond_7

    if-ne v0, v4, :cond_7

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    int-to-float p1, v2

    int-to-float p2, v3

    div-float v0, p1, p2

    iget v1, p0, Lyads/l25;->a:F

    cmpl-float v0, v0, v1

    iget-object v1, p0, Lyads/l25;->c:Lyads/uj;

    if-lez v0, :cond_6

    iget p1, v1, Lyads/uj;->a:F

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_6
    iget p2, v1, Lyads/uj;->a:F

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v6, p2

    move p2, p1

    move p1, v6

    :cond_7
    :goto_0
    iget-object p0, p0, Lyads/l25;->b:Lyads/vx3;

    iput p1, p0, Lyads/vx3;->a:I

    iput p2, p0, Lyads/vx3;->b:I

    return-object p0
.end method
