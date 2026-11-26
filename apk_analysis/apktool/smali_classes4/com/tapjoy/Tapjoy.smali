.class public final Lcom/tapjoy/Tapjoy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionComplete(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static addUserTag(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJUser;->setUserTags(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "awardCurrency"

    invoke-static {v1}, Lcom/tapjoy/internal/f2;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tapjoy/internal/f2;->b:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/TJCurrency;->awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "Tapjoy SDK is not connected"

    invoke-interface {p1, p0}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponseFailure(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static clearUserTags()V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJUser;->setUserTags(Ljava/util/Set;)V

    return-void
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 22
    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 24
    iput v1, v0, Lcom/tapjoy/internal/h2;->e:I

    .line 25
    iget-object v0, v0, Lcom/tapjoy/internal/h2;->f:Lcom/tapjoy/internal/g2;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/tapjoy/internal/p2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p0

    return p0
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    const/4 v1, 0x0

    .line 20
    iput v1, v0, Lcom/tapjoy/internal/h2;->e:I

    .line 21
    iget-object v0, v0, Lcom/tapjoy/internal/h2;->f:Lcom/tapjoy/internal/g2;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/tapjoy/internal/p2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    const-class v0, Lcom/tapjoy/Tapjoy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    const/4 v2, 0x0

    iput v2, v1, Lcom/tapjoy/internal/h2;->e:I

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->f:Lcom/tapjoy/internal/g2;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/tapjoy/internal/p2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static endSession()V
    .locals 3

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "endSession"

    invoke-static {v1}, Lcom/tapjoy/internal/f2;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/c;->a()V

    iget-object v1, v0, Lcom/tapjoy/internal/f2;->c:Lcom/tapjoy/TJSession;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJSession;->setSemiAutoSessionTrackingStarted(Z)V

    iget-object v0, v0, Lcom/tapjoy/internal/f2;->c:Lcom/tapjoy/TJSession;

    invoke-virtual {v0}, Lcom/tapjoy/TJSession;->endSession()V

    :cond_0
    return-void
.end method

.method public static getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "getCurrencyBalance"

    invoke-static {v1}, Lcom/tapjoy/internal/f2;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tapjoy/internal/f2;->b:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCurrency;->getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "Tapjoy SDK is not connected"

    invoke-interface {p0, v0}, Lcom/tapjoy/TJGetCurrencyBalanceListener;->onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getCustomParameter()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getCustomParameter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggingLevel()Lcom/tapjoy/TJLogLevel;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TapjoyLog;->getLoggingLevel()Lcom/tapjoy/TJLogLevel;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxLevel()I
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserMaxLevel()I

    move-result v0

    return v0
.end method

.method public static getOptOutAdvertisingID(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJTracking;->getOptOutAdvertisingID(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/w2;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Z)Lcom/tapjoy/TJCorePlacement;

    move-result-object p0

    new-instance v1, Lcom/tapjoy/TJPlacement;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TJPlacement;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPrivacyPolicy()Lcom/tapjoy/TJPrivacyPolicy;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public static getSupportURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    const-string p0, ""

    return-object p0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserLevel()I
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserLevel()I

    move-result v0

    return v0
.end method

.method public static getUserRevenue(Lcom/tapjoy/TJGetUserRevenueListener;)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/f2;->a(Lcom/tapjoy/TJGetUserRevenueListener;)V

    return-void
.end method

.method public static getUserSegment()Lcom/tapjoy/TJSegment;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserSegment()Lcom/tapjoy/TJSegment;

    move-result-object v0

    return-object v0
.end method

.method public static getUserTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserTags()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "14.8.0"

    return-object v0
.end method

.method public static isConnected()Z
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static loadSharedLibrary()V
    .locals 1

    :try_start_0
    const-string v0, "tapjoy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static onActivityStart(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/b2;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/b2;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onActivityStop(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/c2;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/c2;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static optOutAdvertisingID(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/TJTracking;->optOutAdvertisingID(Landroid/content/Context;Z)V

    return-void
.end method

.method public static removeUserTag(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJUser;->setUserTags(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setCustomParameter(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TapjoyConnectCore;->setCustomParameter(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    return-void
.end method

.method public static setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    iget-object v1, v0, Lcom/tapjoy/internal/f2;->b:Lcom/tapjoy/TJCurrency;

    if-eqz v1, :cond_0

    const-string v1, "setEarnedCurrencyListener"

    invoke-static {v1}, Lcom/tapjoy/internal/f2;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tapjoy/internal/f2;->b:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCurrency;->setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    :cond_0
    return-void
.end method

.method public static setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setLoggingLevel(Lcom/tapjoy/TJLogLevel;)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->INSTANCE:Lcom/tapjoy/TapjoyAppSettings;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyAppSettings;->getLoggingLevel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyLog;->setLoggingLevel(Lcom/tapjoy/TJLogLevel;Z)V

    return-void

    :cond_0
    const-string p0, "Server-side logging enabled. Cannot override."

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static setMaxLevel(I)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJUser;->setUserMaxLevel(I)V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/f2;->b(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    return-void
.end method

.method public static setUserLevel(I)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJUser;->setUserLevel(I)V

    return-void
.end method

.method public static setUserSegment(Lcom/tapjoy/TJSegment;)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJUser;->setUserSegment(Lcom/tapjoy/TJSegment;)V

    return-void
.end method

.method public static setUserTags(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJUser;->setUserTags(Ljava/util/Set;)V

    return-void
.end method

.method public static spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "spendCurrency"

    invoke-static {v1}, Lcom/tapjoy/internal/f2;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tapjoy/internal/f2;->b:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/TJCurrency;->spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "Tapjoy SDK is not connected"

    invoke-interface {p1, p0}, Lcom/tapjoy/TJSpendCurrencyListener;->onSpendCurrencyResponseFailure(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static startSession()V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "startSession"

    invoke-static {v1}, Lcom/tapjoy/internal/f2;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/c;->a()V

    iget-object v0, v0, Lcom/tapjoy/internal/f2;->c:Lcom/tapjoy/TJSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJSession;->initSession()V

    :cond_0
    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;D)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/TJPurchases;->INSTANCE:Lcom/tapjoy/TJPurchases;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/TJPurchases;->trackPurchase(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    sget-object p0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    sget-object p0, Lcom/tapjoy/TJPurchases;->INSTANCE:Lcom/tapjoy/TJPurchases;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJPurchases;->trackPurchase(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    return-void
.end method
