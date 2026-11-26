.class public final Lcom/tapjoy/internal/l1;
.super Lcom/tapjoy/internal/e1;
.source "SourceFile"


# instance fields
.field public final i:Lcom/tapjoy/internal/r2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/e1;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/r2;

    invoke-direct {v0}, Lcom/tapjoy/internal/r2;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/l1;->i:Lcom/tapjoy/internal/r2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/TJGetCurrencyBalanceListener;Lcom/tapjoy/TJEarnedCurrencyListener;Landroid/content/SharedPreferences;)V
    .locals 6

    const-string v0, "last_currency_balance"

    const-string v1, "Failed to get currency balance"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/tapjoy/internal/l1;->i:Lcom/tapjoy/internal/r2;

    iget-object v3, p0, Lcom/tapjoy/internal/e1;->h:Ljava/lang/String;

    const-string v4, "managed_currency/get/v2"

    invoke-static {v3, v4}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tapjoy/internal/e1;->a()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tapjoy/internal/e1;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3, p0}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    move-result-object p0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "{}"

    :cond_0
    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "success"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string v3, "currency_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "balance"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "message"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lcom/tapjoy/TJGetCurrencyBalanceListener;->onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 p0, -0x270f

    invoke-interface {p3, v0, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, p0, :cond_3

    if-le v4, v5, :cond_3

    if-eqz p2, :cond_3

    sub-int p0, v4, v5

    invoke-interface {p2, v3, p0}, Lcom/tapjoy/TJEarnedCurrencyListener;->onEarnedCurrency(Ljava/lang/String;I)V

    :cond_3
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_4

    invoke-interface {p1, v2, v4}, Lcom/tapjoy/TJGetCurrencyBalanceListener;->onGetCurrencyBalanceResponse(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lcom/tapjoy/TJGetCurrencyBalanceListener;->onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
