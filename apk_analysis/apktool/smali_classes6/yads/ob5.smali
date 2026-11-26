.class public final Lyads/ob5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public final synthetic b:Lyads/pb5;


# direct methods
.method public constructor <init>(Lyads/pb5;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lyads/ob5;->b:Lyads/pb5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ob5;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lyads/ob5;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 4

    iget-object v0, p0, Lyads/ob5;->b:Lyads/pb5;

    invoke-static {v0}, Lyads/pb5;->a(Lyads/pb5;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lyads/ob5;->b:Lyads/pb5;

    invoke-static {v1}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p2

    iget-object v1, p0, Lyads/ob5;->b:Lyads/pb5;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    float-to-int v1, v2

    add-int/2addr v1, p3

    :goto_0
    if-ge p1, p2, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    iget-object p3, p0, Lyads/ob5;->b:Lyads/pb5;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v2

    mul-float/2addr v2, p3

    float-to-int p3, v2

    sub-int/2addr v1, p3

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x1

    neg-int p3, v1

    int-to-float p2, p3

    iget-object v1, p0, Lyads/ob5;->b:Lyads/pb5;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v0

    mul-float/2addr v0, v1

    div-float/2addr p2, v0

    :cond_1
    iget-object p0, p0, Lyads/ob5;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lyads/ob5;->b:Lyads/pb5;

    invoke-static {v0}, Lyads/pb5;->a(Lyads/pb5;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lyads/ob5;->b:Lyads/pb5;

    invoke-static {v1}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :cond_0
    iget-object p0, p0, Lyads/ob5;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method
