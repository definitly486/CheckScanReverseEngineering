.class public final Lsq1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lfu1;

.field public final d:Lmq1;

.field public final synthetic e:Lsq1;


# direct methods
.method public constructor <init>(Lsq1;Ljava/util/concurrent/atomic/AtomicBoolean;Lfu1;Lmq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsq1$a;->e:Lsq1;

    iput-object p2, p0, Lsq1$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lsq1$a;->c:Lfu1;

    iput-object p4, p0, Lsq1$a;->d:Lmq1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lsq1$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsq1$a;->c:Lfu1;

    invoke-virtual {v0}, Lfu1;->d()V

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    iget-object v1, p0, Lsq1$a;->e:Lsq1;

    iget-wide v2, v1, Lsq1;->c:J

    iget-object v1, v1, Lsq1;->d:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v1}, Lk13;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lsq1$a;->d:Lmq1;

    invoke-interface {p0, v0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
