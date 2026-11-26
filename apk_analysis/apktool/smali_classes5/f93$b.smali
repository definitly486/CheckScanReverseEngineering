.class public final Lf93$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lf93;Ljava/util/List;Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg93;

    iget-object v3, v3, Lg93;->a:Lf93;

    invoke-static {v3, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg93;

    iget-object v6, v6, Lg93;->a:Lf93;

    invoke-static {v6, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-lez v4, :cond_8

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object p0

    invoke-virtual {p0, v4}, Ly74;->c(I)Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz v0, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v4}, Lqn1;->o0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg93;

    iget-boolean v0, p1, Lg93;->e:Z

    iget-object v2, p1, Lg93;->a:Lf93;

    if-eqz v0, :cond_6

    invoke-interface {v2, p2, v1}, Lf93;->c(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Z)V

    goto :goto_4

    :cond_6
    iget-boolean p1, p1, Lg93;->f:Z

    if-eqz p1, :cond_7

    invoke-interface {v2, p2, v1}, Lf93;->d(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Z)V

    goto :goto_4

    :cond_7
    invoke-interface {v2, p2, v3}, Lf93;->c(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Z)V

    invoke-interface {v2, p2, v3}, Lf93;->d(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Z)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method public static b(Lf93;Ljava/util/List;Ljava/lang/String;Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)Ljava/util/ArrayList;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg93;

    iget-object v3, v3, Lg93;->a:Lf93;

    invoke-static {v3, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lg93;

    invoke-static {p2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v6

    iget-object p0, v3, Lg93;->d:Lg17;

    invoke-virtual {p0, p2}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x1

    xor-int/lit8 v7, p0, 0x1

    const/16 v8, 0x4d

    const/4 v5, 0x0

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lg93;->a(Lg93;Ljava/lang/String;Ljava/lang/String;ZZI)Lg93;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg93;

    iget-boolean p2, v3, Lg93;->f:Z

    if-nez p2, :cond_3

    iget-boolean v2, p0, Lg93;->f:Z

    if-eqz v2, :cond_3

    iget-boolean p2, p0, Lg93;->e:Z

    iget-object p0, p0, Lg93;->a:Lf93;

    if-eqz p2, :cond_2

    invoke-interface {p0, p3, p1}, Lf93;->c(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Z)V

    return-object v0

    :cond_2
    invoke-interface {p0, p3, p1}, Lf93;->d(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Z)V

    return-object v0

    :cond_3
    if-eqz p2, :cond_4

    iget-boolean p1, p0, Lg93;->f:Z

    if-nez p1, :cond_4

    iget-object p0, p0, Lg93;->a:Lf93;

    invoke-interface {p0, p3, v1}, Lf93;->d(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Z)V

    :cond_4
    return-object v0
.end method
