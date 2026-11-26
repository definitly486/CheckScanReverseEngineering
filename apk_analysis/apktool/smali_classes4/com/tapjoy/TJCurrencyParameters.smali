.class public final Lcom/tapjoy/TJCurrencyParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCurrencyParameters;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCurrencyParameters;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final fetchCurrencyParams(Landroid/content/Context;)V
    .locals 8

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/tapjoy/TJKeyValueStorage;

    const-string v1, "tjcPrefrences"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "server_currency_ids"

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[]"

    invoke-virtual {v0, p1, v1}, Lcom/tapjoy/TJKeyValueStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "currency_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "currency_type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "self_managed"

    invoke-static {v6, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/tapjoy/TJCurrencyParameters;->a:Z

    const-string v6, "allow_pub_currency_set_balance"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tapjoy/TJCurrencyParameters;->b:Z

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "Failed to parse currency id list"

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iput-object v1, p0, Lcom/tapjoy/TJCurrencyParameters;->c:Ljava/util/ArrayList;

    :cond_2
    iget-boolean p1, p0, Lcom/tapjoy/TJCurrencyParameters;->a:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/tapjoy/TJCurrencyParameters;->b:Z

    if-nez p1, :cond_3

    const-string p1, "last_currency_balance"

    const/16 v1, -0x270f

    invoke-virtual {v0, p1, v1}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/tapjoy/TJCurrencyParameters;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJCurrencyParameters;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TJCurrencyParameters;->saveCurrencyBalance(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final getAllowCurrencySetBalance()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJCurrencyParameters;->b:Z

    return p0
.end method

.method public final getCurrencyAmountRequired(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/tapjoy/TJCurrencyParameters;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tapjoy/TJCurrencyParameters;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lb36;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public final getCurrencyBalance(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/tapjoy/TJCurrencyParameters;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tapjoy/TJCurrencyParameters;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lb36;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public final getCurrencyIdList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tapjoy/TJCurrencyParameters;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getCurrencyMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb36<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tapjoy/TJCurrencyParameters;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method public final isSelfManaged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJCurrencyParameters;->a:Z

    return p0
.end method

.method public final saveCurrencyAmountRequired(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/tapjoy/TJCurrencyParameters;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lb36;->a(Lb36;Ljava/lang/Integer;Ljava/lang/Object;I)Lb36;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v0, Lb36;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v0

    :goto_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final saveCurrencyBalance(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/tapjoy/TJCurrencyParameters;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    invoke-static {v0, p2, v1, v2}, Lb36;->a(Lb36;Ljava/lang/Integer;Ljava/lang/Object;I)Lb36;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v0, Lb36;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p2, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v0

    :goto_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setAllowCurrencySetBalance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJCurrencyParameters;->b:Z

    return-void
.end method

.method public final setCurrencyIdList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lcom/tapjoy/TJCurrencyParameters;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public final setCurrencyIdList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tapjoy/TJCurrencyParameters;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tapjoy/TJCurrencyParameters;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final setSelfManaged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJCurrencyParameters;->a:Z

    return-void
.end method
