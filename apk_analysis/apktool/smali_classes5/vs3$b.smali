.class public final Lvs3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyt7$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvs3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyt7$c<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final create()Ljava/lang/Object;
    .locals 0

    const-string p0, "grpc-default-executor-%d"

    invoke-static {p0}, Lvs3;->d(Ljava/lang/String;)Lmt8;

    move-result-object p0

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "grpc-default-executor"

    return-object p0
.end method
