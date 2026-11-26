.class public final Lcom/google/android/gms/internal/measurement/zzvb;
.super Lcom/google/android/gms/internal/measurement/zztf;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzafc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzafc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zztf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->a:Lcom/google/android/gms/internal/measurement/zzafc;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/io/IOException;Lcom/google/android/gms/internal/measurement/zztg;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    if-nez v0, :cond_0

    invoke-static {p1}, Len3;->W(Ljava/lang/Exception;)Lu24$b;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->a:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-static {p0}, Len3;->X(Ljava/lang/Object;)Lu24;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/zztg;->zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance p2, Lsfc;

    invoke-direct {p2, p1}, Lsfc;-><init>(Ljava/io/IOException;)V

    sget-object p1, Ljn2;->INSTANCE:Ljn2;

    sget v0, Lp;->m:I

    new-instance v0, Lp$a;

    const-class v1, Ljava/io/IOException;

    invoke-direct {v0, p0, v1, p2}, Lp;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lnd5;->a(Ljava/util/concurrent/Executor;Lxh3$a;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
