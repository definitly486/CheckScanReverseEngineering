.class public final Lyads/dl6;
.super Lyads/bt1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lyads/el6;


# direct methods
.method public constructor <init>(Lyads/el6;)V
    .locals 0

    iput-object p1, p0, Lyads/dl6;->b:Lyads/el6;

    invoke-direct {p0}, Lyads/bt1;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lyads/dl6;->b:Lyads/el6;

    invoke-virtual {p0}, Lyads/el6;->a()I

    move-result p1

    iget p2, p0, Lyads/el6;->f:I

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lyads/el6;->f:I

    iget-object p1, p0, Lyads/el6;->a:Lyads/et1;

    invoke-virtual {p1}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p3, p0, Lyads/el6;->f:I

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    :cond_1
    iget-object p1, p1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget p0, p0, Lyads/el6;->f:I

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    iget-object p0, p0, Lyads/dl6;->b:Lyads/el6;

    invoke-virtual {p0}, Lyads/el6;->a()I

    move-result p1

    iget v0, p0, Lyads/el6;->f:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lyads/el6;->f:I

    iget-object p1, p0, Lyads/el6;->a:Lyads/et1;

    invoke-virtual {p1}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lyads/el6;->f:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    :cond_1
    iget-object p1, p1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget p0, p0, Lyads/el6;->f:I

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method
