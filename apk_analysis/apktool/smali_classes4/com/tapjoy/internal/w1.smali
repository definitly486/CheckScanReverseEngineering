.class public final Lcom/tapjoy/internal/w1;
.super Lcom/tapjoy/internal/e1;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/Integer;

.field public final j:Lcom/tapjoy/internal/r2;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/e1;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/w1;->i:Ljava/lang/Integer;

    new-instance p1, Lcom/tapjoy/internal/r2;

    invoke-direct {p1}, Lcom/tapjoy/internal/r2;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/w1;->j:Lcom/tapjoy/internal/r2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/TJSpendCurrencyListener;Landroid/content/SharedPreferences;)V
    .locals 5

    const-string v0, "Failed to spend currency"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tapjoy/internal/w1;->j:Lcom/tapjoy/internal/r2;

    iget-object v2, p0, Lcom/tapjoy/internal/e1;->h:Ljava/lang/String;

    const-string v3, "managed_currency/spend/v2"

    invoke-static {v2, v3}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tapjoy/internal/e1;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tapjoy/internal/w1;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2, p0}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    move-result-object p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "{}"

    :cond_0
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "success"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string v2, "currency_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "balance"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-nez v2, :cond_1

    move-object v2, v4

    :cond_1
    if-nez v1, :cond_2

    move-object v1, v4

    :cond_2
    if-nez p0, :cond_3

    :try_start_1
    const-string v4, "BalanceTooLowError"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object p0, Lcom/tapjoy/internal/q;->a:Lcom/tapjoy/internal/p;

    invoke-virtual {p0}, Lcom/tapjoy/internal/v0;->c()V

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Lcom/tapjoy/TJSpendCurrencyListener;->onSpendCurrencyResponseFailure(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Lcom/tapjoy/TJSpendCurrencyListener;->onSpendCurrencyResponseFailure(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "last_currency_balance"

    invoke-interface {p0, p2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_5

    invoke-interface {p1, v2, v3}, Lcom/tapjoy/TJSpendCurrencyListener;->onSpendCurrencyResponse(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Lcom/tapjoy/TJSpendCurrencyListener;->onSpendCurrencyResponseFailure(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/tapjoy/internal/e1;->b()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/tapjoy/internal/w1;->i:Ljava/lang/Integer;

    const-string v2, "amount"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lj59;->a:Lj59;

    const-string p0, "currency"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
