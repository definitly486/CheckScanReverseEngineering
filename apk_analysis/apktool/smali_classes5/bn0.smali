.class public final synthetic Lbn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lbm0;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lbm0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbn0;->b:Lbm0;

    iput-object p2, p0, Lbn0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbn0;->b:Lbm0;

    iget-object v1, v0, Lbm0;->m:Lhi0;

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
    iget-object p0, p0, Lbn0;->c:Ljava/util/List;

    invoke-static {p0}, Lbm0;->c(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Lbm0;->m:Lhi0;

    new-instance v1, Lx68$a;

    invoke-direct {v1, v2}, Lx68$a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhi0;->onNext(Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v0, Lk57;

    invoke-direct {v0, p0}, Lk57;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
