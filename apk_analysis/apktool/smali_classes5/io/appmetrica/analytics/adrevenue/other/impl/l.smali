.class public final Lio/appmetrica/analytics/adrevenue/other/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;


# instance fields
.field public final a:Lio/appmetrica/analytics/adrevenue/other/impl/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/adrevenue/other/impl/l;-><init>(Lio/appmetrica/analytics/adrevenue/other/impl/a;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/other/impl/a;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/other/impl/l;->a:Lio/appmetrica/analytics/adrevenue/other/impl/a;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/adrevenue/other/impl/a;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/adrevenue/other/impl/a;

    invoke-direct {p1}, Lio/appmetrica/analytics/adrevenue/other/impl/a;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/l;-><init>(Lio/appmetrica/analytics/adrevenue/other/impl/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/impl/l;->a:Lio/appmetrica/analytics/adrevenue/other/impl/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "ad_revenue_other"

    sget-boolean v0, Lio/appmetrica/analytics/adrevenue/other/impl/f;->a:Z

    invoke-static {p1, p0, v0}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractFeature(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "ad_revenue_other_include_source"

    sget-boolean v1, Lio/appmetrica/analytics/adrevenue/other/impl/f;->b:Z

    invoke-static {p1, v0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractFeature(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    new-instance v0, Lio/appmetrica/analytics/adrevenue/other/impl/j;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/j;-><init>(ZZ)V

    sget-object p0, Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;->Companion:Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper$Companion;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper$Companion;->toWrapper$ad_revenue_other_release(Lio/appmetrica/analytics/adrevenue/other/impl/j;)Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;
    .locals 0

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;

    return-object p0
.end method

.method public final bridge synthetic parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/l;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;

    return-object p0
.end method
