.class public final Lyads/ii2;
.super Lyads/ji2;
.source "SourceFile"


# instance fields
.field public final a:Lyads/m62;

.field public final b:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lyads/m62;)V
    .locals 0

    invoke-direct {p0}, Lyads/ji2;-><init>()V

    iput-object p1, p0, Lyads/ii2;->a:Lyads/m62;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lyads/ii2;->b:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 20
    iget-object p0, p0, Lyads/ii2;->a:Lyads/m62;

    .line 21
    iget-object p0, p0, Lyads/yu5;->d:Lyads/ld5;

    .line 22
    invoke-virtual {p0}, Lyads/pb5;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method public final a(I)V
    .locals 1

    invoke-virtual {p0}, Lyads/ii2;->b()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/ii2;->a:Lyads/m62;

    invoke-virtual {p0}, Lyads/yu5;->j()Lyads/ld5;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lyads/pb5;->setCurrentItem(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 23
    iget-object v0, p0, Lyads/ii2;->a:Lyads/m62;

    .line 24
    iget-object v0, v0, Lyads/yu5;->d:Lyads/ld5;

    .line 25
    invoke-virtual {p0}, Lyads/ii2;->b()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0, p1}, Lyads/pb5;->setCurrentItem(IZ)V

    return-void
.end method

.method public final b()I
    .locals 0

    .line 20
    iget-object p0, p0, Lyads/ii2;->a:Lyads/m62;

    .line 21
    iget-object p0, p0, Lyads/yu5;->d:Lyads/ld5;

    .line 22
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(I)V
    .locals 1

    invoke-virtual {p0}, Lyads/ii2;->b()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/ii2;->a:Lyads/m62;

    invoke-virtual {p0}, Lyads/yu5;->j()Lyads/ld5;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyads/pb5;->setCurrentItem(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lyads/ii2;->b:Landroid/util/DisplayMetrics;

    return-object p0
.end method
