.class public final Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic ThreadLocal$annotations()V
    .locals 0

    return-void
.end method

.method public static final asContextElement(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lo22$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ThreadLocal<",
            "TT;>;TT;)",
            "Lo22$a;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lot8;

    invoke-direct {v0, p0, p1}, Lot8;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final currentThreadId()J
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method
