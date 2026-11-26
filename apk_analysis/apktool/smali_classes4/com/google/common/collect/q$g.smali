.class public abstract Lcom/google/common/collect/q$g;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient b:Lcom/google/common/collect/c$b$a;

.field public transient c:Lcom/google/common/collect/q$f;


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q$g;->b:Lcom/google/common/collect/c$b$a;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/c$b;

    new-instance v1, Lcom/google/common/collect/c$b$a;

    invoke-direct {v1, v0}, Lcom/google/common/collect/c$b$a;-><init>(Lcom/google/common/collect/c$b;)V

    iput-object v1, p0, Lcom/google/common/collect/q$g;->b:Lcom/google/common/collect/c$b$a;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q$g;->c:Lcom/google/common/collect/q$f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/q$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q$f;-><init>(Ljava/util/AbstractMap;)V

    iput-object v0, p0, Lcom/google/common/collect/q$g;->c:Lcom/google/common/collect/q$f;

    :cond_0
    return-object v0
.end method
