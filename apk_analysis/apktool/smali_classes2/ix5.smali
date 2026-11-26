.class public final Lix5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lep2;
.implements Ljs;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lix5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lmk2;
    .locals 0

    iget-object p0, p0, Lix5;->b:Ljava/lang/Object;

    check-cast p0, Lnk2;

    return-object p0
.end method

.method public call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object p0, p0, Lix5;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzui;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Len3;->V(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzui;->a(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Len3;->X(Ljava/lang/Object;)Lu24;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lvl9;

    invoke-direct {v1, p0}, Lvl9;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->f:Lrz5;

    invoke-virtual {v2}, Lrz5;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Len3;->W(Ljava/lang/Exception;)Lu24$b;

    move-result-object p0

    goto :goto_1

    :cond_0
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/zzsg;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/measurement/zzsg;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lrz5;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zztf;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zztf;->zza(Ljava/io/IOException;Lcom/google/android/gms/internal/measurement/zztg;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lxec;

    invoke-direct {v1, p0}, Lxec;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzui;->d:Llp7;

    invoke-static {v0, v1, p0}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Len3;->W(Ljava/lang/Exception;)Lu24$b;

    move-result-object p0

    :goto_1
    return-object p0
.end method
