.class public final Li1a;
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

    new-instance v0, Lefc;

    iget-object v1, p0, Li1a;->b:Ljava/lang/Object;

    check-cast v1, Lifc;

    iget-object v2, p0, Li1a;->d:Ljava/lang/Object;

    check-cast v2, Lks;

    iget-object v3, p0, Li1a;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Lefc;-><init>(Lifc;Lks;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object v0

    sget-object v1, Ljn2;->INSTANCE:Ljn2;

    iget-object p0, p0, Li1a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0, v0, v1}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object p0

    return-object p0
.end method
