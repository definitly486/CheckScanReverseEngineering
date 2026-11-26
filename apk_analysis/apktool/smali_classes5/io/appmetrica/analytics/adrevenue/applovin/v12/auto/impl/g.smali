.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    invoke-direct {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;-><init>()V

    const-string v0, "ad_revenue_applovin_max"

    sget-boolean v1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/k;->a:Z

    invoke-static {p1, v0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractFeature(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a:Z

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;
    .locals 0

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    return-object p0
.end method

.method public final bridge synthetic parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    move-result-object p0

    return-object p0
.end method

.method public final parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    return-object p0
.end method
