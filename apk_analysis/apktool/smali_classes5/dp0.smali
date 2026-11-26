.class public final synthetic Ldp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Llp0;

.field public final synthetic c:I

.field public final synthetic d:Lrx5;


# direct methods
.method public synthetic constructor <init>(Llp0;ILrx5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldp0;->b:Llp0;

    iput p2, p0, Ldp0;->c:I

    iput-object p3, p0, Ldp0;->d:Lrx5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Ldp0;->b:Llp0;

    iget-object v1, v0, Llp0;->g:Lhi0;

    invoke-virtual {v1}, Lhi0;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx68;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lx68;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Ldp0;->d:Lrx5;

    invoke-virtual {v1}, Lrx5;->c()Z

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Len1;

    invoke-interface {v6}, Lpz3;->id()Ljava/lang/Object;

    move-result-object v6

    iget v8, p0, Ldp0;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_2
    if-ne v5, v7, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Len1;

    instance-of v4, p0, Len1$a;

    if-eqz v4, :cond_4

    new-instance v4, Len1$a;

    iget-object p0, p0, Len1;->a:Ldn1;

    invoke-static {p0, v3}, Ldn1;->a(Ldn1;Z)Ldn1;

    move-result-object p0

    invoke-direct {v4, p0}, Len1$a;-><init>(Ldn1;)V

    goto :goto_3

    :cond_4
    new-instance v4, Len1$b;

    iget-object p0, p0, Len1;->a:Ldn1;

    invoke-static {p0, v3}, Ldn1;->a(Ldn1;Z)Ldn1;

    move-result-object p0

    invoke-direct {v4, p0}, Len1$b;-><init>(Ldn1;)V

    :goto_3
    invoke-interface {v2, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object p0, v0, Llp0;->g:Lhi0;

    new-instance v0, Lx68$a;

    invoke-direct {v0, v2}, Lx68$a;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lrx5;->c()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
