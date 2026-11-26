.class public abstract Lyads/e71;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lyads/hs2;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/List;

.field public d:Z

.field public final e:Ljava/util/ArrayList;

.field public final f:Lyads/tt;

.field public final g:Lyads/n32;

.field public h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lyads/tt;Lyads/n32;Ljava/util/List;)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {p3}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lyads/e71;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/e71;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/cn1;

    iget-object v3, v2, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v3}, Lyads/br0;->a()Lyads/p41;

    move-result-object v3

    invoke-interface {v3}, Lyads/p41;->getVisibility()Lyads/as2;

    move-result-object v3

    iget-object v2, v2, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {v3, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ri2;

    sget-object v3, Lyads/ri2;->e:Lyads/ri2;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lyads/e71;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/e71;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lyads/e71;->e()V

    iput-object p1, p0, Lyads/e71;->f:Lyads/tt;

    iput-object p2, p0, Lyads/e71;->g:Lyads/n32;

    invoke-static {p3}, Lyads/du1;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lyads/e71;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public static final a(Lyads/e71;ILyads/ri2;)Lj59;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/ri2;->e:Lyads/ri2;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget-object v0, p0, Lyads/e71;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lyads/e71;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lyads/e71;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lyads/e71;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lyads/e71;->b(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lyads/e71;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lyads/e71;->a(I)V

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public final c(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lyads/e71;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 7

    iget-boolean v0, p0, Lyads/e71;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lyads/e71;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lyads/e71;->a:Ljava/util/List;

    iget-object v1, p0, Lyads/e71;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_2

    check-cast v3, Lyads/cn1;

    iget-object v6, p0, Lyads/e71;->c:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v5, v3

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lu96;->o()V

    throw v5

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/e71;->d:Z

    :cond_4
    iget-object p0, p0, Lyads/e71;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final e()V
    .locals 6

    invoke-interface {p0}, Lyads/hs2;->b()V

    iget-object v0, p0, Lyads/e71;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_0

    check-cast v2, Lyads/cn1;

    iget-object v4, v2, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v4}, Lyads/br0;->a()Lyads/p41;

    move-result-object v4

    invoke-interface {v4}, Lyads/p41;->getVisibility()Lyads/as2;

    move-result-object v4

    iget-object v2, v2, Lyads/cn1;->b:Lyads/fs2;

    new-instance v5, Leu9;

    invoke-direct {v5, p0, v1}, Leu9;-><init>(Lyads/e71;I)V

    invoke-virtual {v4, v2, v5}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/e71;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    invoke-virtual {p0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1, p0}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cn1;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    invoke-interface {v0}, Lyads/p41;->h()Lyads/as2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {v0, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 80
    check-cast p1, Lyads/u71;

    invoke-virtual {p0, p1, p2}, Lyads/e71;->onBindViewHolder(Lyads/u71;I)V

    return-void
.end method

.method public onBindViewHolder(Lyads/u71;I)V
    .locals 6

    invoke-virtual {p0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/cn1;

    iget-object v1, p0, Lyads/e71;->g:Lyads/n32;

    iget-object v2, p0, Lyads/e71;->h:Ljava/util/ArrayList;

    iget-object v3, p0, Lyads/e71;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lyads/n32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object v1

    iget-object v2, p0, Lyads/e71;->f:Lyads/tt;

    iget-object v3, v2, Lyads/tt;->a:Lyads/vq0;

    iget-object v3, v3, Lyads/vq0;->z:Lyads/ub5;

    iget-object v4, v0, Lyads/cn1;->a:Lyads/br0;

    iget-object v5, v0, Lyads/cn1;->b:Lyads/fs2;

    iget-object v2, v2, Lyads/tt;->b:Lyads/fs2;

    invoke-interface {v3, v1, v4, v5, v2}, Lyads/ub5;->a(Lyads/n32;Lyads/br0;Lyads/fs2;Lyads/fs2;)Lyads/ms2;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lyads/ms2;->a:Lyads/gs2;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lyads/cn1;->b:Lyads/fs2;

    :goto_0
    iget-object p0, p0, Lyads/e71;->f:Lyads/tt;

    iget-object v3, p0, Lyads/tt;->b:Lyads/fs2;

    invoke-static {v3, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lyads/tt;

    iget-object p0, p0, Lyads/tt;->a:Lyads/vq0;

    invoke-direct {v3, p0, v2}, Lyads/tt;-><init>(Lyads/vq0;Lyads/fs2;)V

    move-object p0, v3

    :goto_1
    iget-object v0, v0, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {p1, p0, v0, p2, v1}, Lyads/u71;->a(Lyads/tt;Lyads/br0;ILyads/n32;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    check-cast p1, Lyads/u71;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p1, Lyads/u71;->a:Lyads/pi2;

    invoke-virtual {p0}, Lyads/pi2;->j()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lyads/pq;->a(Landroid/view/View;)Lyads/tt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lyads/u71;->c:Lyads/w41;

    invoke-static {p1, v0, p0}, Lyads/tq;->a(Lyads/w41;Lyads/tt;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
