.class public interface abstract Lua5;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Lvv4;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v1, p1, Le46;->c:Lcom/google/common/collect/j;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p0

    :goto_0
    iget-object v1, p1, Le46;->c:Lcom/google/common/collect/j;

    iget-object p1, p1, Le46;->d:Lcom/google/common/collect/j;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Incorrect number of required labels provided. Expected: %s"

    invoke-static {v1, v2, p2}, Lo8;->b(ILjava/lang/String;Z)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ne p2, p3, :cond_1

    move p0, v0

    :cond_1
    const-string p2, "Incorrect number of optional labels provided. Expected: %s"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1, p2, p0}, Lo8;->b(ILjava/lang/String;Z)V

    return-void
.end method

.method public b(Lhw4;JLjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhw4;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    iget-object p4, p1, Le46;->c:Lcom/google/common/collect/j;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ne p3, p4, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, p0

    :goto_0
    iget-object p4, p1, Le46;->c:Lcom/google/common/collect/j;

    iget-object p1, p1, Le46;->d:Lcom/google/common/collect/j;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const-string v0, "Incorrect number of required labels provided. Expected: %s"

    invoke-static {p4, v0, p3}, Lo8;->b(ILjava/lang/String;Z)V

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ne p3, p4, :cond_1

    move p0, p2

    :cond_1
    const-string p2, "Incorrect number of optional labels provided. Expected: %s"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1, p2, p0}, Lo8;->b(ILjava/lang/String;Z)V

    return-void
.end method
