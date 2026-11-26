.class public abstract Ld05$m;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "m"
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
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public final b:Ld05;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field public volatile c:I

.field public d:I

.field public e:I

.field public volatile f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ld05;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld05<",
            "TK;TV;TE;TS;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ld05$m;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Ld05$m;->b:Ld05;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Ld05$m;->e:I

    iput-object p1, p0, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ref/ReferenceQueue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ld05$i;

    iget-object v2, p0, Ld05$m;->b:Ld05;

    invoke-interface {v1}, Ld05$i;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ld05;->b(I)Ld05$m;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, v2, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v3, v5

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld05$i;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ne v6, v1, :cond_2

    iget v1, v2, Ld05$m;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Ld05$m;->d:I

    invoke-virtual {v2, v5, v6}, Ld05$m;->k(Ld05$i;Ld05$i;)Ld05$i;

    move-result-object v1

    iget v5, v2, Ld05$m;->c:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v5, v2, Ld05$m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-interface {v6}, Ld05$i;->getNext()Ld05$i;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_3

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method public final b(Ljava/lang/ref/ReferenceQueue;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ld05$a0;

    iget-object v2, p0, Ld05$m;->b:Ld05;

    invoke-interface {v1}, Ld05$a0;->a()Ld05$i;

    move-result-object v3

    invoke-interface {v3}, Ld05$i;->b()I

    move-result v4

    invoke-virtual {v2, v4}, Ld05;->b(I)Ld05$m;

    move-result-object v2

    invoke-interface {v3}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v5, v2, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld05$i;

    move-object v8, v7

    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8}, Ld05$i;->b()I

    move-result v10

    if-ne v10, v4, :cond_2

    if-eqz v9, :cond_2

    iget-object v10, v2, Ld05$m;->b:Ld05;

    iget-object v10, v10, Ld05;->f:Ln03;

    invoke-virtual {v10, v3, v9}, Ln03;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v3, v8

    check-cast v3, Ld05$z;

    invoke-interface {v3}, Ld05$z;->a()Ld05$a0;

    move-result-object v3

    if-ne v3, v1, :cond_1

    iget v1, v2, Ld05$m;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Ld05$m;->d:I

    invoke-virtual {v2, v7, v8}, Ld05$m;->k(Ld05$i;Ld05$i;)Ld05$i;

    move-result-object v1

    iget v3, v2, Ld05$m;->c:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v3, v2, Ld05$m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-interface {v8}, Ld05$i;->getNext()Ld05$i;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_3

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 12

    iget-object v0, p0, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Ld05$m;->c:I

    shl-int/lit8 v3, v1, 0x1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Ld05$m;->e:I

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld05$i;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ld05$i;->getNext()Ld05$i;

    move-result-object v7

    invoke-interface {v6}, Ld05$i;->b()I

    move-result v8

    and-int/2addr v8, v3

    if-nez v7, :cond_1

    invoke-virtual {v4, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ld05$i;->b()I

    move-result v10

    and-int/2addr v10, v3

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    :cond_2
    invoke-interface {v7}, Ld05$i;->getNext()Ld05$i;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    invoke-interface {v6}, Ld05$i;->b()I

    move-result v7

    and-int/2addr v7, v3

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld05$i;

    iget-object v10, p0, Ld05$m;->b:Ld05;

    iget-object v10, v10, Ld05;->g:Ld05$j;

    invoke-virtual {p0}, Ld05$m;->n()Ld05$m;

    move-result-object v11

    invoke-interface {v10, v11, v6, v8}, Ld05$j;->f(Ld05$m;Ld05$i;Ld05$i;)Ld05$i;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, -0x1

    :goto_3
    invoke-interface {v6}, Ld05$i;->getNext()Ld05$i;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    iput-object v4, p0, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v2, p0, Ld05$m;->c:I

    return-void
.end method

.method public final e(ILjava/lang/Object;)Ld05$i;
    .locals 3

    iget v0, p0, Ld05$m;->c:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld05$i;

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ld05$i;->b()I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ld05$m;->p()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ld05$m;->b:Ld05;

    iget-object v2, v2, Ld05;->f:Ln03;

    invoke-virtual {v2, p2, v1}, Ln03;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ld05$i;->getNext()Ld05$i;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Ld05$m;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld05$m;->m()V

    :cond_0
    return-void
.end method

.method public final j(ILjava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ld05$m;->m()V

    iget v0, p0, Ld05$m;->c:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ld05$m;->e:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ld05$m;->d()V

    iget v0, p0, Ld05$m;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld05$i;

    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ld05$i;->b()I

    move-result v7

    if-ne v7, p1, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Ld05$m;->b:Ld05;

    iget-object v7, v7, Ld05;->f:Ln03;

    invoke-virtual {v7, p2, v6}, Ln03;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget p1, p0, Ld05$m;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld05$m;->d:I

    invoke-virtual {p0, v4, p4}, Ld05$m;->o(Ld05$i;Ljava/lang/Object;)V

    iget p1, p0, Ld05$m;->c:I

    iput p1, p0, Ld05$m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :try_start_1
    iget p2, p0, Ld05$m;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ld05$m;->d:I

    invoke-virtual {p0, v4, p4}, Ld05$m;->o(Ld05$i;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :try_start_2
    invoke-interface {v4}, Ld05$i;->getNext()Ld05$i;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget p3, p0, Ld05$m;->d:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Ld05$m;->d:I

    iget-object p3, p0, Ld05$m;->b:Ld05;

    iget-object p3, p3, Ld05;->g:Ld05$j;

    invoke-virtual {p0}, Ld05$m;->n()Ld05$m;

    move-result-object v4

    invoke-interface {p3, v4, p2, p1, v3}, Ld05$j;->d(Ld05$m;Ljava/lang/Object;ILd05$i;)Ld05$i;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Ld05$m;->o(Ld05$i;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, p0, Ld05$m;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final k(Ld05$i;Ld05$i;)Ld05$i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    iget v0, p0, Ld05$m;->c:I

    invoke-interface {p2}, Ld05$i;->getNext()Ld05$i;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    iget-object v2, p0, Ld05$m;->b:Ld05;

    iget-object v2, v2, Ld05;->g:Ld05$j;

    invoke-virtual {p0}, Ld05$m;->n()Ld05$m;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Ld05$j;->f(Ld05$m;Ld05$i;Ld05$i;)Ld05$i;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-interface {p1}, Ld05$i;->getNext()Ld05$i;

    move-result-object p1

    goto :goto_0

    :cond_1
    iput v0, p0, Ld05$m;->c:I

    return-object v1
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ld05$m;->g()V

    iget-object v0, p0, Ld05$m;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    return-void
.end method

.method public abstract n()Ld05$m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public final o(Ld05$i;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Ld05$m;->b:Ld05;

    iget-object v0, v0, Ld05;->g:Ld05$j;

    invoke-virtual {p0}, Ld05$m;->n()Ld05$m;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Ld05$j;->a(Ld05$m;Ld05$i;Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ld05$m;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    return-void
.end method
