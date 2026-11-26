.class public Lwv8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lwv8$a;


# instance fields
.field public a:Z

.field public b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwv8$a;

    invoke-direct {v0}, Lwv8;-><init>()V

    sput-object v0, Lwv8;->d:Lwv8$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lwv8;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwv8;->a:Z

    return-object p0
.end method

.method public b()Lwv8;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lwv8;->c:J

    return-object p0
.end method

.method public c()J
    .locals 2

    iget-boolean v0, p0, Lwv8;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lwv8;->b:J

    return-wide v0

    :cond_0
    const-string p0, "No deadline"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d(J)Lwv8;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwv8;->a:Z

    iput-wide p1, p0, Lwv8;->b:J

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lwv8;->a:Z

    return p0
.end method

.method public f()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lwv8;->a:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lwv8;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "deadline reached"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "interrupted"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(J)Lwv8;
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lwv8;->c:J

    return-object p0

    :cond_0
    const-string p0, "timeout < 0: "

    invoke-static {p1, p2, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
