.class public final Lyads/el6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/et1;

.field public final b:F

.field public final c:Lyads/ys1;

.field public final d:Lyads/ts1;

.field public final e:Lyads/wr1;

.field public f:I


# direct methods
.method public constructor <init>(Lyads/et1;FLyads/ys1;Lyads/ts1;Lyads/wr1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/el6;->a:Lyads/et1;

    iput p2, p0, Lyads/el6;->b:F

    iput-object p3, p0, Lyads/el6;->c:Lyads/ys1;

    iput-object p4, p0, Lyads/el6;->d:Lyads/ts1;

    iput-object p5, p0, Lyads/el6;->e:Lyads/wr1;

    const/4 p2, 0x1

    iput p2, p0, Lyads/el6;->f:I

    invoke-virtual {p0}, Lyads/el6;->a()I

    move-result p2

    iput p2, p0, Lyads/el6;->f:I

    invoke-virtual {p1}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget p3, p0, Lyads/el6;->f:I

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    :cond_0
    iget-object p2, p1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget p3, p0, Lyads/el6;->f:I

    invoke-virtual {p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    new-instance p2, Lyads/dl6;

    invoke-direct {p2, p0}, Lyads/dl6;-><init>(Lyads/el6;)V

    invoke-virtual {p1, p2}, Lyads/et1;->setChangePageCallbackForOffScreenPages$mobileads_externalRelease(Lyads/bt1;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 8

    iget-object v0, p0, Lyads/el6;->c:Lyads/ys1;

    iget-object v1, p0, Lyads/el6;->a:Lyads/et1;

    iget-object v1, v1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lyads/ys1;->c(I)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lyads/el6;->a:Lyads/et1;

    iget-object v2, v2, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-lez v6, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2}, Lyads/el6;->a(I)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v0, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lyads/el6;->d:Lyads/ts1;

    iget v6, v6, Lyads/ts1;->g:F

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    if-nez v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2}, Lyads/el6;->a(I)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    sub-float/2addr v0, v6

    :cond_2
    iget-object v6, p0, Lyads/el6;->c:Lyads/ys1;

    iget-object v7, p0, Lyads/el6;->a:Lyads/et1;

    iget-object v7, v7, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v7}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v7

    invoke-virtual {v6, v7}, Lyads/ys1;->b(I)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lyads/el6;->d:Lyads/ts1;

    iget v7, v7, Lyads/ts1;->g:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_3

    add-float/2addr v6, v0

    :cond_3
    iget-object v0, p0, Lyads/el6;->a:Lyads/et1;

    iget-object v0, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    cmpl-float v7, v6, v5

    if-lez v7, :cond_4

    iget-object v7, p0, Lyads/el6;->e:Lyads/wr1;

    iget-object v7, v7, Lyads/wr1;->o:Lyads/vr1;

    invoke-virtual {v7}, Lv;->size()I

    move-result v7

    sub-int/2addr v7, v1

    if-ge v0, v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v0}, Lyads/el6;->a(I)Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lyads/el6;->d:Lyads/ts1;

    iget v7, v7, Lyads/ts1;->h:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_6

    iget-object v7, p0, Lyads/el6;->e:Lyads/wr1;

    iget-object v7, v7, Lyads/wr1;->o:Lyads/vr1;

    invoke-virtual {v7}, Lv;->size()I

    move-result v7

    sub-int/2addr v7, v1

    if-ne v0, v7, :cond_6

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v0}, Lyads/el6;->a(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    sub-float/2addr v6, v0

    :cond_6
    :goto_4
    cmpl-float v0, v6, v5

    if-lez v0, :cond_7

    if-ltz v2, :cond_7

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2}, Lyads/el6;->a(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v6, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_7
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-ge p0, v1, :cond_8

    return v1

    :cond_8
    return p0

    :cond_9
    if-ge v4, v1, :cond_a

    return v1

    :cond_a
    return v4

    :cond_b
    return v1
.end method

.method public final a(I)Ljava/lang/Float;
    .locals 1

    .line 218
    iget-object v0, p0, Lyads/el6;->c:Lyads/ys1;

    invoke-virtual {v0, p1}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget p0, p0, Lyads/el6;->b:F

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
