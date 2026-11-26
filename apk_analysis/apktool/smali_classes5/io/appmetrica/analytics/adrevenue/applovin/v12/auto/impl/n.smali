.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;


# instance fields
.field public final a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;

.field public final b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 25
    invoke-direct {p0, v0, v0, v1, v0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;

    .line 24
    iput-object p2, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    new-instance p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;

    invoke-direct {p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;

    invoke-direct {p2}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;->Companion:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper$Companion;

    iget-object v1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    iget-boolean p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a:Z

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;-><init>(Z)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper$Companion;->toWrapper$ad_revenue_applovin_v12_auto_release(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;
    .locals 0

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;

    return-object p0
.end method

.method public final bridge synthetic parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;

    return-object p0
.end method
