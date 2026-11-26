.class public final Lm93$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls18;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lm93;

.field public c:J

.field public d:Z


# direct methods
.method public constructor <init>(Lm93;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm93$a;->b:Lm93;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm93$a;->c:J

    return-void
.end method


# virtual methods
.method public final H(Lbu0;J)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lm93$a;->d:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lm93$a;->c:J

    iget-object v2, p0, Lm93$a;->b:Lm93;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p1, Lbu0;->c:J

    const-wide/16 v5, 0x0

    move-wide v7, p2

    invoke-static/range {v3 .. v8}, Lh;->b(JJJ)V

    add-long v8, v0, p2

    move-wide v5, v0

    :cond_0
    :goto_0
    cmp-long v0, v5, v8

    if-gez v0, :cond_1

    iget-object v0, p1, Lbu0;->b:Lgl7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-long v3, v8, v5

    iget v1, v0, Lgl7;->c:I

    iget v7, v0, Lgl7;->b:I

    sub-int/2addr v1, v7

    int-to-long v10, v1

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v7, v0, Lgl7;->a:[B

    iget v3, v0, Lgl7;->b:I

    invoke-virtual/range {v2 .. v7}, Lm93;->v(IIJ[B)V

    iget v1, v0, Lgl7;->b:I

    add-int/2addr v1, v4

    iput v1, v0, Lgl7;->b:I

    int-to-long v3, v4

    add-long/2addr v5, v3

    iget-wide v10, p1, Lbu0;->c:J

    sub-long/2addr v10, v3

    iput-wide v10, p1, Lbu0;->c:J

    iget v3, v0, Lgl7;->c:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lgl7;->a()Lgl7;

    move-result-object v1

    iput-object v1, p1, Lbu0;->b:Lgl7;

    invoke-static {v0}, Lil7;->a(Lgl7;)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lm93$a;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lm93$a;->c:J

    return-void

    :cond_2
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lm93$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm93$a;->d:Z

    iget-object p0, p0, Lm93$a;->b:Lm93;

    iget-object v0, p0, Lm93;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Lm93;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lm93;->d:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lm93;->c:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lm93;->m()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Lm93$a;->d:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lm93$a;->b:Lm93;

    invoke-virtual {p0}, Lm93;->n()V

    return-void

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final r()Lwv8;
    .locals 0

    sget-object p0, Lwv8;->d:Lwv8$a;

    return-object p0
.end method
