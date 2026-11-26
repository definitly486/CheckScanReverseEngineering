.class public final Ld05;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld05$j;,
        Ld05$m;,
        Ld05$o;,
        Ld05$p;,
        Ld05$r;,
        Ld05$v;,
        Ld05$x;,
        Ld05$a0;,
        Ld05$i;,
        Ld05$l;,
        Ld05$u;,
        Ld05$g;,
        Ld05$n;,
        Ld05$b;,
        Ld05$f;,
        Ld05$c0;,
        Ld05$t;,
        Ld05$k;,
        Ld05$h;,
        Ld05$y;,
        Ld05$w;,
        Ld05$s;,
        Ld05$q;,
        Ld05$b0;,
        Ld05$e;,
        Ld05$d;,
        Ld05$z;,
        Ld05$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Ld05$i<",
        "TK;TV;TE;>;S:",
        "Ld05$m<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final k:Ld05$a;


# instance fields
.field public final transient b:I

.field public final transient c:I

.field public final transient d:[Ld05$m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ld05$m<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Ln03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln03<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final transient g:Ld05$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$j<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field public transient h:Ld05$l;

.field public transient i:Ld05$u;

.field public transient j:Ld05$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld05$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld05;->k:Ld05$a;

    return-void
.end method

.method public constructor <init>(Lc05;Ld05$j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc05;",
            "Ld05$j<",
            "TK;TV;TE;TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iget v0, p1, Lc05;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ld05;->e:I

    iget-object v0, p1, Lc05;->f:Ln03;

    iget-object v2, p1, Lc05;->d:Ld05$o;

    sget-object v3, Ld05$o;->STRONG:Ld05$o;

    invoke-static {v2, v3}, Lod5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld05$o;

    invoke-virtual {v2}, Ld05$o;->a()Ln03;

    move-result-object v2

    invoke-static {v0, v2}, Lod5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln03;

    iput-object v0, p0, Ld05;->f:Ln03;

    iput-object p2, p0, Ld05;->g:Ld05$j;

    iget p1, p1, Lc05;->b:I

    if-ne p1, v1, :cond_1

    const/16 p1, 0x10

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    move v2, p2

    move v1, v0

    :goto_0
    iget v3, p0, Ld05;->e:I

    if-ge v1, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    rsub-int/lit8 v2, v2, 0x20

    iput v2, p0, Ld05;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ld05;->b:I

    new-array v2, v1, [Ld05$m;

    iput-object v2, p0, Ld05;->d:[Ld05$m;

    div-int v2, p1, v1

    mul-int/2addr v1, v2

    if-ge v1, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_1
    if-ge v0, v2, :cond_4

    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object p1, p0, Ld05;->d:[Ld05$m;

    array-length v1, p1

    if-ge p2, v1, :cond_5

    iget-object v1, p0, Ld05;->g:Ld05$j;

    invoke-interface {v1, p0, v0}, Ld05$j;->e(Ld05;I)Ld05$m;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializationProxy"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Ld05;->f:Ln03;

    invoke-virtual {p0, p1}, Ln03;->b(Ljava/lang/Object;)I

    move-result p0

    shl-int/lit8 p1, p0, 0xf

    xor-int/lit16 p1, p1, -0x3283

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x3

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x2

    shl-int/lit8 v0, p0, 0xe

    add-int/2addr p1, v0

    add-int/2addr p1, p0

    ushr-int/lit8 p0, p1, 0x10

    xor-int/2addr p0, p1

    return p0
.end method

.method public final b(I)Ld05$m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ld05$m<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    iget v0, p0, Ld05;->c:I

    ushr-int/2addr p1, v0

    iget v0, p0, Ld05;->b:I

    and-int/2addr p1, v0

    iget-object p0, p0, Ld05;->d:[Ld05$m;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final clear()V
    .locals 7

    iget-object p0, p0, Ld05;->d:[Ld05$m;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    iget v4, v3, Ld05$m;->c:I

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, v3, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v5, v1

    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Ld05$m;->f()V

    iget-object v4, v3, Ld05$m;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v4, v3, Ld05$m;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ld05$m;->d:I

    iput v1, v3, Ld05$m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ld05;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Ld05;->b(I)Ld05$m;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget v2, p0, Ld05$m;->c:I

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, p1}, Ld05$m;->e(ILjava/lang/Object;)Ld05$i;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ld05$m;->i()V

    return v0

    :cond_2
    invoke-virtual {p0}, Ld05$m;->i()V

    return v0

    :goto_1
    invoke-virtual {p0}, Ld05$m;->i()V

    throw p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_1
    iget-object v3, v0, Ld05;->d:[Ld05$m;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    array-length v7, v3

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_7

    aget-object v11, v3, v10

    iget v12, v11, Ld05$m;->c:I

    iget-object v12, v11, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_6

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ld05$i;

    :goto_3
    if-eqz v14, :cond_5

    invoke-interface {v14}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_2

    invoke-virtual {v11}, Ld05$m;->p()V

    :goto_4
    move-object/from16 v15, v16

    goto :goto_5

    :cond_2
    invoke-interface {v14}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    invoke-virtual {v11}, Ld05$m;->p()V

    goto :goto_4

    :cond_3
    :goto_5
    const/16 v16, 0x0

    if-eqz v15, :cond_4

    iget-object v2, v0, Ld05;->g:Ld05$j;

    invoke-interface {v2}, Ld05$j;->c()Ld05$o;

    move-result-object v2

    invoke-virtual {v2}, Ld05$o;->a()Ln03;

    move-result-object v2

    invoke-virtual {v2, v1, v15}, Ln03;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    invoke-interface {v14}, Ld05$i;->getNext()Ld05$i;

    move-result-object v14

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    iget v2, v11, Ld05$m;->d:I

    int-to-long v11, v2

    add-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    const/16 v16, 0x0

    cmp-long v2, v8, v4

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v8

    goto :goto_0

    :goto_6
    return v16
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ld05;->j:Ld05$g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ld05$g;

    invoke-direct {v0, p0}, Ld05$g;-><init>(Ld05;)V

    iput-object v0, p0, Ld05;->j:Ld05$g;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ld05;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Ld05;->b(I)Ld05$m;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, v1, p1}, Ld05$m;->e(ILjava/lang/Object;)Ld05$i;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ld05$m;->i()V

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {p1}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ld05$m;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ld05$m;->i()V

    return-object p1

    :goto_1
    invoke-virtual {p0}, Ld05$m;->i()V

    throw p1
.end method

.method public final isEmpty()Z
    .locals 9

    iget-object p0, p0, Ld05;->d:[Ld05$m;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_1

    aget-object v6, p0, v3

    iget v6, v6, Ld05$m;->c:I

    if-eqz v6, :cond_0

    return v2

    :cond_0
    aget-object v6, p0, v3

    iget v6, v6, Ld05$m;->d:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmp-long v3, v4, v0

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    move v3, v2

    :goto_1
    array-length v7, p0

    if-ge v3, v7, :cond_3

    aget-object v7, p0, v3

    iget v7, v7, Ld05$m;->c:I

    if-eqz v7, :cond_2

    return v2

    :cond_2
    aget-object v7, p0, v3

    iget v7, v7, Ld05$m;->d:I

    int-to-long v7, v7

    sub-long/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    cmp-long p0, v4, v0

    if-nez p0, :cond_4

    return v6

    :cond_4
    return v2

    :cond_5
    return v6
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ld05;->h:Ld05$l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ld05$l;

    invoke-direct {v0, p0}, Ld05$l;-><init>(Ld05;)V

    iput-object v0, p0, Ld05;->h:Ld05$l;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ld05;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ld05;->b(I)Ld05$m;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Ld05$m;->j(ILjava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ld05;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ld05;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ld05;->b(I)Ld05$m;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Ld05$m;->j(ILjava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Ld05;->a(Ljava/lang/Object;)I

    move-result v1

    .line 133
    invoke-virtual {p0, v1}, Ld05;->b(I)Ld05$m;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 135
    :try_start_0
    invoke-virtual {p0}, Ld05$m;->m()V

    .line 136
    iget-object v2, p0, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 137
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v1

    .line 138
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld05$i;

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_4

    .line 139
    invoke-interface {v5}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 140
    invoke-interface {v5}, Ld05$i;->b()I

    move-result v7

    if-ne v7, v1, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Ld05$m;->b:Ld05;

    iget-object v7, v7, Ld05;->f:Ln03;

    .line 141
    invoke-virtual {v7, p1, v6}, Ln03;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 142
    invoke-interface {v5}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    invoke-interface {v5}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 144
    :goto_1
    iget v0, p0, Ld05$m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld05$m;->d:I

    .line 145
    invoke-virtual {p0, v4, v5}, Ld05$m;->k(Ld05$i;Ld05$i;)Ld05$i;

    move-result-object v0

    .line 146
    iget v1, p0, Ld05$m;->c:I

    add-int/lit8 v1, v1, -0x1

    .line 147
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 148
    iput v1, p0, Ld05$m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 150
    :cond_3
    :try_start_1
    invoke-interface {v5}, Ld05$i;->getNext()Ld05$i;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    throw p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Ld05;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Ld05;->b(I)Ld05$m;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ld05$m;->m()V

    iget-object v2, p0, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld05$i;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ld05$i;->b()I

    move-result v8

    if-ne v8, v1, :cond_3

    if-eqz v7, :cond_3

    iget-object v8, p0, Ld05$m;->b:Ld05;

    iget-object v8, v8, Ld05;->f:Ln03;

    invoke-virtual {v8, p1, v7}, Ln03;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Ld05$m;->b:Ld05;

    iget-object v1, v1, Ld05;->g:Ld05$j;

    invoke-interface {v1}, Ld05$j;->c()Ld05$o;

    move-result-object v1

    invoke-virtual {v1}, Ld05$o;->a()Ln03;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Ln03;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_1
    iget p1, p0, Ld05$m;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Ld05$m;->d:I

    invoke-virtual {p0, v5, v6}, Ld05$m;->k(Ld05$i;Ld05$i;)Ld05$i;

    move-result-object p1

    iget p2, p0, Ld05$m;->c:I

    sub-int/2addr p2, v4

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Ld05$m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_3
    :try_start_1
    invoke-interface {v6}, Ld05$i;->getNext()Ld05$i;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_5
    :goto_3
    return v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    invoke-virtual {p0, p1}, Ld05;->a(Ljava/lang/Object;)I

    move-result v0

    .line 150
    invoke-virtual {p0, v0}, Ld05;->b(I)Ld05$m;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 152
    :try_start_0
    invoke-virtual {p0}, Ld05$m;->m()V

    .line 153
    iget-object v1, p0, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 154
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    .line 155
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld05$i;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 156
    invoke-interface {v4}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 157
    invoke-interface {v4}, Ld05$i;->b()I

    move-result v7

    if-ne v7, v0, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Ld05$m;->b:Ld05;

    iget-object v7, v7, Ld05;->f:Ln03;

    .line 158
    invoke-virtual {v7, p1, v6}, Ln03;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 159
    invoke-interface {v4}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 160
    invoke-interface {v4}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 161
    iget p1, p0, Ld05$m;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld05$m;->d:I

    .line 162
    invoke-virtual {p0, v3, v4}, Ld05$m;->k(Ld05$i;Ld05$i;)Ld05$i;

    move-result-object p1

    .line 163
    iget p2, p0, Ld05$m;->c:I

    add-int/lit8 p2, p2, -0x1

    .line 164
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 165
    iput p2, p0, Ld05$m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 166
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    .line 167
    :cond_1
    :try_start_1
    iget v0, p0, Ld05$m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld05$m;->d:I

    .line 168
    invoke-virtual {p0, v4, p2}, Ld05$m;->o(Ld05$i;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 170
    :cond_2
    :try_start_2
    invoke-interface {v4}, Ld05$i;->getNext()Ld05$i;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 172
    throw p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ld05;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Ld05;->b(I)Ld05$m;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ld05$m;->m()V

    iget-object v2, p0, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld05$i;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ld05$i;->b()I

    move-result v8

    if-ne v8, v1, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, p0, Ld05$m;->b:Ld05;

    iget-object v8, v8, Ld05;->f:Ln03;

    invoke-virtual {v8, p1, v7}, Ln03;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-interface {v6}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget p1, p0, Ld05$m;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Ld05$m;->d:I

    invoke-virtual {p0, v5, v6}, Ld05$m;->k(Ld05$i;Ld05$i;)Ld05$i;

    move-result-object p1

    iget p2, p0, Ld05$m;->c:I

    sub-int/2addr p2, v4

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Ld05$m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Ld05$m;->b:Ld05;

    iget-object v1, v1, Ld05;->g:Ld05$j;

    invoke-interface {v1}, Ld05$j;->c()Ld05$o;

    move-result-object v1

    invoke-virtual {v1}, Ld05$o;->a()Ln03;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Ln03;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Ld05$m;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Ld05$m;->d:I

    invoke-virtual {p0, v6, p3}, Ld05$m;->o(Ld05$i;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_4
    :try_start_2
    invoke-interface {v6}, Ld05$i;->getNext()Ld05$i;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final size()I
    .locals 5

    iget-object p0, p0, Ld05;->d:[Ld05$m;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    iget v3, v3, Ld05$m;->c:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lfa4;->Y(J)I

    move-result p0

    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ld05;->i:Ld05$u;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ld05$u;

    invoke-direct {v0, p0}, Ld05$u;-><init>(Ld05;)V

    iput-object v0, p0, Ld05;->i:Ld05$u;

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 6

    new-instance v0, Ld05$n;

    iget-object v1, p0, Ld05;->g:Ld05$j;

    move-object v2, v1

    invoke-interface {v2}, Ld05$j;->b()Ld05$o;

    move-result-object v1

    move-object v3, v2

    invoke-interface {v3}, Ld05$j;->c()Ld05$o;

    move-result-object v2

    invoke-interface {v3}, Ld05$j;->c()Ld05$o;

    move-result-object v3

    invoke-virtual {v3}, Ld05$o;->a()Ln03;

    iget v4, p0, Ld05;->e:I

    iget-object v3, p0, Ld05;->f:Ln03;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ld05$b;-><init>(Ld05$o;Ld05$o;Ln03;ILd05;)V

    return-object v0
.end method
