.class public final Lyads/i40;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lyads/n40;


# direct methods
.method public constructor <init>(Lyads/n40;)V
    .locals 0

    iput-object p1, p0, Lyads/i40;->b:Lyads/n40;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {p0}, Lyads/n40;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {v0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lyads/i40;->b:Lyads/n40;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lyads/n40;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {p0, v0}, Lyads/n40;->b(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {p0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lyads/g40;

    invoke-direct {v0, p0}, Lyads/g40;-><init>(Lyads/n40;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 10

    iget-object v0, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {v0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {v0}, Lyads/n40;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lyads/i40;->b:Lyads/n40;

    iget v0, v0, Lyads/n40;->f:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x1

    shl-int v0, v2, v0

    add-int/lit8 v5, v0, -0x1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object p1, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {p1}, Lyads/n40;->e()Ljava/lang/Object;

    move-result-object v6

    iget-object p1, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {p1}, Lyads/n40;->c()[I

    move-result-object v7

    iget-object p1, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {p1}, Lyads/n40;->d()[Ljava/lang/Object;

    move-result-object v8

    iget-object p1, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {p1}, Lyads/n40;->f()[Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lyads/o40;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {v0, p1, v5}, Lyads/n40;->a(II)V

    iget-object p0, p0, Lyads/i40;->b:Lyads/n40;

    iget p1, p0, Lyads/n40;->g:I

    sub-int/2addr p1, v2

    iput p1, p0, Lyads/n40;->g:I

    iget p1, p0, Lyads/n40;->f:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Lyads/n40;->f:I

    return v2

    :cond_3
    return v1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lyads/i40;->b:Lyads/n40;

    invoke-virtual {p0}, Lyads/n40;->size()I

    move-result p0

    return p0
.end method
