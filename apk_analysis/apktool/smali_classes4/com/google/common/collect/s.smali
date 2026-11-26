.class public Lcom/google/common/collect/s;
.super Lcom/google/common/collect/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/g<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field public final f:Leg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg5<",
            "TK;TV1;>;"
        }
    .end annotation
.end field

.field public final g:Lia5;


# direct methods
.method public constructor <init>(Leg5;Lia5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/collect/s;->f:Leg5;

    iput-object p2, p0, Lcom/google/common/collect/s;->g:Lia5;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/s;->f:Leg5;

    invoke-interface {p0}, Leg5;->clear()V

    return-void
.end method

.method public final e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV2;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s;->f:Leg5;

    invoke-interface {v0}, Leg5;->b()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lq3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lq3;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/google/common/collect/q$e;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/q$e;-><init>(Ljava/util/Map;Lcom/google/common/collect/q$b;)V

    return-object p0
.end method

.method public final f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/g$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g$a;-><init>(Lcom/google/common/collect/g;)V

    return-object v0
.end method

.method public final g()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/s;->f:Leg5;

    invoke-interface {p0}, Leg5;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final i()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s;->f:Leg5;

    invoke-interface {v0}, Leg5;->a()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljg5;

    invoke-direct {v1, p0}, Ljg5;-><init>(Lcom/google/common/collect/s;)V

    new-instance p0, Ljn1;

    invoke-direct {p0, v0, v1}, Ljn1;-><init>(Ljava/util/Collection;Ljg5;)V

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/s;->f:Leg5;

    invoke-interface {p0}, Leg5;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final j()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s;->f:Leg5;

    invoke-interface {v0}, Leg5;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Li05;

    iget-object p0, p0, Lcom/google/common/collect/s;->g:Lia5;

    invoke-direct {v1, p0}, Li05;-><init>(Lcom/google/common/collect/q$b;)V

    new-instance p0, Lwa4;

    invoke-direct {p0, v0, v1}, Lwa4;-><init>(Ljava/util/Iterator;Llm3;)V

    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV2;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/google/common/collect/r;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/s;->f:Leg5;

    invoke-interface {p0}, Leg5;->size()I

    move-result p0

    return p0
.end method
