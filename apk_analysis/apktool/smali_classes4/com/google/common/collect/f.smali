.class public abstract Lcom/google/common/collect/f;
.super Lcom/google/common/collect/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient d:Lcom/google/common/collect/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation
.end field

.field public transient e:J


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/f;->b()Lcom/google/common/collect/v;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/google/common/collect/f;->a(ILjava/lang/Object;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/collect/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/h$b;

    invoke-virtual {v0}, Lcom/google/common/collect/h$b;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/h;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/h$b;

    invoke-virtual {p0}, Lcom/google/common/collect/h$b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t$a;

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)I
    .locals 9

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {p0, p2}, Lcom/google/common/collect/v;->b(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-string v3, "occurrences cannot be negative: %s"

    invoke-static {p1, v3, v2}, Lo8;->b(ILjava/lang/String;Z)V

    iget-object v2, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/v;->d(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    invoke-virtual {v3, p2, p1}, Lcom/google/common/collect/v;->f(Ljava/lang/Object;I)V

    iget-wide v2, p0, Lcom/google/common/collect/f;->e:J

    int-to-long p1, p1

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/common/collect/f;->e:J

    return v1

    :cond_2
    invoke-virtual {v3, v2}, Lcom/google/common/collect/v;->c(I)I

    move-result p2

    int-to-long v3, p2

    int-to-long v5, p1

    add-long/2addr v3, v5

    const-wide/32 v7, 0x7fffffff

    cmp-long p1, v3, v7

    if-gtz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    const-string p1, "too many occurrences: %s"

    invoke-static {v3, v4, v0, p1}, Lo8;->c(JZLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    long-to-int v0, v3

    iget v1, p1, Lcom/google/common/collect/v;->c:I

    invoke-static {v2, v1}, Lo8;->j(II)V

    iget-object p1, p1, Lcom/google/common/collect/v;->b:[I

    aput v0, p1, v2

    iget-wide v0, p0, Lcom/google/common/collect/f;->e:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/common/collect/f;->e:J

    return p2
.end method

.method public abstract b()Lcom/google/common/collect/v;
.end method

.method public final clear()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v1, v0, Lcom/google/common/collect/v;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/common/collect/v;->d:I

    iget-object v1, v0, Lcom/google/common/collect/v;->a:[Ljava/lang/Object;

    iget v2, v0, Lcom/google/common/collect/v;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/common/collect/v;->b:[I

    iget v2, v0, Lcom/google/common/collect/v;->c:I

    invoke-static {v1, v4, v2, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, v0, Lcom/google/common/collect/v;->e:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, v0, Lcom/google/common/collect/v;->f:[J

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iput v4, v0, Lcom/google/common/collect/v;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/f;->e:J

    return-void
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v;->b(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final d(ILjava/lang/Object;)I
    .locals 4

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {p0, p2}, Lcom/google/common/collect/v;->b(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-lez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const-string v2, "occurrences cannot be negative: %s"

    invoke-static {p1, v2, v1}, Lo8;->b(ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/v;->d(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/v;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    if-le v0, p1, :cond_3

    sub-int v2, v0, p1

    iget v3, v1, Lcom/google/common/collect/v;->c:I

    invoke-static {p2, v3}, Lo8;->j(II)V

    iget-object v1, v1, Lcom/google/common/collect/v;->b:[I

    aput v2, v1, p2

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p2}, Lcom/google/common/collect/v;->g(I)I

    move p1, v0

    :goto_1
    iget-wide v1, p0, Lcom/google/common/collect/f;->e:J

    int-to-long p1, p1

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lcom/google/common/collect/f;->e:J

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/u$d;

    invoke-virtual {p0}, Lcom/google/common/collect/h;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/h$b;

    invoke-virtual {v1}, Lcom/google/common/collect/h$b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/u$d;-><init>(Lcom/google/common/collect/f;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/f;->e:J

    invoke-static {v0, v1}, Lfa4;->Y(J)I

    move-result p0

    return p0
.end method
