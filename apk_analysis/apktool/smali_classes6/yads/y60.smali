.class public final Lyads/y60;
.super Lyads/a70;
.source "SourceFile"


# instance fields
.field public final c:Lyads/wc4;


# direct methods
.method public constructor <init>(Lyads/wc4;Lyads/oc4;Lyads/ic4;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lyads/a70;-><init>(Lyads/oc4;Lyads/ic4;)V

    iput-object p1, p0, Lyads/y60;->c:Lyads/wc4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lyads/y60;->c:Lyads/wc4;

    iget-object v0, v0, Lyads/wc4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    invoke-super {p0, p1}, Lyads/a70;->onClick(Landroid/view/View;)V

    return-void
.end method
