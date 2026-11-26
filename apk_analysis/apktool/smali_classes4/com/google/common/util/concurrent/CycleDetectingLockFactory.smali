.class public final Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lc05;

    invoke-direct {v0}, Lc05;-><init>()V

    sget-object v1, Ld05$o;->WEAK:Ld05$o;

    iget-object v2, v0, Lc05;->d:Ld05$o;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "Key strength was already set to %s"

    invoke-static {v5, v4, v2}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lc05;->d:Ld05$o;

    sget-object v2, Ld05$o;->STRONG:Ld05$o;

    if-eq v1, v2, :cond_1

    iput-boolean v3, v0, Lc05;->a:Z

    :cond_1
    invoke-virtual {v0}, Lc05;->a()Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method
