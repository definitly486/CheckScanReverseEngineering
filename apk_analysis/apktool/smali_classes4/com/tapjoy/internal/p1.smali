.class public final Lcom/tapjoy/internal/p1;
.super Lcom/tapjoy/internal/e1;
.source "SourceFile"


# instance fields
.field public i:Ljava/util/List;

.field public final j:Lcom/tapjoy/internal/o1;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/o1;

    invoke-direct {v0}, Lcom/tapjoy/internal/o1;-><init>()V

    invoke-direct {p0}, Lcom/tapjoy/internal/e1;-><init>()V

    sget-object v1, Lkx2;->b:Lkx2;

    iput-object v1, p0, Lcom/tapjoy/internal/p1;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/tapjoy/internal/p1;->j:Lcom/tapjoy/internal/o1;

    return-void
.end method

.method public static final a(Lcom/tapjoy/TJPlacementRequestListener;Ljava/lang/Boolean;)V
    .locals 0

    .line 631
    invoke-interface {p0}, Lcom/tapjoy/TJPlacementRequestListener;->onCachingCompleted()V

    return-void
.end method

.method public static final a(Lcom/tapjoy/internal/s2;Lcom/tapjoy/TJOfferwallDiscoverRequestListener;)V
    .locals 2

    .line 628
    iget v0, p0, Lcom/tapjoy/internal/s2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 629
    invoke-interface {p1, p0}, Lcom/tapjoy/TJOfferwallDiscoverRequestListener;->onContentRequestSuccess(Lcom/tapjoy/internal/s2;)V

    return-void

    .line 630
    :cond_0
    new-instance p0, Lcom/tapjoy/TJError;

    const-string v1, "Unknown Error"

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/tapjoy/TJOfferwallDiscoverRequestListener;->onContentRequestFailure(Lcom/tapjoy/TJError;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2

    .line 626
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 627
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lcom/tapjoy/b0;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    iget-object v0, p0, Lcom/tapjoy/internal/p1;->j:Lcom/tapjoy/internal/o1;

    .line 633
    iput-object p1, v0, Lcom/tapjoy/internal/o1;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 634
    iput-boolean p1, v0, Lcom/tapjoy/internal/o1;->b:Z

    .line 635
    invoke-virtual {p0}, Lcom/tapjoy/internal/p1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tapjoy/internal/p1;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/p1;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    move-result-object p0

    .line 636
    new-instance p1, Lp01;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0, p2}, Lp01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/HashMap;Lcom/tapjoy/a0;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/tapjoy/internal/p1;->j:Lcom/tapjoy/internal/o1;

    iput-object p2, v0, Lcom/tapjoy/internal/o1;->a:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/tapjoy/internal/o1;->d:Z

    iput-object p4, v0, Lcom/tapjoy/internal/o1;->c:Ljava/lang/String;

    invoke-static {p5}, Lp05;->o(Ljava/util/Map;)Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    const/16 p5, 0xa

    invoke-static {p3, p5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p5

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lb36;

    new-instance v0, Lcom/tapjoy/internal/i1;

    iget-object v1, p5, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p5, Lb36;->c:Ljava/lang/Object;

    check-cast v2, Lb36;

    iget-object v2, v2, Lb36;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0x270f

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v2, p5, Lb36;->c:Ljava/lang/Object;

    check-cast v2, Lb36;

    iget-object v2, v2, Lb36;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    :goto_2
    iget-object p5, p5, Lb36;->c:Ljava/lang/Object;

    check-cast p5, Lb36;

    iget-object p5, p5, Lb36;->c:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, p5}, Lcom/tapjoy/internal/i1;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x0

    move v1, v0

    :cond_3
    :goto_3
    if-ge v1, p5, :cond_5

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    check-cast v3, Lcom/tapjoy/internal/i1;

    iget-object v4, v3, Lcom/tapjoy/internal/i1;->b:Ljava/lang/Integer;

    if-nez v4, :cond_4

    iget-object v3, v3, Lcom/tapjoy/internal/i1;->c:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    :cond_4
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iput-object p3, p0, Lcom/tapjoy/internal/p1;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tapjoy/internal/p1;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/tapjoy/internal/p1;->a()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p0}, Lcom/tapjoy/internal/p1;->b()Lorg/json/JSONObject;

    move-result-object p5

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p3, p5}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    move-result-object p3

    new-instance v1, Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/internal/p1;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p3, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/tapjoy/TJPlacementData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "x-tapjoy-prerender"

    invoke-virtual {p3, p0}, Lcom/tapjoy/internal/s2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_6

    invoke-virtual {v1, p2}, Lcom/tapjoy/TJPlacementData;->setPrerenderingRequested(Z)V

    :cond_6
    const-string p0, "X-Tapjoy-Debug"

    invoke-virtual {p3, p0}, Lcom/tapjoy/internal/s2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Tapjoy-Server-Debug: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    const-string p0, "x-tapjoy-handle-dismiss-on-pause"

    invoke-virtual {p3, p0}, Lcom/tapjoy/internal/s2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v1, p2}, Lcom/tapjoy/TJPlacementData;->setHandleDismissOnPause(Z)V

    :cond_7
    iget-wide p0, p3, Lcom/tapjoy/internal/s2;->e:J

    const-wide/16 p4, 0x0

    cmp-long v2, p0, p4

    if-lez v2, :cond_9

    iget-wide v2, p3, Lcom/tapjoy/internal/s2;->d:J

    cmp-long v4, v2, p4

    if-lez v4, :cond_8

    goto :goto_4

    :cond_8
    sget v2, Lcom/tapjoy/internal/u2;->d:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/tapjoy/internal/u2;->c:J

    add-long/2addr v2, v4

    :goto_4
    sub-long/2addr p0, v2

    cmp-long p4, p0, p4

    if-lez p4, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    add-long/2addr p4, p0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tapjoy/TJPlacementData;->setRequestExpiration(Ljava/lang/Long;)V

    goto :goto_5

    :cond_9
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tapjoy/TJPlacementData;->setRequestExpiration(Ljava/lang/Long;)V

    :cond_a
    :goto_5
    iget p0, p3, Lcom/tapjoy/internal/s2;->a:I

    if-eqz p0, :cond_12

    const/16 p1, 0xc8

    if-eq p0, p1, :cond_b

    iget-object p0, p6, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object p1, p6, Lcom/tapjoy/a0;->a:Lcom/tapjoy/TJPlacement;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    return-void

    :cond_b
    const-string p0, "Content-Type"

    invoke-virtual {p3, p0}, Lcom/tapjoy/internal/s2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "json"

    invoke-static {p0, p1, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "X-Tapjoy-Disable-Preload"

    invoke-virtual {p3, p0}, Lcom/tapjoy/internal/s2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    :try_start_0
    iget-object p0, p3, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;
    :try_end_0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_d

    :try_start_1
    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Disable preload flag is set for placement "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    iget-object p1, p3, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    if-nez p1, :cond_c

    const-string p1, "{}"

    goto :goto_6

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_c
    :goto_6
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "redirect_url"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tapjoy/TJPlacementData;->setRedirectURL(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/tapjoy/TJPlacementData;->setPreloadDisabled(Z)V

    invoke-virtual {v1, p2}, Lcom/tapjoy/TJPlacementData;->setHasProgressSpinner(Z)V

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "redirect_url:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p6, v1}, Lcom/tapjoy/a0;->onContentRequestSuccess(Lcom/tapjoy/TJPlacementData;)V

    iget-object p0, p6, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->a()V

    return-void

    :catch_1
    new-instance p0, Lcom/tapjoy/TapjoyException;

    const-string p1, "PlacementRequest request failed, malformed server response"

    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Lcom/tapjoy/TapjoyException;

    const-string p1, "PlacementRequest request failed due to null response"

    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lcom/tapjoy/TapjoyException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_7
    new-instance p1, Lcom/tapjoy/TJError;

    iget p2, p3, Lcom/tapjoy/internal/s2;->a:I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object p3

    const-string p4, " for placement "

    invoke-static {p0, p4, p3}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    iget-object p0, p6, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object p2, p6, Lcom/tapjoy/a0;->a:Lcom/tapjoy/TJPlacement;

    invoke-virtual {p0, p2, p1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    goto/16 :goto_9

    :cond_e
    invoke-virtual {p6, v1}, Lcom/tapjoy/a0;->onContentRequestSuccess(Lcom/tapjoy/TJPlacementData;)V

    const-string p0, "x-tapjoy-cacheable-assets"

    invoke-virtual {p3, p0}, Lcom/tapjoy/internal/s2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_3
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->canCachePlacement()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Placement caching limit reached. No content will be cached for placement "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/tapjoy/a0;->onCachingCompleted()V

    sget-object p0, Lj59;->a:Lj59;

    return-void

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :cond_f
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_10

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Begin caching content for placement "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->incrementPlacementCacheCount()V

    invoke-virtual {v1, p2}, Lcom/tapjoy/TJPlacementData;->setDidIncrementCache(Z)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_11

    new-instance p2, Lcom/tapjoy/TapjoyCache;

    invoke-direct {p2, p0}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    new-instance p0, Lup0;

    const/4 p3, 0x6

    invoke-direct {p0, p6, p3}, Lup0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1, p0}, Lcom/tapjoy/TapjoyCache;->cacheUrlGroup(Lorg/json/JSONArray;Lcom/tapjoy/TJTaskHandler;)V

    sget-object p0, Lj59;->a:Lj59;

    return-void

    :cond_10
    invoke-virtual {p6}, Lcom/tapjoy/a0;->onCachingCompleted()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :goto_8
    invoke-virtual {p6}, Lcom/tapjoy/a0;->onCachingCompleted()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Error while handling placement cache: "

    invoke-static {p1, p0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    :cond_11
    :goto_9
    return-void

    :cond_12
    iget-object p1, p3, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    if-nez p1, :cond_13

    const-string p1, "network error"

    :cond_13
    new-instance p2, Lcom/tapjoy/TJError;

    invoke-direct {p2, p0, p1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    iget-object p0, p6, Lcom/tapjoy/a0;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object p1, p6, Lcom/tapjoy/a0;->a:Lcom/tapjoy/TJPlacement;

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 6

    invoke-super {p0}, Lcom/tapjoy/internal/e1;->b()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/p1;->j:Lcom/tapjoy/internal/o1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, v1, Lcom/tapjoy/internal/o1;->a:Ljava/lang/String;

    const-string v4, "name"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/tapjoy/internal/o1;->c:Ljava/lang/String;

    const-string v4, "entry_point"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v3, v1, Lcom/tapjoy/internal/o1;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "system_placement"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, v1, Lcom/tapjoy/internal/o1;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "offerwall_discover"

    invoke-static {v2, v3, v1}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "placement"

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/tapjoy/internal/p1;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/i1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, v2, Lcom/tapjoy/internal/i1;->a:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, v2, Lcom/tapjoy/internal/i1;->b:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "balance"

    invoke-static {v3, v5, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v2, Lcom/tapjoy/internal/i1;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "amount_required"

    invoke-static {v3, v4, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    const-string p0, "currencies"

    invoke-static {v0, p0, v1}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "retry"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object p0

    const-string v0, "v2/content?"

    invoke-static {p0, v0}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
