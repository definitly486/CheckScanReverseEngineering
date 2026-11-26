.class public final Lyads/w55;
.super Lyads/ci2;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vq0;

.field public final b:Lyads/oa1;

.field public final c:Lyads/hd1;


# direct methods
.method public constructor <init>(Lyads/vq0;Lyads/oa1;Lyads/hd1;)V
    .locals 0

    invoke-direct {p0}, Lyads/ci2;-><init>()V

    iput-object p1, p0, Lyads/w55;->a:Lyads/vq0;

    iput-object p2, p0, Lyads/w55;->b:Lyads/oa1;

    iput-object p3, p0, Lyads/w55;->c:Lyads/hd1;

    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 2

    instance-of v0, p0, Lyads/r55;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyads/r55;

    invoke-interface {v0}, Lyads/r55;->release()V

    :cond_0
    invoke-static {p0}, Lyads/s55;->b(Landroid/view/View;)Lyads/xo5;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lyads/xo5;->b:Landroidx/collection/SparseArrayCompat;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/r55;

    invoke-interface {v0}, Lyads/r55;->release()V

    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-static {p1}, Lyads/w55;->b(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lyads/bb1;)V
    .locals 4

    iget-object v0, p1, Lyads/bb1;->l:Lyads/xh1;

    iget-object v1, v0, Lyads/xh1;->c:Lyads/br0;

    check-cast v1, Lyads/vp0;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lyads/xh1;->d:Lyads/tt;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lyads/tt;->b:Lyads/fs2;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lyads/w55;->b(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lyads/w55;->c:Lyads/hd1;

    iget-object v3, p0, Lyads/w55;->a:Lyads/vq0;

    iget-object v1, v1, Lyads/vp0;->a:Lyads/ka1;

    invoke-virtual {v2, v3, v0, p1, v1}, Lyads/hd1;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/p41;)V

    iget-object p0, p0, Lyads/w55;->b:Lyads/oa1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lyads/cy1;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lyads/w55;->a(Lyads/wh1;)V

    const/4 p0, 0x0

    .line 55
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final a(Lyads/et1;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lyads/w55;->a(Lyads/wh1;)V

    .line 52
    iget-object p0, p1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final a(Lyads/wh1;)V
    .locals 3

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-interface {p1}, Lyads/wh1;->a()Lyads/br0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lyads/br0;->a()Lyads/p41;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-interface {p1}, Lyads/wh1;->c()Lyads/tt;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    iget-object v2, p1, Lyads/tt;->b:Lyads/fs2;

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 58
    iget-object p1, p0, Lyads/w55;->c:Lyads/hd1;

    iget-object p0, p0, Lyads/w55;->a:Lyads/vq0;

    invoke-virtual {p1, p0, v2, v0, v1}, Lyads/hd1;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/p41;)V

    .line 59
    :cond_2
    invoke-static {v0}, Lyads/w55;->b(Landroid/view/View;)V

    return-void
.end method
