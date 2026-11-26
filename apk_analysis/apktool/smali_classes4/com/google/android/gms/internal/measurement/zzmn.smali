.class public final Lcom/google/android/gms/internal/measurement/zzmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmj;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzkk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzkk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmn;->a:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method public static a(Lcom/google/android/gms/tasks/Task;)Lp$a;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget-object v0, Ljn2;->INSTANCE:Ljn2;

    sget v1, Lp;->m:I

    new-instance v1, Lp$a;

    const-class v2, Lcom/google/android/gms/common/api/ApiException;

    sget-object v3, Lb5c;->a:Lb5c;

    invoke-direct {v1, p0, v2, v3}, Lp;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lnd5;->a(Ljava/util/concurrent/Executor;Lxh3$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmn;->a:Lcom/google/android/gms/internal/measurement/zzkk;

    const/4 p2, 0x0

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    sget-object p1, Ljn2;->INSTANCE:Ljn2;

    new-instance p2, Li79;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Li79;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzmn;->a(Lcom/google/android/gms/tasks/Task;)Lp$a;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmn;->a:Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzmn;->a(Lcom/google/android/gms/tasks/Task;)Lp$a;

    move-result-object p0

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzme;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmn;->a:Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(Lcom/google/android/gms/internal/measurement/zzme;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzmn;->a(Lcom/google/android/gms/tasks/Task;)Lp$a;

    move-result-object p0

    return-object p0
.end method

.method public final zzd()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmn;->a:Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zze()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzmn;->a(Lcom/google/android/gms/tasks/Task;)Lp$a;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/measurement/zzpm;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmn;->a:Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzf(Lcom/google/android/gms/internal/measurement/zzpm;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzmn;->a(Lcom/google/android/gms/tasks/Task;)Lp$a;

    move-result-object p0

    return-object p0
.end method
