.class public Lcom/tapjoy/TJPlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tapjoy/TJCorePlacement;

.field public final b:Lcom/tapjoy/TJPlacementListener;

.field public final c:Ljava/lang/String;

.field public d:Lcom/tapjoy/TJEntryPoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJEntryPoint;

    invoke-static {p2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Z)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCorePlacement;->setContext(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementListener;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJEntryPoint;

    .line 37
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    .line 38
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementListener;

    return-void
.end method

.method public static dismissContent()V
    .locals 2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    const-string v1, "TJC_OPTION_DISMISS_CONTENT_ALL"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrencyAmountRequired(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {v0}, Lcom/tapjoy/TJCurrencyParameters;->getCurrencyIdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCurrencyParameters;->getCurrencyAmountRequired(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrencyBalance(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {v0}, Lcom/tapjoy/TJCurrencyParameters;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {v0}, Lcom/tapjoy/TJCurrencyParameters;->getCurrencyIdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCurrencyParameters;->getCurrencyBalance(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getEntryPoint()Lcom/tapjoy/TJEntryPoint;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJEntryPoint;

    return-object p0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getListener()Lcom/tapjoy/TJPlacementListener;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementListener;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public isContentAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result p0

    return p0
.end method

.method public isContentReady()Z
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->isContentReady()Z

    move-result p0

    return p0
.end method

.method public requestContent()V
    .locals 9

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestContent() called for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TJPrivacyPolicy;->getUserConsent()Lcom/tapjoy/TJStatus;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    if-ne v1, v2, :cond_0

    const-string v1, "[INFO] Your application calls requestContent without having previously called setUserConsent. You can review Tapjoy supported consent API here - https://dev.tapjoy.com/sdk-integration/#sdk11122_gdpr_release."

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "SDK not connected -- connect must be called first with a successful callback"

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v1, p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v1}, Lcom/tapjoy/TJCorePlacement;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    sget-object v3, Lcom/tapjoy/internal/i;->a:Landroid/content/Context;

    if-nez v3, :cond_3

    sget-object v3, Lcom/tapjoy/internal/i;->c:Lcom/tapjoy/internal/v2;

    iget-object v3, v3, Lcom/tapjoy/internal/v2;->a:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Landroid/content/Context;

    :cond_3
    invoke-virtual {v1, v3}, Lcom/tapjoy/TJCorePlacement;->setContext(Landroid/content/Context;)V

    :cond_4
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v1}, Lcom/tapjoy/TJCorePlacement;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "Context is null -- TJPlacement requires a valid Context."

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v1, p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    return-void

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "Invalid placement name -- TJPlacement requires a valid placement name."

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v1, p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    const-string v1, "REQUEST"

    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    iget-object v1, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const-wide/16 v3, 0x0

    if-nez v1, :cond_7

    move-wide v5, v3

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getRequestExpiration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    :goto_1
    cmp-long v1, v5, v3

    if-lez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Content has not expired yet for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/tapjoy/TJCorePlacement;->m:Z

    if-eqz v1, :cond_8

    iput-boolean v2, v0, Lcom/tapjoy/TJCorePlacement;->l:Z

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->a()V

    return-void

    :cond_8
    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->b()V

    return-void
.end method

.method public setCurrencyAmountRequired(Ljava/lang/String;ILcom/tapjoy/TJSetCurrencyAmountRequiredListener;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {v0}, Lcom/tapjoy/TJCurrencyParameters;->getCurrencyIdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJCurrencyParameters;->saveCurrencyAmountRequired(Ljava/lang/String;I)V

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/tapjoy/TJSetCurrencyAmountRequiredListener;->onSetCurrencyAmountRequiredSuccess()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    const-string p0, "Currency id is null or empty"

    invoke-interface {p3, v0, p0}, Lcom/tapjoy/TJSetCurrencyAmountRequiredListener;->onSetCurrencyAmountRequiredFailure(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {p0}, Lcom/tapjoy/TJCurrencyParameters;->getCurrencyIdList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p3, :cond_2

    const-string p0, "Invalid currency id"

    invoke-interface {p3, v0, p0}, Lcom/tapjoy/TJSetCurrencyAmountRequiredListener;->onSetCurrencyAmountRequiredFailure(ILjava/lang/String;)V

    return-void

    :cond_2
    if-gtz p2, :cond_3

    if-eqz p3, :cond_3

    const-string p0, "Amount is negative or zero"

    invoke-interface {p3, v0, p0}, Lcom/tapjoy/TJSetCurrencyAmountRequiredListener;->onSetCurrencyAmountRequiredFailure(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setCurrencyBalance(Ljava/lang/String;ILcom/tapjoy/TJSetCurrencyBalanceListener;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {v0}, Lcom/tapjoy/TJCurrencyParameters;->getCurrencyIdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {v0}, Lcom/tapjoy/TJCurrencyParameters;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {v0}, Lcom/tapjoy/TJCurrencyParameters;->getAllowCurrencySetBalance()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-ltz p2, :cond_1

    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJCurrencyParameters;->saveCurrencyBalance(Ljava/lang/String;I)V

    if-eqz p3, :cond_5

    invoke-interface {p3}, Lcom/tapjoy/TJSetCurrencyBalanceListener;->onSetCurrencyBalanceSuccess()V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    const-string p0, "Currency id is null or empty"

    invoke-interface {p3, v0, p0}, Lcom/tapjoy/TJSetCurrencyBalanceListener;->onSetCurrencyBalanceFailure(ILjava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, v1, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {v1}, Lcom/tapjoy/TJCurrencyParameters;->getCurrencyIdList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    const-string p0, "Invalid currency id"

    invoke-interface {p3, v0, p0}, Lcom/tapjoy/TJSetCurrencyBalanceListener;->onSetCurrencyBalanceFailure(ILjava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object p1, p1, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {p1}, Lcom/tapjoy/TJCurrencyParameters;->isSelfManaged()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    invoke-virtual {p0}, Lcom/tapjoy/TJCurrencyParameters;->getAllowCurrencySetBalance()Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz p3, :cond_4

    const-string p0, "App uses Tapjoy managed currencies"

    invoke-interface {p3, v0, p0}, Lcom/tapjoy/TJSetCurrencyBalanceListener;->onSetCurrencyBalanceFailure(ILjava/lang/String;)V

    return-void

    :cond_4
    if-gez p2, :cond_5

    if-eqz p3, :cond_5

    const-string p0, "Balance is negative"

    invoke-interface {p3, v0, p0}, Lcom/tapjoy/TJSetCurrencyBalanceListener;->onSetCurrencyBalanceFailure(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public setEntryPoint(Lcom/tapjoy/TJEntryPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJEntryPoint;

    return-void
.end method

.method public showContent()V
    .locals 3

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showContent() called for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "No placement content available. Can not show content for non-200 placement."

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->c(Lcom/tapjoy/TJPlacement;)V

    return-void
.end method
