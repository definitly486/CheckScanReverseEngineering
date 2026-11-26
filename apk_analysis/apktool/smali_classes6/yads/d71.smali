.class public final Lyads/d71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final synthetic b:Lyads/e71;


# direct methods
.method public constructor <init>(Lyads/e71;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lyads/d71;->b:Lyads/e71;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/d71;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onChanged(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onInserted(II)V
    .locals 6

    add-int v0, p1, p2

    iget-object v1, p0, Lyads/d71;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lyads/d71;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v1, p0, Lyads/d71;->b:Lyads/e71;

    iget-object p0, p0, Lyads/d71;->a:Ljava/util/ArrayList;

    add-int/2addr p2, v0

    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    iget-object p2, v1, Lyads/e71;->a:Ljava/util/List;

    invoke-interface {p2, p1, p0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object p2, v1, Lyads/e71;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/cn1;

    iget-object v5, v3, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v5}, Lyads/br0;->a()Lyads/p41;

    move-result-object v5

    invoke-interface {v5}, Lyads/p41;->getVisibility()Lyads/as2;

    move-result-object v5

    iget-object v3, v3, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {v5, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ri2;

    sget-object v5, Lyads/ri2;->e:Lyads/ri2;

    if-ne v3, v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iput-boolean v4, v1, Lyads/e71;->d:Z

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v0, v4, 0x1

    if-ltz v4, :cond_4

    check-cast p2, Lyads/cn1;

    iget-object v2, p2, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v2}, Lyads/br0;->a()Lyads/p41;

    move-result-object v2

    invoke-interface {v2}, Lyads/p41;->getVisibility()Lyads/as2;

    move-result-object v2

    iget-object p2, p2, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {v2, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/ri2;

    sget-object v2, Lyads/ri2;->e:Lyads/ri2;

    if-ne p2, v2, :cond_3

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lyads/e71;->c(I)I

    move-result p2

    invoke-virtual {v1, p2}, Lyads/e71;->a(I)V

    :cond_3
    move v4, v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_5
    return-void
.end method

.method public final onMoved(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lyads/d71;->onRemoved(II)V

    invoke-virtual {p0, p2, v0}, Lyads/d71;->onInserted(II)V

    return-void
.end method

.method public final onRemoved(II)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lyads/d71;->b:Lyads/e71;

    iget-object v3, v2, Lyads/e71;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, v2, Lyads/e71;->c:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v0, v2, Lyads/e71;->d:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lyads/e71;->c(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lyads/e71;->b(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
