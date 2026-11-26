.class public final synthetic Lon0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lbm0;

.field public final synthetic c:I

.field public final synthetic d:Ln32;


# direct methods
.method public synthetic constructor <init>(Lbm0;ILn32;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lon0;->b:Lbm0;

    iput p2, p0, Lon0;->c:I

    iput-object p3, p0, Lon0;->d:Ln32;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lon0;->b:Lbm0;

    iget-object v0, v0, Lbm0;->n:Lhi0;

    invoke-virtual {v0}, Lhi0;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx68;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lx68;->a:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lkx2;->b:Lkx2;

    :cond_1
    iget-object v2, p0, Lon0;->d:Ln32;

    invoke-virtual {v2}, Ln32;->h()Z

    move-result v2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcs0;

    instance-of v5, v4, Len1$a;

    iget v6, p0, Lon0;->c:I

    if-eqz v5, :cond_2

    check-cast v4, Len1$a;

    iget-object v5, v4, Len1;->a:Ldn1;

    iget v7, v5, Ldn1;->a:I

    if-ne v7, v6, :cond_4

    new-instance v4, Len1$a;

    invoke-static {v5, v2}, Ldn1;->a(Ldn1;Z)Ldn1;

    move-result-object v5

    invoke-direct {v4, v5}, Len1$a;-><init>(Ldn1;)V

    goto :goto_1

    :cond_2
    instance-of v5, v4, Len1$b;

    if-eqz v5, :cond_3

    check-cast v4, Len1$b;

    iget-object v5, v4, Len1;->a:Ldn1;

    iget v7, v5, Ldn1;->a:I

    if-ne v7, v6, :cond_4

    new-instance v4, Len1$b;

    invoke-static {v5, v2}, Ldn1;->a(Ldn1;Z)Ldn1;

    move-result-object v5

    invoke-direct {v4, v5}, Len1$b;-><init>(Ldn1;)V

    goto :goto_1

    :cond_3
    instance-of v5, v4, Ler6;

    if-eqz v5, :cond_4

    check-cast v4, Ler6;

    iget v5, v4, Ler6;->b:I

    if-ne v5, v6, :cond_4

    invoke-static {v4, v2}, Ler6;->d(Ler6;Z)Ler6;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p0, Lx68$a;

    invoke-direct {p0, v3}, Lx68$a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p0}, Lhi0;->onNext(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
