.class public Lyads/n;
.super Lyads/yw3;
.source "SourceFile"


# instance fields
.field public final transient d:Ljava/util/Map;

.field public final synthetic e:Lyads/z;


# direct methods
.method public constructor <init>(Lyads/z;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lyads/n;->e:Lyads/z;

    invoke-direct {p0}, Lyads/yw3;-><init>()V

    iput-object p2, p0, Lyads/n;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)Lyads/je3;
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lyads/n;->e:Lyads/z;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast p0, Lyads/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    instance-of v1, p1, Ljava/util/RandomAccess;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lyads/t;

    invoke-direct {v1, p0, v0, p1, v2}, Lyads/t;-><init>(Lyads/z;Ljava/lang/Object;Ljava/util/List;Lyads/y;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lyads/y;

    invoke-direct {v1, p0, v0, p1, v2}, Lyads/y;-><init>(Lyads/z;Ljava/lang/Object;Ljava/util/List;Lyads/y;)V

    :goto_0
    new-instance p0, Lyads/je3;

    invoke-direct {p0, v0, v1}, Lyads/je3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lyads/n;->d:Ljava/util/Map;

    iget-object v1, p0, Lyads/n;->e:Lyads/z;

    iget-object v2, v1, Lyads/z;->e:Ljava/util/Map;

    if-ne v0, v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lyads/z;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const/4 p0, 0x0

    iput p0, v1, Lyads/z;->f:I

    return-void

    :cond_1
    new-instance v0, Lyads/m;

    invoke-direct {v0, p0}, Lyads/m;-><init>(Lyads/n;)V

    :goto_1
    invoke-virtual {v0}, Lyads/m;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lyads/m;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lyads/m;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lyads/n;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lyads/n;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

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

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lyads/n;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lyads/n;->e:Lyads/z;

    check-cast p0, Lyads/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_1

    new-instance v2, Lyads/t;

    invoke-direct {v2, p0, p1, v0, v1}, Lyads/t;-><init>(Lyads/z;Ljava/lang/Object;Ljava/util/List;Lyads/y;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lyads/y;

    invoke-direct {v2, p0, p1, v0, v1}, Lyads/y;-><init>(Lyads/z;Ljava/lang/Object;Ljava/util/List;Lyads/y;)V

    goto :goto_1

    :goto_2
    return-object v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/n;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object p0, p0, Lyads/n;->e:Lyads/z;

    iget-object v0, p0, Lyads/c0;->b:Lyads/q;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyads/gd4;

    invoke-virtual {v0}, Lyads/z;->c()Lyads/q;

    move-result-object v0

    iput-object v0, p0, Lyads/c0;->b:Lyads/q;

    :cond_0
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lyads/n;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lyads/n;->e:Lyads/z;

    check-cast v0, Lyads/gd4;

    iget-object v0, v0, Lyads/gd4;->g:Lyads/ut5;

    invoke-interface {v0}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lyads/n;->e:Lyads/z;

    iget v1, p0, Lyads/z;->f:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lyads/z;->f:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lyads/n;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/n;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
