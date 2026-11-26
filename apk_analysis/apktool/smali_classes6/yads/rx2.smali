.class public final Lyads/rx2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/et1;

.field public final b:I

.field public final c:F

.field public final d:Lyads/sx2;

.field public final e:Lyads/ts1;

.field public final f:Z

.field public final g:Lyads/wr1;


# direct methods
.method public constructor <init>(Lyads/et1;IFLyads/sx2;Lyads/ts1;ZLyads/wr1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rx2;->a:Lyads/et1;

    iput p2, p0, Lyads/rx2;->b:I

    iput p3, p0, Lyads/rx2;->c:F

    iput-object p4, p0, Lyads/rx2;->d:Lyads/sx2;

    iput-object p5, p0, Lyads/rx2;->e:Lyads/ts1;

    iput-boolean p6, p0, Lyads/rx2;->f:Z

    iput-object p7, p0, Lyads/rx2;->g:Lyads/wr1;

    invoke-virtual {p0}, Lyads/rx2;->a()V

    return-void
.end method

.method public static final a(Lyads/rx2;I)Lj59;
    .locals 2

    .line 143
    iget-object v0, p0, Lyads/rx2;->a:Lyads/et1;

    .line 144
    iget-object v0, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 145
    iget-object p0, p0, Lyads/rx2;->g:Lyads/wr1;

    .line 146
    iget-object p0, p0, Lyads/wr1;->o:Lyads/vr1;

    .line 147
    invoke-virtual {p0}, Lv;->size()I

    move-result p0

    sub-int/2addr p0, v1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 149
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lyads/rx2;->d:Lyads/sx2;

    invoke-interface {v0}, Lyads/sx2;->c()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyads/rx2;->a:Lyads/et1;

    iget-object v0, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, p0, Lyads/rx2;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lyads/rx2;->d:Lyads/sx2;

    invoke-interface {v2}, Lyads/sx2;->c()F

    move-result v2

    iget v3, p0, Lyads/rx2;->c:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    iget-object v2, p0, Lyads/rx2;->a:Lyads/et1;

    invoke-virtual {v2}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    :cond_1
    iget-object v2, p0, Lyads/rx2;->d:Lyads/sx2;

    invoke-interface {v2}, Lyads/sx2;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p0, v1

    float-to-int p0, p0

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lyads/rx2;->d:Lyads/sx2;

    invoke-interface {v1}, Lyads/sx2;->a()F

    move-result v1

    iget v2, p0, Lyads/rx2;->c:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void

    :cond_3
    iget-boolean v2, p0, Lyads/rx2;->f:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lyads/rx2;->e:Lyads/ts1;

    iget v3, v2, Lyads/ts1;->g:F

    cmpg-float v3, v3, v1

    if-ltz v3, :cond_4

    iget v2, v2, Lyads/ts1;->h:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_5

    :cond_4
    new-instance v1, Lzh;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lzh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzh;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lyads/rx2;->a:Lyads/et1;

    new-instance v0, Lyads/qx2;

    invoke-direct {v0, v1}, Lyads/qx2;-><init>(Lnl3;)V

    invoke-virtual {p0, v0}, Lyads/et1;->setChangePageCallbackForOffScreenPages$mobileads_externalRelease(Lyads/bt1;)V

    return-void

    :cond_5
    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method
