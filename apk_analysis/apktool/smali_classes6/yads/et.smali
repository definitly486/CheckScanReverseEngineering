.class public final Lyads/et;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/t64;

.field public final b:Lxb4;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/t64;

    invoke-direct {v0}, Lyads/t64;-><init>()V

    sget-object v1, Lyads/zq3;->a:Lxb4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/et;->a:Lyads/t64;

    iput-object v1, p0, Lyads/et;->b:Lxb4;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lyads/la;
    .locals 7

    const-string v0, "Json value can not be null or empty"

    const-string v1, "null"

    :try_start_0
    sget-object v2, Lyads/zq3;->a:Lxb4;

    const-string v2, "ad_unit_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/json/JSONException;

    invoke-direct {v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v2, Lyads/zq3;->a:Lxb4;

    const-string v2, "block_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    const-string v0, "networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lyads/et;->a:Lyads/t64;

    invoke-virtual {v6, v5}, Lyads/t64;->b(Lorg/json/JSONObject;)Lyads/x54;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Lyads/la;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1, v1}, Lyads/la;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_3
    new-instance p0, Lorg/json/JSONException;

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lyads/dt;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mediation_prefetch_settings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    :try_start_1
    const-string v2, "ad_unit_id_settings"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, v5}, Lyads/et;->a(Lorg/json/JSONObject;)Lyads/la;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lyads/et;->b:Lxb4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyads/o74;->CREATOR:Lyads/n74;

    invoke-virtual {v1}, Lyads/n74;->serializer()Ldf4;

    move-result-object v1

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    check-cast v1, Lxl2;

    invoke-virtual {p0, v1, p1}, Lxb4;->a(Lxl2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/o74;

    goto :goto_3

    :cond_3
    :goto_2
    move-object p0, v0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    new-instance p1, Lyads/dt;

    invoke-direct {p1, v2, p0}, Lyads/dt;-><init>(Ljava/util/ArrayList;Lyads/o74;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p1

    :catch_1
    :cond_5
    return-object v0
.end method
