.class public Lcom/google/common/collect/n$a;
.super Lcom/google/common/collect/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i$a<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/i$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n$a;->g(Ljava/lang/Object;)Lcom/google/common/collect/n$a;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/Object;)Lcom/google/common/collect/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/n$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/i$a;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public h()Lcom/google/common/collect/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/i$a;->b:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/i$a;->a:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-static {v0, v1}, Lcom/google/common/collect/n;->m(I[Ljava/lang/Object;)Lcom/google/common/collect/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/i$a;->b:I

    iput-boolean v2, p0, Lcom/google/common/collect/i$a;->c:Z

    return-object v0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, v1, p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/google/common/collect/n;->d:I

    new-instance v0, Lr18;

    invoke-direct {v0, p0}, Lr18;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    sget p0, Lcom/google/common/collect/n;->d:I

    sget-object p0, Lcom/google/common/collect/z;->k:Lcom/google/common/collect/z;

    return-object p0
.end method
