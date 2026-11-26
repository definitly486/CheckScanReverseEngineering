.class public final Lbja;
.super Ljz1;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/HashMap;

.field public final synthetic e:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/HashMap;)V
    .locals 1

    iput-object p1, p0, Lbja;->e:Lcom/google/android/gms/common/api/internal/zaar;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljz1;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lbja;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/common/internal/zaq;

    iget-object v1, p0, Lbja;->e:Lcom/google/android/gms/common/api/internal/zaar;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zaar;->d:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iget-object v3, v1, Lcom/google/android/gms/common/api/internal/zaar;->a:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/zaar;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/internal/zaq;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lbja;->d:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v8}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyia;

    iget-boolean v9, v9, Lyia;->c:Z

    if-nez v9, :cond_0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_2
    if-ge v8, v2, :cond_5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/Api$Client;

    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/common/internal/zaq;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    if-nez v9, :cond_2

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_4
    if-ge v8, v5, :cond_5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/Api$Client;

    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/common/internal/zaq;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    if-eqz v9, :cond_4

    :cond_5
    :goto_1
    const/4 v2, 0x1

    if-eqz v9, :cond_6

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v4, 0x0

    invoke-direct {v0, v9, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    new-instance v4, Lzia;

    invoke-direct {v4, p0, v1, v0}, Lzia;-><init>(Lbja;Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, v3, Lcom/google/android/gms/common/api/internal/zabd;->n:Lqja;

    invoke-virtual {p0, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_6
    iget-boolean v5, v1, Lcom/google/android/gms/common/api/internal/zaar;->m:Z

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/google/android/gms/common/api/internal/zaar;->k:Lcom/google/android/gms/signin/zae;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/google/android/gms/signin/zae;->zad()V

    :cond_7
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/Api$Client;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {v7}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/common/internal/zaq;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v9

    if-eqz v9, :cond_8

    new-instance v7, Laja;

    invoke-direct {v7, p0, v1, v8}, Laja;-><init>(Lbja;Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    iget-object v8, v3, Lcom/google/android/gms/common/api/internal/zabd;->n:Lqja;

    invoke-virtual {v8, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v7, v8}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    goto :goto_2

    :cond_9
    return-void
.end method
