.class public final Lkxa;
.super Lp3b;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lyxa;


# direct methods
.method public constructor <init>(Lyxa;Lp0b;)V
    .locals 0

    iput-object p1, p0, Lkxa;->c:Lyxa;

    invoke-direct {p0, p2}, Lp3b;-><init>(Lp0b;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Lkxa;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Ljxa;

    invoke-virtual {v0}, Ljxa;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljxa;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Ljxa;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lp3b;->b:Lp0b;

    invoke-virtual {p0}, Lp0b;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lp3b;->b:Lp0b;

    invoke-virtual {p0}, Lp0b;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp3b;->b:Lp0b;

    invoke-virtual {p0}, Lp0b;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lp3b;->b:Lp0b;

    invoke-virtual {v0}, Lp0b;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljxa;

    invoke-direct {v1, p0, v0}, Ljxa;-><init>(Lkxa;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lp3b;->b:Lp0b;

    invoke-virtual {v0, p1}, Lp0b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lkxa;->c:Lyxa;

    iget p1, p0, Lyxa;->f:I

    sub-int/2addr p1, v0

    iput p1, p0, Lyxa;->f:I

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
