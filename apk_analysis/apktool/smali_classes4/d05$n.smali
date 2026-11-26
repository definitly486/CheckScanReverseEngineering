.class public final Ld05$n;
.super Ld05$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ld05$b<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-instance v1, Lc05;

    invoke-direct {v1}, Lc05;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Lo8;->e(Z)V

    iput v0, v1, Lc05;->b:I

    iget-object v0, v1, Lc05;->d:Ld05$o;

    if-nez v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const-string v5, "Key strength was already set to %s"

    invoke-static {v5, v4, v0}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    iget-object v0, p0, Ld05$b;->b:Ld05$o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Lc05;->d:Ld05$o;

    sget-object v4, Ld05$o;->STRONG:Ld05$o;

    if-eq v0, v4, :cond_2

    iput-boolean v3, v1, Lc05;->a:Z

    :cond_2
    iget-object v0, v1, Lc05;->e:Ld05$o;

    if-nez v0, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    const-string v6, "Value strength was already set to %s"

    invoke-static {v6, v5, v0}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    iget-object v0, p0, Ld05$b;->c:Ld05$o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Lc05;->e:Ld05$o;

    if-eq v0, v4, :cond_4

    iput-boolean v3, v1, Lc05;->a:Z

    :cond_4
    iget-object v0, v1, Lc05;->f:Ln03;

    if-nez v0, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    const-string v5, "key equivalence was already set to %s"

    invoke-static {v5, v4, v0}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    iget-object v0, p0, Ld05$b;->d:Ln03;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Lc05;->f:Ln03;

    iput-boolean v3, v1, Lc05;->a:Z

    iget v0, v1, Lc05;->c:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_6

    move v4, v3

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    const-string v5, "concurrency level was already set to %s"

    invoke-static {v0, v5, v4}, Lo8;->p(ILjava/lang/String;Z)V

    iget v0, p0, Ld05$b;->e:I

    if-lez v0, :cond_7

    move v2, v3

    :cond_7
    invoke-static {v2}, Lo8;->e(Z)V

    iput v0, v1, Lc05;->c:I

    invoke-virtual {v1}, Lc05;->a()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Ld05$b;->f:Ljava/util/concurrent/ConcurrentMap;

    :goto_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ld05$b;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld05$b;->f:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Ld05$b;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object p0, p0, Ld05$b;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
