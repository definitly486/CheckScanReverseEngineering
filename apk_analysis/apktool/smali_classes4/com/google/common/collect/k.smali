.class public Lcom/google/common/collect/k;
.super Lz24;
.source "SourceFile"

# interfaces
.implements Llr4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lz24<",
        "TK;TV;>;",
        "Llr4<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient h:Lcom/google/common/collect/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-static {}, Lcom/google/common/collect/l;->a()Lcom/google/common/collect/l$a;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    if-lez v6, :cond_1

    sget-object v7, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    new-instance v7, Lcom/google/common/collect/j$a;

    invoke-direct {v7}, Lcom/google/common/collect/j$a;-><init>()V

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v9}, Lcom/google/common/collect/i$a;->c(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lcom/google/common/collect/j$a;->g()Lcom/google/common/collect/w;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Invalid value count "

    invoke-static {v6, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/google/common/collect/l$a;->a(Z)Lcom/google/common/collect/x;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/common/collect/k;

    invoke-direct {v0, p1, v4}, Lz24;-><init>(Lcom/google/common/collect/l;I)V

    iput-object v0, p0, Lcom/google/common/collect/k;->h:Lcom/google/common/collect/k;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/InvalidObjectException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/InvalidObjectException;

    throw p0

    :cond_3
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Invalid key count "

    invoke-static {v0, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/k;->h:Lcom/google/common/collect/k;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-static {p0, p1}, Lcom/google/common/collect/b0;->a(Lcom/google/common/collect/g;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/k;->n(Ljava/lang/Object;)Lcom/google/common/collect/j;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k;->n(Ljava/lang/Object;)Lcom/google/common/collect/j;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)Lcom/google/common/collect/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/j<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lz24;->f:Lcom/google/common/collect/l;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/j;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    sget-object p0, Lcom/google/common/collect/w;->f:Lcom/google/common/collect/w;

    :cond_0
    return-object p0
.end method
