.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;

    invoke-direct {p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    invoke-direct {v0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;-><init>()V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    sget-object v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;->Companion:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper$Companion;

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    iget-boolean p1, p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a:Z

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;-><init>(Z)V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper$Companion;->toWrapper$ad_revenue_applovin_v12_auto_release(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;)[B
    .locals 0

    .line 30
    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;

    invoke-virtual {p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;->getConfig$ad_revenue_applovin_v12_auto_release()Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;->a(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;

    invoke-virtual {p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;->getConfig$ad_revenue_applovin_v12_auto_release()Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;->a(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;->a([B)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;

    move-result-object p0

    return-object p0
.end method
