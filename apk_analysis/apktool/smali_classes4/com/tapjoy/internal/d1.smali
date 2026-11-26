.class public final Lcom/tapjoy/internal/d1;
.super Lcom/tapjoy/internal/e1;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/Integer;

.field public final j:Lcom/tapjoy/internal/r2;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/e1;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/d1;->i:Ljava/lang/Integer;

    new-instance p1, Lcom/tapjoy/internal/r2;

    invoke-direct {p1}, Lcom/tapjoy/internal/r2;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/d1;->j:Lcom/tapjoy/internal/r2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/TJAwardCurrencyListener;Landroid/content/SharedPreferences;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "Failed to award currency"

    const-string v1, "guid"

    const-string v2, "verifier"

    const-string v3, "timestamp"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/tapjoy/internal/d1;->b()Lorg/json/JSONObject;

    move-result-object v4

    :try_start_0
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "sdk"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "currency"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, v1, p3}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p3, p0, Lcom/tapjoy/internal/d1;->j:Lcom/tapjoy/internal/r2;

    iget-object v1, p0, Lcom/tapjoy/internal/e1;->h:Ljava/lang/String;

    const-string v2, "managed_currency/award/v2"

    invoke-static {v1, v2}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/e1;->a()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v2}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    move-result-object p0

    :try_start_1
    new-instance p3, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "{}"

    :cond_0
    invoke-direct {p3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "success"

    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string v1, "currency_name"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "balance"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "message"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, ""

    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    if-nez p3, :cond_2

    move-object p3, v3

    :cond_2
    if-nez p0, :cond_4

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    move-object p3, v0

    :cond_3
    invoke-interface {p1, p3}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponseFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "last_currency_balance"

    invoke-interface {p0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_5

    invoke-interface {p1, v1, v2}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponse(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponseFailure(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/tapjoy/internal/e1;->b()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/tapjoy/internal/d1;->i:Ljava/lang/Integer;

    const-string v2, "amount"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lj59;->a:Lj59;

    const-string p0, "currency"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
