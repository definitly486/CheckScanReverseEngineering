.class public abstract Lcom/google/common/collect/u$c;
.super Lcom/google/common/collect/d0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d0$c<",
        "Lcom/google/common/collect/t$a<",
        "TE;>;>;"
    }
.end annotation


# virtual methods
.method public final clear()V
    .locals 0

    check-cast p0, Lcom/google/common/collect/h$b;

    iget-object p0, p0, Lcom/google/common/collect/h$b;->b:Lcom/google/common/collect/h;

    check-cast p0, Lcom/google/common/collect/f;

    invoke-virtual {p0}, Lcom/google/common/collect/f;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/common/collect/t$a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/t$a;

    invoke-interface {p1}, Lcom/google/common/collect/t$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/google/common/collect/h$b;

    invoke-interface {p1}, Lcom/google/common/collect/t$a;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/h$b;->b:Lcom/google/common/collect/h;

    check-cast p0, Lcom/google/common/collect/f;

    iget-object p0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/v;->b(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1}, Lcom/google/common/collect/t$a;->getCount()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/common/collect/t$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/common/collect/t$a;

    invoke-interface {p1}, Lcom/google/common/collect/t$a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/t$a;->getCount()I

    move-result p1

    if-eqz p1, :cond_3

    check-cast p0, Lcom/google/common/collect/h$b;

    iget-object p0, p0, Lcom/google/common/collect/h$b;->b:Lcom/google/common/collect/h;

    check-cast p0, Lcom/google/common/collect/f;

    const-string v2, "oldCount"

    invoke-static {p1, v2}, Lcn1;->b(ILjava/lang/String;)V

    const-string v2, "newCount"

    invoke-static {v1, v2}, Lcn1;->b(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/v;->d(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/v;->c(I)I

    move-result v2

    if-eq v2, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/v;->g(I)I

    iget-wide v0, p0, Lcom/google/common/collect/f;->e:J

    int-to-long v4, p1

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/collect/f;->e:J

    return v3

    :cond_3
    :goto_0
    return v1
.end method
