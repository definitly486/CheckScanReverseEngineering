.class public final Lyads/fs4;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/gs4;


# direct methods
.method public constructor <init>(Lyads/gs4;)V
    .locals 0

    iput-object p1, p0, Lyads/fs4;->a:Lyads/gs4;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrolled(IFI)V
    .locals 3

    iget-object p0, p0, Lyads/fs4;->a:Lyads/gs4;

    iget-object p3, p0, Lyads/gs4;->a:Lyads/hg3;

    if-eqz p3, :cond_5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    :goto_0
    move p2, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    sget v0, Lyads/gs4;->e:I

    iget-object v0, p0, Lyads/gs4;->b:Lyads/et1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    instance-of v2, v0, Lyads/wr1;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Lyads/wr1;

    :cond_3
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1, p1}, Lyads/wr1;->e(I)I

    move-result p1

    :goto_3
    iput p1, p3, Lyads/hg3;->m:I

    iput p2, p3, Lyads/hg3;->n:F

    iget-object v0, p3, Lyads/hg3;->c:Lyads/pf3;

    invoke-interface {v0, p1, p2}, Lyads/pf3;->a(IF)V

    invoke-virtual {p3, p1, p2}, Lyads/hg3;->a(IF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    iget-object p0, p0, Lyads/fs4;->a:Lyads/gs4;

    iget-object v0, p0, Lyads/gs4;->a:Lyads/hg3;

    if-eqz v0, :cond_3

    sget v1, Lyads/gs4;->e:I

    iget-object v1, p0, Lyads/gs4;->b:Lyads/et1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lyads/wr1;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Lyads/wr1;

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p1}, Lyads/wr1;->e(I)I

    move-result p1

    :goto_1
    iput p1, v0, Lyads/hg3;->m:I

    const/4 v1, 0x0

    iput v1, v0, Lyads/hg3;->n:F

    iget-object v2, v0, Lyads/hg3;->c:Lyads/pf3;

    invoke-interface {v2, p1}, Lyads/pf3;->onPageSelected(I)V

    invoke-virtual {v0, p1, v1}, Lyads/hg3;->a(IF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method
