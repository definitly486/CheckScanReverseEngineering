.class public final Lcom/google/android/gms/internal/measurement/zzlb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    new-instance p1, Ld1c;

    invoke-direct {p1}, Ll0;-><init>()V

    iput-object p0, p1, Ld1c;->i:Lcom/google/android/gms/tasks/Task;

    sget-object v0, Ljn2;->INSTANCE:Ljn2;

    new-instance v1, Lq1c;

    invoke-direct {v1, p1}, Lq1c;-><init>(Ld1c;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method
