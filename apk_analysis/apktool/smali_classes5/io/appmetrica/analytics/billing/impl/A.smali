.class public final Lio/appmetrica/analytics/billing/impl/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;


# instance fields
.field public final a:Lio/appmetrica/analytics/billing/impl/g;

.field public final b:Lio/appmetrica/analytics/billing/impl/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 25
    invoke-direct {p0, v0, v0, v1, v0}, Lio/appmetrica/analytics/billing/impl/A;-><init>(Lio/appmetrica/analytics/billing/impl/g;Lio/appmetrica/analytics/billing/impl/f;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/billing/impl/g;Lio/appmetrica/analytics/billing/impl/f;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/appmetrica/analytics/billing/impl/A;->a:Lio/appmetrica/analytics/billing/impl/g;

    .line 24
    iput-object p2, p0, Lio/appmetrica/analytics/billing/impl/A;->b:Lio/appmetrica/analytics/billing/impl/f;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/billing/impl/g;Lio/appmetrica/analytics/billing/impl/f;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    new-instance p1, Lio/appmetrica/analytics/billing/impl/g;

    invoke-direct {p1}, Lio/appmetrica/analytics/billing/impl/g;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Lio/appmetrica/analytics/billing/impl/f;

    invoke-direct {p2}, Lio/appmetrica/analytics/billing/impl/f;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/billing/impl/A;-><init>(Lio/appmetrica/analytics/billing/impl/g;Lio/appmetrica/analytics/billing/impl/f;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/A;->a:Lio/appmetrica/analytics/billing/impl/g;

    iget-object p0, p0, Lio/appmetrica/analytics/billing/impl/A;->b:Lio/appmetrica/analytics/billing/impl/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "auto_inapp_collecting"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lio/appmetrica/analytics/billing/impl/q;

    invoke-direct {p0}, Lio/appmetrica/analytics/billing/impl/q;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/billing/impl/q;

    invoke-direct {p1}, Lio/appmetrica/analytics/billing/impl/q;-><init>()V

    const-string v1, "send_frequency_seconds"

    invoke-static {p0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optIntOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p1, Lio/appmetrica/analytics/billing/impl/q;->a:I

    :cond_1
    const-string v1, "first_collecting_inapp_max_age_seconds"

    invoke-static {p0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optIntOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iput p0, p1, Lio/appmetrica/analytics/billing/impl/q;->b:I

    :cond_2
    move-object p0, p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lio/appmetrica/analytics/billing/impl/y;

    iget v0, p0, Lio/appmetrica/analytics/billing/impl/q;->a:I

    iget p0, p0, Lio/appmetrica/analytics/billing/impl/q;->b:I

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/billing/impl/y;-><init>(II)V

    new-instance p0, Lio/appmetrica/analytics/billing/impl/B;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/billing/impl/B;-><init>(ZLio/appmetrica/analytics/billing/impl/y;)V

    sget-object p1, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;->Companion:Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;->toWrapper$billing_release(Lio/appmetrica/analytics/billing/impl/B;)Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;
    .locals 0

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;

    return-object p0
.end method

.method public final bridge synthetic parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/A;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;

    return-object p0
.end method
