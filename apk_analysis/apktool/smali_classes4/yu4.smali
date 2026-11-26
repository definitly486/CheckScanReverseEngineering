.class public final Lyu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljs;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# virtual methods
.method public call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    new-instance v0, Luec;

    iget-object v1, p0, Lyu4;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzui;

    invoke-direct {v0, v1}, Luec;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    sget-object v2, Ljn2;->INSTANCE:Ljn2;

    iget-object v3, p0, Lyu4;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3, v0, v2}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object v0

    iget-object v3, p0, Lyu4;->d:Ljava/lang/Object;

    check-cast v3, Lks;

    iget-object p0, p0, Lyu4;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {v0, v3, p0}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object p0

    new-instance v3, Lvec;

    invoke-direct {v3, v1, v0, p0}, Lvec;-><init>(Lcom/google/android/gms/internal/measurement/zzui;Lx1$a;Lx1$a;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object p0

    return-object p0
.end method
