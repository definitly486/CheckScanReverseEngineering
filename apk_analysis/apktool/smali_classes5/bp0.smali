.class public final synthetic Lbp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Llp0;

.field public final synthetic c:I

.field public final synthetic d:Ln32;


# direct methods
.method public synthetic constructor <init>(Llp0;ILn32;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp0;->b:Llp0;

    iput p2, p0, Lbp0;->c:I

    iput-object p3, p0, Lbp0;->d:Ln32;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lbp0;->b:Llp0;

    iget-object v1, v0, Llp0;->f:Lhi0;

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
    iget-object v1, p0, Lbp0;->d:Ln32;

    invoke-virtual {v1}, Ln32;->h()Z

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ler6;

    iget v5, v5, Ler6;->b:I

    iget v7, p0, Lbp0;->c:I

    if-ne v5, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_2
    if-ne v4, v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ler6;

    invoke-static {p0, v1}, Ler6;->d(Ler6;Z)Ler6;

    move-result-object p0

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2, v4, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_3
    iget-object p0, v0, Llp0;->f:Lhi0;

    new-instance v0, Lx68$a;

    invoke-direct {v0, v2}, Lx68$a;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
