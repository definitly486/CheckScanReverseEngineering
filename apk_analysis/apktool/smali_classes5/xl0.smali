.class public final synthetic Lxl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lbm0;

.field public final synthetic c:I

.field public final synthetic d:Lrx5;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lbm0;ILrx5;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxl0;->b:Lbm0;

    iput p2, p0, Lxl0;->c:I

    iput-object p3, p0, Lxl0;->d:Lrx5;

    iput-boolean p4, p0, Lxl0;->e:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lxl0;->c:I

    int-to-long v1, v0

    iget-object v3, p0, Lxl0;->d:Lrx5;

    invoke-virtual {v3}, Lrx5;->c()Z

    move-result v4

    iget-object v5, p0, Lxl0;->b:Lbm0;

    iget-object v6, v5, Lbm0;->d:Ln53;

    long-to-int v1, v1

    invoke-interface {v6, v1, v4}, Ln53;->b(IZ)V

    iget-boolean p0, p0, Lxl0;->e:Z

    if-eqz p0, :cond_0

    iget-object v1, v5, Lbm0;->i:Lhi0;

    goto :goto_0

    :cond_0
    iget-object v1, v5, Lbm0;->h:Lhi0;

    :goto_0
    invoke-virtual {v1}, Lhi0;->j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    sget-object v2, Lkx2;->b:Lkx2;

    :cond_1
    if-eqz p0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcs0;

    invoke-interface {v4}, Lpz3;->id()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_2
    check-cast v2, Ljava/util/Collection;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eq v3, v5, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1, p0}, Lhi0;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Lrx5;->c()Z

    move-result p0

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcs0;

    instance-of v5, v4, Len1$a;

    if-eqz v5, :cond_6

    check-cast v4, Len1$a;

    iget-object v5, v4, Len1;->a:Ldn1;

    iget v6, v5, Ldn1;->a:I

    if-ne v6, v0, :cond_8

    new-instance v4, Len1$a;

    invoke-static {v5, p0}, Ldn1;->a(Ldn1;Z)Ldn1;

    move-result-object v5

    invoke-direct {v4, v5}, Len1$a;-><init>(Ldn1;)V

    goto :goto_4

    :cond_6
    instance-of v5, v4, Len1$b;

    if-eqz v5, :cond_7

    check-cast v4, Len1$b;

    iget-object v5, v4, Len1;->a:Ldn1;

    iget v6, v5, Ldn1;->a:I

    if-ne v6, v0, :cond_8

    new-instance v4, Len1$b;

    invoke-static {v5, p0}, Ldn1;->a(Ldn1;Z)Ldn1;

    move-result-object v5

    invoke-direct {v4, v5}, Len1$b;-><init>(Ldn1;)V

    goto :goto_4

    :cond_7
    instance-of v5, v4, Ler6;

    if-eqz v5, :cond_8

    check-cast v4, Ler6;

    iget v5, v4, Ler6;->b:I

    if-ne v5, v0, :cond_8

    invoke-static {v4, p0}, Ler6;->d(Ler6;Z)Ler6;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Lhi0;->onNext(Ljava/lang/Object;)V

    :goto_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
