.class public final Lyads/ah1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final a:Lyads/tt;

.field public final b:Lyads/cy1;

.field public final c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public final d:Lyads/vq0;

.field public final e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Lyads/tt;Lyads/cy1;Lyads/tg1;Lyads/og1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lyads/ah1;->a:Lyads/tt;

    iput-object p2, p0, Lyads/ah1;->b:Lyads/cy1;

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p3, p0, Lyads/ah1;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p1, p1, Lyads/tt;->a:Lyads/vq0;

    iput-object p1, p0, Lyads/ah1;->d:Lyads/vq0;

    iget-object p1, p1, Lyads/vq0;->G:Lyads/ph2;

    invoke-interface {p1}, Lyads/ph2;->b()I

    move-result p1

    iput p1, p0, Lyads/ah1;->e:I

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/ah1;->g:Z

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lyads/ah1;->d:Lyads/vq0;

    iget-object p1, p1, Lyads/vq0;->n:Lyads/nq0;

    iget-object p1, p1, Lyads/nq0;->c:Lyads/c81;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lyads/ah1;->a:Lyads/tt;

    iget-object p1, p1, Lyads/tt;->b:Lyads/fs2;

    iget-object p1, p0, Lyads/ah1;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-interface {p1}, Lyads/tg1;->i()I

    iget-object p0, p0, Lyads/ah1;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-interface {p0}, Lyads/tg1;->g()I

    :cond_1
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget p1, p0, Lyads/ah1;->e:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyads/ah1;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-interface {p1}, Lyads/tg1;->e()I

    move-result p1

    div-int/lit8 p1, p1, 0x14

    :goto_0
    iget v0, p0, Lyads/ah1;->f:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p3, p2

    add-int/2addr p3, v0

    iput p3, p0, Lyads/ah1;->f:I

    if-le p3, p1, :cond_a

    const/4 p1, 0x0

    iput p1, p0, Lyads/ah1;->f:I

    iget-boolean p1, p0, Lyads/ah1;->g:Z

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iput-boolean p2, p0, Lyads/ah1;->g:Z

    iget-object p1, p0, Lyads/ah1;->d:Lyads/vq0;

    iget-object p1, p1, Lyads/vq0;->n:Lyads/nq0;

    iget-object p1, p1, Lyads/nq0;->c:Lyads/c81;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object p1, p0, Lyads/ah1;->d:Lyads/vq0;

    iget-object p1, p1, Lyads/vq0;->n:Lyads/nq0;

    iget-object p1, p1, Lyads/nq0;->I:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lyads/bj2;

    iget-object p1, p0, Lyads/ah1;->b:Lyads/cy1;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object p1

    invoke-static {p1}, Ljp7;->q(Lzo7;)Ljava/util/List;

    move-result-object p1

    iget-object p3, v0, Lyads/bj2;->g:Ljava/util/WeakHashMap;

    invoke-virtual {p3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    iget-boolean p1, v0, Lyads/bj2;->l:Z

    if-nez p1, :cond_4

    iput-boolean p2, v0, Lyads/bj2;->l:Z

    iget-object p1, v0, Lyads/bj2;->c:Landroid/os/Handler;

    iget-object p2, v0, Lyads/bj2;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object p1, p0, Lyads/ah1;->b:Lyads/cy1;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object p1

    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object p3, p0, Lyads/ah1;->b:Lyads/cy1;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_5

    iget-object v1, p0, Lyads/ah1;->b:Lyads/cy1;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/pg1;

    invoke-virtual {v1}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/cn1;

    iget-object p3, p3, Lyads/cn1;->a:Lyads/br0;

    iget-object v1, p0, Lyads/ah1;->a:Lyads/tt;

    invoke-virtual {v0, v1, p2, p3}, Lyads/bj2;->b(Lyads/tt;Landroid/view/View;Lyads/br0;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lyads/bj2;->a()Ljava/util/LinkedHashMap;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    iget-object v1, p0, Lyads/ah1;->b:Lyads/cy1;

    invoke-static {v1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljp7;->i(Lzo7;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/view/View;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lyads/br0;

    iget-object p2, p0, Lyads/ah1;->a:Lyads/tt;

    invoke-virtual {v4}, Lyads/br0;->a()Lyads/p41;

    move-result-object p3

    invoke-interface {p3}, Lyads/p41;->b()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_9

    goto :goto_4

    :cond_9
    iget-object v2, p2, Lyads/tt;->b:Lyads/fs2;

    iget-object v1, p2, Lyads/tt;->a:Lyads/vq0;

    sget-object v5, Lkx2;->b:Lkx2;

    invoke-static {p3, v2}, Lyads/bj2;->a(Ljava/util/List;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    :cond_a
    return-void
.end method
