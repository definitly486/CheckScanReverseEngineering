.class public final Lhfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzth;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zztp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zztp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfc;->a:Lcom/google/android/gms/internal/measurement/zztp;

    return-void
.end method


# virtual methods
.method public final zza(Lks;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lhfc;->a:Lcom/google/android/gms/internal/measurement/zztp;

    iget-object v0, v0, Lifc;->e:Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzvm;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Len3;->Y(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lgfc;

    invoke-direct {v1, p0, p1, p2}, Lgfc;-><init>(Lhfc;Lks;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object p0

    sget-object p1, Ljn2;->INSTANCE:Ljn2;

    invoke-static {v0, p0, p1}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzuy;->zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
