.class public Lcom/tapjoy/TJCurrency;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lcom/tapjoy/TJEarnedCurrencyListener;

.field public final c:Landroid/content/SharedPreferences;

.field public final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCurrency;->d:Ljava/util/concurrent/ExecutorService;

    const-string v0, "tjcPrefrences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJCurrency;->c:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final synthetic a(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 2

    .line 36
    new-instance v0, Lcom/tapjoy/internal/d1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/d1;-><init>(Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/tapjoy/TJCurrency;->c:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/tapjoy/TJVerifier;->INSTANCE:Lcom/tapjoy/TJVerifier;

    invoke-virtual {v1, p1}, Lcom/tapjoy/TJVerifier;->getTapjoyAwardCurrencyVerifierAndTimeStampParams(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/tapjoy/internal/d1;->a(Lcom/tapjoy/TJAwardCurrencyListener;Landroid/content/SharedPreferences;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final synthetic a(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/tapjoy/internal/w1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/w1;-><init>(Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/tapjoy/TJCurrency;->c:Landroid/content/SharedPreferences;

    invoke-virtual {v0, p2, p0}, Lcom/tapjoy/internal/w1;->a(Lcom/tapjoy/TJSpendCurrencyListener;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public final synthetic a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .locals 2

    .line 34
    new-instance v0, Lcom/tapjoy/internal/l1;

    invoke-direct {v0}, Lcom/tapjoy/internal/l1;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TJCurrency;->b:Lcom/tapjoy/TJEarnedCurrencyListener;

    iget-object p0, p0, Lcom/tapjoy/TJCurrency;->c:Landroid/content/SharedPreferences;

    invoke-virtual {v0, p1, v1, p0}, Lcom/tapjoy/internal/l1;->a(Lcom/tapjoy/TJGetCurrencyBalanceListener;Lcom/tapjoy/TJEarnedCurrencyListener;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/TJCurrency;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJCurrency;->c:Landroid/content/SharedPreferences;

    const-string v1, "self_managed"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCurrency;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCurrency;->a:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 2

    if-gez p1, :cond_0

    const-string p0, "Amount must be a positive number for the awardCurrency API"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponseFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TJCurrency;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "awardCurrency is not supported with self managed currency"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponseFailure(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJCurrency;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ll11;

    invoke-direct {v1, p0, p1, p2}, Ll11;-><init>(Lcom/tapjoy/TJCurrency;ILcom/tapjoy/TJAwardCurrencyListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/tapjoy/TJCurrency;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "getCurrencyBalance is not supported with self managed currency"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/tapjoy/TJGetCurrencyBalanceListener;->onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJCurrency;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lk11;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lk11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJCurrency;->b:Lcom/tapjoy/TJEarnedCurrencyListener;

    return-void
.end method

.method public spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 2

    if-gez p1, :cond_0

    const-string p0, "Amount must be a positive number for the spendCurrency API"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/tapjoy/TJSpendCurrencyListener;->onSpendCurrencyResponseFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TJCurrency;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "spendCurrency is not supported with self managed currency"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/tapjoy/TJSpendCurrencyListener;->onSpendCurrencyResponseFailure(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJCurrency;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lwh8;

    invoke-direct {v1, p0, p1, p2}, Lwh8;-><init>(Lcom/tapjoy/TJCurrency;ILcom/tapjoy/TJSpendCurrencyListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
