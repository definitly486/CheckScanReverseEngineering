.class public final Lcom/google/protobuf/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/f0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/f0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/a0;

.field public final b:Lcom/google/protobuf/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/j0<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lcom/google/protobuf/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/j0;Lcom/google/protobuf/k;Lcom/google/protobuf/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/j0<",
            "**>;",
            "Lcom/google/protobuf/k<",
            "*>;",
            "Lcom/google/protobuf/a0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/d0;->b:Lcom/google/protobuf/j0;

    invoke-virtual {p2, p3}, Lcom/google/protobuf/k;->e(Lcom/google/protobuf/a0;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/protobuf/d0;->c:Z

    iput-object p2, p0, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/k;

    iput-object p3, p0, Lcom/google/protobuf/d0;->a:Lcom/google/protobuf/a0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/protobuf/n0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/n0;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/k;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/m;->j()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/m$b;

    invoke-interface {v2}, Lcom/google/protobuf/m$b;->getLiteJavaType()Lvi9;

    move-result-object v3

    sget-object v4, Lvi9;->MESSAGE:Lvi9;

    if-ne v3, v4, :cond_4

    invoke-interface {v2}, Lcom/google/protobuf/m$b;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Lcom/google/protobuf/m$b;->isPacked()Z

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, v1, Lcom/google/protobuf/r$a;

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lcom/google/protobuf/m$b;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/r$a;

    iget-object v1, v1, Lcom/google/protobuf/r$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/protobuf/r;

    iget-object v1, v3, Lcom/google/protobuf/s;->b:Lfx0;

    if-eqz v1, :cond_0

    iget-object v1, v3, Lcom/google/protobuf/s;->b:Lfx0;

    goto :goto_2

    :cond_0
    monitor-enter v3

    :try_start_0
    iget-object v1, v3, Lcom/google/protobuf/s;->b:Lfx0;

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/google/protobuf/s;->b:Lfx0;

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object v1, v3, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/a0;

    if-nez v1, :cond_2

    sget-object v1, Lfx0;->c:Lfx0$h;

    iput-object v1, v3, Lcom/google/protobuf/s;->b:Lfx0;

    goto :goto_1

    :cond_2
    iget-object v1, v3, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/a0;

    invoke-interface {v1}, Lcom/google/protobuf/a0;->toByteString()Lfx0;

    move-result-object v1

    iput-object v1, v3, Lcom/google/protobuf/s;->b:Lfx0;

    :goto_1
    iget-object v1, v3, Lcom/google/protobuf/s;->b:Lfx0;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move-object v3, p2

    check-cast v3, Lcom/google/protobuf/h;

    invoke-virtual {v3, v2, v1}, Lcom/google/protobuf/h;->h(ILjava/lang/Object;)V

    goto :goto_0

    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    invoke-interface {v2}, Lcom/google/protobuf/m$b;->getNumber()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/google/protobuf/h;

    invoke-virtual {v3, v2, v1}, Lcom/google/protobuf/h;->h(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string p0, "Found invalid MessageSet item."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p0, p0, Lcom/google/protobuf/d0;->b:Lcom/google/protobuf/j0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j0;->q(Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    return-void
.end method

.method public final b(Lcom/google/protobuf/a;)I
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/d0;->b:Lcom/google/protobuf/j0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/j0;->i(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/protobuf/d0;->c:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/k;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object p0

    iget-object p0, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/i0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/m;->g(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->d()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/protobuf/m;->g(Ljava/util/Map$Entry;)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final c(Ljava/lang/Object;[BIILcom/google/protobuf/d$b;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/d$b;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/protobuf/o;

    iget-object v3, v1, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    sget-object v5, Lcom/google/protobuf/k0;->f:Lcom/google/protobuf/k0;

    if-ne v3, v5, :cond_0

    new-instance v3, Lcom/google/protobuf/k0;

    invoke-direct {v3}, Lcom/google/protobuf/k0;-><init>()V

    iput-object v3, v1, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    :cond_0
    move-object v5, v3

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/protobuf/o$c;

    iget-object v3, v1, Lcom/google/protobuf/o$c;->extensions:Lcom/google/protobuf/m;

    iget-boolean v7, v3, Lcom/google/protobuf/m;->b:Z

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/m;->b()Lcom/google/protobuf/m;

    move-result-object v3

    iput-object v3, v1, Lcom/google/protobuf/o$c;->extensions:Lcom/google/protobuf/m;

    :cond_1
    move-object v7, v3

    move/from16 v1, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v4, :cond_c

    move-object v9, v3

    invoke-static {v2, v1, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v3

    iget v1, v6, Lcom/google/protobuf/d$b;->a:I

    iget-object v10, v6, Lcom/google/protobuf/d$b;->d:Lcom/google/protobuf/j;

    const/16 v11, 0xb

    iget-object v12, v0, Lcom/google/protobuf/d0;->a:Lcom/google/protobuf/a0;

    iget-object v13, v0, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/k;

    const/4 v14, 0x2

    if-eq v1, v11, :cond_4

    and-int/lit8 v11, v1, 0x7

    if-ne v11, v14, :cond_3

    ushr-int/lit8 v9, v1, 0x3

    invoke-virtual {v13, v10, v12, v9}, Lcom/google/protobuf/k;->b(Lcom/google/protobuf/j;Lcom/google/protobuf/a0;I)Lcom/google/protobuf/o$e;

    move-result-object v9

    if-eqz v9, :cond_2

    sget-object v1, Lrs6;->c:Lrs6;

    iget-object v10, v9, Lcom/google/protobuf/o$e;->c:Lcom/google/protobuf/a0;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v1, v10}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v1

    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/protobuf/d;->e(Lcom/google/protobuf/f0;[BIILcom/google/protobuf/d$b;)I

    move-result v1

    iget-object v3, v9, Lcom/google/protobuf/o$e;->d:Lcom/google/protobuf/o$d;

    iget-object v10, v6, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    invoke-virtual {v7, v3, v10}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    :goto_1
    move-object v3, v9

    goto :goto_0

    :cond_2
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->p(I[BIILcom/google/protobuf/k0;Lcom/google/protobuf/d$b;)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/protobuf/d;->w(I[BIILcom/google/protobuf/d$b;)I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v3, v4, :cond_a

    invoke-static {v2, v3, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v3

    iget v15, v6, Lcom/google/protobuf/d$b;->a:I

    ushr-int/lit8 v8, v15, 0x3

    and-int/lit8 v0, v15, 0x7

    if-eq v8, v14, :cond_7

    const/4 v14, 0x3

    if-eq v8, v14, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v9, :cond_6

    sget-object v0, Lrs6;->c:Lrs6;

    iget-object v8, v9, Lcom/google/protobuf/o$e;->c:Lcom/google/protobuf/a0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v8}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v6}, Lcom/google/protobuf/d;->e(Lcom/google/protobuf/f0;[BIILcom/google/protobuf/d$b;)I

    move-result v3

    iget-object v0, v9, Lcom/google/protobuf/o$e;->d:Lcom/google/protobuf/o$d;

    iget-object v8, v6, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    :goto_3
    const/4 v14, 0x2

    move-object/from16 v0, p0

    goto :goto_2

    :cond_6
    const/4 v8, 0x2

    if-ne v0, v8, :cond_8

    invoke-static {v2, v3, v6}, Lcom/google/protobuf/d;->a([BILcom/google/protobuf/d$b;)I

    move-result v3

    iget-object v0, v6, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lfx0;

    goto :goto_3

    :cond_7
    if-nez v0, :cond_8

    invoke-static {v2, v3, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v3

    iget v1, v6, Lcom/google/protobuf/d$b;->a:I

    invoke-virtual {v13, v10, v12, v1}, Lcom/google/protobuf/k;->b(Lcom/google/protobuf/j;Lcom/google/protobuf/a0;I)Lcom/google/protobuf/o$e;

    move-result-object v9

    goto :goto_3

    :cond_8
    :goto_4
    const/16 v0, 0xc

    if-ne v15, v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v15, v2, v3, v4, v6}, Lcom/google/protobuf/d;->w(I[BIILcom/google/protobuf/d$b;)I

    move-result v3

    goto :goto_3

    :cond_a
    :goto_5
    if-eqz v11, :cond_b

    shl-int/lit8 v0, v1, 0x3

    const/4 v8, 0x2

    or-int/2addr v0, v8

    invoke-virtual {v5, v0, v11}, Lcom/google/protobuf/k0;->f(ILjava/lang/Object;)V

    :cond_b
    move-object/from16 v0, p0

    move v1, v3

    goto :goto_1

    :cond_c
    if-ne v1, v4, :cond_d

    return-void

    :cond_d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->i()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final d(Lcom/google/protobuf/o;)I
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/d0;->b:Lcom/google/protobuf/j0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/k0;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/protobuf/d0;->c:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/k;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object p0

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public final e(Ljava/lang/Object;Lcom/google/protobuf/g;Lcom/google/protobuf/j;)V
    .locals 7

    iget-object v5, p0, Lcom/google/protobuf/d0;->b:Lcom/google/protobuf/j0;

    invoke-virtual {v5, p1}, Lcom/google/protobuf/j0;->f(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v6

    iget-object v3, p0, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/k;

    invoke-virtual {v3, p1}, Lcom/google/protobuf/k;->d(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object v4

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/protobuf/g;->a()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    invoke-virtual {v5, p1, v6}, Lcom/google/protobuf/j0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/d0;->g(Lcom/google/protobuf/g;Lcom/google/protobuf/j;Lcom/google/protobuf/k;Lcom/google/protobuf/m;Lcom/google/protobuf/j0;Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    move-object p0, v0

    move-object p2, v1

    move-object p3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v5, p1, v6}, Lcom/google/protobuf/j0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v5, p1, v6}, Lcom/google/protobuf/j0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p0
.end method

.method public final f(Lcom/google/protobuf/o;Lcom/google/protobuf/o;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/d0;->b:Lcom/google/protobuf/j0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/k0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/d0;->c:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/k;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/m;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Lcom/google/protobuf/g;Lcom/google/protobuf/j;Lcom/google/protobuf/k;Lcom/google/protobuf/m;Lcom/google/protobuf/j0;Ljava/lang/Object;)Z
    .locals 7

    iget v0, p1, Lcom/google/protobuf/g;->b:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/google/protobuf/d0;->a:Lcom/google/protobuf/a0;

    if-eq v0, v1, :cond_2

    and-int/lit8 v1, v0, 0x7

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    ushr-int/lit8 v0, v0, 0x3

    invoke-virtual {p3, p2, p0, v0}, Lcom/google/protobuf/k;->b(Lcom/google/protobuf/j;Lcom/google/protobuf/a0;I)Lcom/google/protobuf/o$e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p3, p1, p0, p2, p4}, Lcom/google/protobuf/k;->h(Lcom/google/protobuf/g;Ljava/lang/Object;Lcom/google/protobuf/j;Lcom/google/protobuf/m;)V

    return v3

    :cond_0
    invoke-virtual {p5, v2, p1, p6}, Lcom/google/protobuf/j0;->l(ILcom/google/protobuf/g;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/g;->y()Z

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    move v4, v2

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/g;->a()I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    iget v5, p1, Lcom/google/protobuf/g;->b:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, p1, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->A()I

    move-result v4

    invoke-virtual {p3, p2, p0, v4}, Lcom/google/protobuf/k;->b(Lcom/google/protobuf/j;Lcom/google/protobuf/a0;I)Lcom/google/protobuf/o$e;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v6, 0x1a

    if-ne v5, v6, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/k;->h(Lcom/google/protobuf/g;Ljava/lang/Object;Lcom/google/protobuf/j;Lcom/google/protobuf/m;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/g;->e()Lfx0;

    move-result-object v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/g;->y()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    iget p0, p1, Lcom/google/protobuf/g;->b:I

    const/16 p1, 0xc

    if-ne p0, p1, :cond_a

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {p3, v1, v0, p2, p4}, Lcom/google/protobuf/k;->i(Lfx0;Ljava/lang/Object;Lcom/google/protobuf/j;Lcom/google/protobuf/m;)V

    return v3

    :cond_8
    invoke-virtual {p5, p6, v4, v1}, Lcom/google/protobuf/j0;->d(Ljava/lang/Object;ILfx0;)V

    :cond_9
    return v3

    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->a()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/k;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/m;->h()Z

    move-result p0

    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/d0;->b:Lcom/google/protobuf/j0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/j0;->j(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/k;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/protobuf/d0;->b:Lcom/google/protobuf/j0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/j0;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/j0;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/d0;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/k;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/g0;->l(Lcom/google/protobuf/k;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/d0;->a:Lcom/google/protobuf/a0;

    instance-of v0, p0, Lcom/google/protobuf/o;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/protobuf/o;

    invoke-virtual {p0}, Lcom/google/protobuf/o;->newMutableInstance()Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/protobuf/a0;->newBuilderForType()Lcom/google/protobuf/a0$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/a0$a;->buildPartial()Lcom/google/protobuf/a0;

    move-result-object p0

    return-object p0
.end method
