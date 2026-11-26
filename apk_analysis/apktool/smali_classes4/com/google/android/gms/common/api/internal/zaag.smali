.class public final Lcom/google/android/gms/common/api/internal/zaag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zaba;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/zabd;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaag;->a:Lcom/google/android/gms/common/api/internal/zabd;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 0

    return-void
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zaag;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    return-object p1
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->a:Lcom/google/android/gms/common/api/internal/zabd;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zabd;->w:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zaaz;->y:Lcom/google/android/gms/common/api/internal/zact;

    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/zact;->a:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zact;->b:Lpka;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan(Lpka;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->p:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$Client;

    const-string v2, "Appropriate Api was not requested."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zabd;->p:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->run(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v1, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/a;-><init>(Lcom/google/android/gms/common/api/internal/zaag;Lcom/google/android/gms/common/api/internal/zaag;)V

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zabd;->n:Lqja;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object p1
.end method

.method public final zad()Z
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->b:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->a:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zabd;->w:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->x:Ljava/util/HashSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iput-boolean v3, p0, Lcom/google/android/gms/common/api/internal/zaag;->b:Z

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacr;

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zacr;->c:Lcom/google/android/gms/common/api/ResultCallbacks;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/zabd;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return v3
.end method

.method public final zae()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->b:Z

    new-instance v0, Lwia;

    invoke-direct {v0, p0, p0}, Lwia;-><init>(Lcom/google/android/gms/common/api/internal/zaag;Lcom/google/android/gms/common/api/internal/zaag;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaag;->a:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabd;->n:Lqja;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final zaf(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zag(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0

    return-void
.end method

.method public final zah(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->a:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zabd;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/zaag;->b:Z

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/zabd;->x:Lcom/google/android/gms/common/api/internal/zabt;

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/common/api/internal/zabt;->zac(IZ)V

    return-void
.end method
