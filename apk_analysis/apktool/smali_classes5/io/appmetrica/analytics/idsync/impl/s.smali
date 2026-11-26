.class public final Lio/appmetrica/analytics/idsync/impl/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/idsync/impl/v;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/s;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    const-string p1, "id_sync"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/s;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V
    .locals 0

    iget-object p2, p0, Lio/appmetrica/analytics/idsync/impl/s;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {p2}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getSelfReporter()Lio/appmetrica/analytics/modulesapi/internal/common/ModuleSelfReporter;

    move-result-object p2

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/s;->b:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lio/appmetrica/analytics/modulesapi/internal/common/ModuleSelfReporter;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
