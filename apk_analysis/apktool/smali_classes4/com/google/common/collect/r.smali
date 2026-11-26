.class public final Lcom/google/common/collect/r;
.super Lcom/google/common/collect/s;
.source "SourceFile"

# interfaces
.implements Llr4;


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
        "Lcom/google/common/collect/s<",
        "TK;TV1;TV2;>;",
        "Llr4<",
        "TK;TV2;>;"
    }
.end annotation


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s;->f:Leg5;

    invoke-interface {v0, p1}, Leg5;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lig5;

    invoke-direct {v1, p0, p1}, Lig5;-><init>(Lcom/google/common/collect/r;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lyr4;->c(Ljava/util/List;Llm3;)Ljava/util/AbstractList;

    move-result-object p0

    return-object p0
.end method
