.class public final Lm93$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv48;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lm93;

.field public c:J

.field public d:Z


# direct methods
.method public constructor <init>(Lm93;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm93$b;->b:Lm93;

    iput-wide p2, p0, Lm93$b;->c:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lm93$b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm93$b;->d:Z

    iget-object p0, p0, Lm93$b;->b:Lm93;

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

.method public final r()Lwv8;
    .locals 0

    sget-object p0, Lwv8;->d:Lwv8$a;

    return-object p0
.end method

.method public final t0(Lbu0;J)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v0, Lm93$b;->d:Z

    const-wide/16 v5, 0x0

    if-nez v4, :cond_6

    iget-wide v7, v0, Lm93$b;->c:J

    cmp-long v4, v2, v5

    if-ltz v4, :cond_5

    add-long/2addr v2, v7

    move-wide v12, v7

    :goto_0
    cmp-long v4, v12, v2

    if-gez v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lbu0;->y0(I)Lgl7;

    move-result-object v4

    iget-object v14, v4, Lgl7;->a:[B

    iget v10, v4, Lgl7;->c:I

    const-wide/16 p2, -0x1

    sub-long v5, v2, v12

    rsub-int v9, v10, 0x2000

    move-wide v15, v2

    int-to-long v2, v9

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v11, v2

    iget-object v9, v0, Lm93$b;->b:Lm93;

    invoke-virtual/range {v9 .. v14}, Lm93;->o(IIJ[B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget v2, v4, Lgl7;->b:I

    iget v3, v4, Lgl7;->c:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v4}, Lgl7;->a()Lgl7;

    move-result-object v2

    iput-object v2, v1, Lbu0;->b:Lgl7;

    invoke-static {v4}, Lil7;->a(Lgl7;)V

    :cond_0
    cmp-long v1, v7, v12

    if-nez v1, :cond_3

    move-wide/from16 v12, p2

    goto :goto_1

    :cond_1
    iget v3, v4, Lgl7;->c:I

    add-int/2addr v3, v2

    iput v3, v4, Lgl7;->c:I

    int-to-long v2, v2

    add-long/2addr v12, v2

    iget-wide v4, v1, Lbu0;->c:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lbu0;->c:J

    move-wide v2, v15

    goto :goto_0

    :cond_2
    const-wide/16 p2, -0x1

    :cond_3
    sub-long/2addr v12, v7

    :goto_1
    cmp-long v1, v12, p2

    if-eqz v1, :cond_4

    iget-wide v1, v0, Lm93$b;->c:J

    add-long/2addr v1, v12

    iput-wide v1, v0, Lm93$b;->c:J

    :cond_4
    return-wide v12

    :cond_5
    const-string v0, "byteCount < 0: "

    invoke-static {v2, v3, v0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc9;->f(Ljava/lang/Object;)V

    return-wide v5

    :cond_6
    const-string v0, "closed"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-wide v5
.end method
