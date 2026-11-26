.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    invoke-direct {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;-><init>()V

    iget-boolean p1, p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;->a:Z

    iput-boolean p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a:Z

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;
    .locals 0

    .line 10
    new-instance p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    .line 11
    iget-boolean p1, p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a:Z

    .line 12
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;-><init>(Z)V

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;->a(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;

    new-instance p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    iget-boolean p1, p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/a;->a:Z

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;-><init>(Z)V

    return-object p0
.end method
