.class public final Lcom/google/android/gms/internal/measurement/zzuy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    new-instance v0, Lsm3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ljn2;->INSTANCE:Ljn2;

    sget v2, Lx1;->l:I

    new-instance v2, Lx1$b;

    invoke-direct {v2, p0, v0}, Lx1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lnd5;->a(Ljava/util/concurrent/Executor;Lxh3$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method
