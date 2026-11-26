.class public final Lyr4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyr4$c;,
        Lyr4$d;,
        Lyr4$b;,
        Lyr4$a;
    }
.end annotation


# direct methods
.method public static varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length v0, p0

    const-string v1, "arraySize"

    invoke-static {v0, v1}, Lcn1;->b(ILjava/lang/String;)V

    const-wide/16 v1, 0x5

    int-to-long v3, v0

    add-long/2addr v3, v1

    div-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lfa4;->Y(J)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/j;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/j;->w()Lcom/google/common/collect/j;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lyr4$b;

    if-eqz v0, :cond_1

    check-cast p0, Lyr4$b;

    iget-object p0, p0, Lyr4$b;->b:Ljava/util/List;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_2

    new-instance v0, Lyr4$a;

    invoke-direct {v0, p0}, Lyr4$b;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_2
    new-instance v0, Lyr4$b;

    invoke-direct {v0, p0}, Lyr4$b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Ljava/util/List;Llm3;)Ljava/util/AbstractList;
    .locals 1

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lyr4$c;

    invoke-direct {v0, p0, p1}, Lyr4$c;-><init>(Ljava/util/List;Llm3;)V

    return-object v0

    :cond_0
    new-instance v0, Lyr4$d;

    invoke-direct {v0, p0, p1}, Lyr4$d;-><init>(Ljava/util/List;Llm3;)V

    return-object v0
.end method
