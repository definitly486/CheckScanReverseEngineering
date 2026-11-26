.class public final Lcom/google/android/gms/common/internal/CallbackExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lypb;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
