.class public final Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;
.super Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;
.source "SourceFile"


# instance fields
.field private final d:Lcl4;

.field private final e:Lcl4;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Lio/appmetrica/analytics/push/coreutils/internal/model/a;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/push/coreutils/internal/model/a;-><init>(Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;->d:Lcl4;

    new-instance p1, Lio/appmetrica/analytics/push/coreutils/impl/i;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/push/coreutils/impl/i;-><init>(Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;->e:Lcl4;

    return-void
.end method


# virtual methods
.method public final getProcessingMinTime()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;->e:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public final getServiceType()Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/TransportPushMessage;->d:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    return-object p0
.end method
