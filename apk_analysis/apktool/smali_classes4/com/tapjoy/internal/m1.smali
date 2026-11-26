.class public final Lcom/tapjoy/internal/m1;
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

    iput-object v0, p0, Lcom/tapjoy/internal/m1;->i:Lcom/tapjoy/internal/r2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/TJGetUserRevenueListener;)V
    .locals 10

    const-string v0, "Failed to get user revenue"

    iget-object v1, p0, Lcom/tapjoy/internal/m1;->i:Lcom/tapjoy/internal/r2;

    iget-object v2, p0, Lcom/tapjoy/internal/e1;->h:Ljava/lang/String;

    const-string v3, "api/impression_level_revenue_data"

    invoke-static {v2, v3}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tapjoy/internal/e1;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tapjoy/internal/e1;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2, p0}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    move-result-object p0

    :try_start_0
    iget v1, p0, Lcom/tapjoy/internal/s2;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_a

    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "{}"

    :cond_0
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "conversions"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    new-instance v6, Lcom/tapjoy/internal/z1;

    invoke-direct {v6, v5}, Lcom/tapjoy/internal/z1;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :cond_5
    :goto_3
    if-ge v4, v3, :cond_6

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    check-cast v6, Lcom/tapjoy/internal/z1;

    iget-object v7, v6, Lcom/tapjoy/internal/z1;->a:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v6, v6, Lcom/tapjoy/internal/z1;->b:Ljava/util/Date;

    if-eqz v6, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    if-ge v2, v3, :cond_9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/tapjoy/internal/z1;

    iget-object v5, v4, Lcom/tapjoy/internal/z1;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/tapjoy/internal/z1;->b:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, Lcom/tapjoy/internal/z1;->c:Ljava/lang/Double;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_5

    :cond_7
    const-wide/16 v7, 0x0

    :goto_5
    iget-object v4, v4, Lcom/tapjoy/internal/z1;->d:Ljava/lang/String;

    if-nez v4, :cond_8

    const-string v4, "USD"

    :cond_8
    new-instance v9, Lcom/tapjoy/TJUserRevenueConversion;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v9, v5, v6, v7, v4}, Lcom/tapjoy/TJUserRevenueConversion;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance v1, Lcom/tapjoy/TJUserRevenue;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJUserRevenue;-><init>(Ljava/util/List;)V

    if-eqz p1, :cond_b

    invoke-interface {p1, v1}, Lcom/tapjoy/TJGetUserRevenueListener;->onGetUserRevenueResponse(Lcom/tapjoy/TJUserRevenue;)V

    return-void

    :cond_a
    if-eqz p1, :cond_b

    invoke-interface {p1, v0}, Lcom/tapjoy/TJGetUserRevenueListener;->onGetUserRevenueResponseFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-eqz p1, :cond_b

    invoke-interface {p1, v0}, Lcom/tapjoy/TJGetUserRevenueListener;->onGetUserRevenueResponseFailure(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
