.class public final synthetic Lafc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljs;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafc;->b:Lcom/google/android/gms/internal/measurement/zzui;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object p0, p0, Lafc;->b:Lcom/google/android/gms/internal/measurement/zzui;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lzec;

    invoke-direct {v0, p0}, Lzec;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzui;->d:Llp7;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzui;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0, v0, v1}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object p0

    invoke-static {p0}, Len3;->Y(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
