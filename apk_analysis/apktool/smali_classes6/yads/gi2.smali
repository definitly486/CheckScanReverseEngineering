.class public final Lyads/gi2;
.super Lyads/ji2;
.source "SourceFile"


# instance fields
.field public final a:Lyads/et1;

.field public final b:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lyads/et1;)V
    .locals 0

    invoke-direct {p0}, Lyads/ji2;-><init>()V

    iput-object p1, p0, Lyads/gi2;->a:Lyads/et1;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lyads/gi2;->b:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 20
    iget-object p0, p0, Lyads/gi2;->a:Lyads/et1;

    .line 21
    iget-object p0, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method public final a(I)V
    .locals 1

    invoke-virtual {p0}, Lyads/gi2;->b()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/gi2;->a:Lyads/et1;

    invoke-virtual {p0}, Lyads/ng6;->j()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 23
    iget-object v0, p0, Lyads/gi2;->a:Lyads/et1;

    .line 24
    iget-object v0, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 25
    invoke-virtual {p0}, Lyads/gi2;->b()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public final b()I
    .locals 0

    .line 20
    iget-object p0, p0, Lyads/gi2;->a:Lyads/et1;

    .line 21
    iget-object p0, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(I)V
    .locals 1

    invoke-virtual {p0}, Lyads/gi2;->b()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/gi2;->a:Lyads/et1;

    invoke-virtual {p0}, Lyads/ng6;->j()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lyads/gi2;->b:Landroid/util/DisplayMetrics;

    return-object p0
.end method
